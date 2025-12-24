#include <stdio.h>
#include <math.h>
#include "platform.h"
#include "xil_printf.h"
#include "sleep.h"
#include "xtime_l.h"
#include "xuartps.h"
#include "xparameters.h"

/* CNN configuration */
#define CNN_INPUT_SIZE   1728   /* 24x24x3 = 1728 pixels (RGB image) */
#define CNN_OUTPUT_SIZE  10     /* 10 classes (CIFAR-10) */
#define IMG_WIDTH        24
#define IMG_HEIGHT       24
#define IMG_CHANNELS     3

/* PPM buffer in DDR3 */
#define PPM_BUFFER_ADDR  0x01000000  /* DDR3 location for PPM images */
#define MAX_IMAGES       100         /* Maximum images to receive in one batch */

#define FIXED_POINT_TOTAL_BITS  10
#define FIXED_POINT_INT_BITS    5   /* Integer bits (I parameter in ac_fixed<W,I,S>) */
#define FIXED_POINT_FRAC_BITS   (FIXED_POINT_TOTAL_BITS - FIXED_POINT_INT_BITS)  /* 5 */
#define FIXED_POINT_SCALE       (1 << FIXED_POINT_FRAC_BITS)  /* 32 */
#define FIXED_POINT_MAX         ((1 << (FIXED_POINT_TOTAL_BITS - 1)) - 1)  /* 511 (signed max) */
#define FIXED_POINT_MIN         (-(1 << (FIXED_POINT_TOTAL_BITS - 1)))     /* -512 (signed min) */
#define FIXED_POINT_MASK        ((1 << FIXED_POINT_TOTAL_BITS) - 1)        /* 0x3FF */

/* CIFAR-10 class names */
const char* class_names[10] = {
    "airplane", "automobile", "bird", "cat", "deer",
    "dog", "frog", "horse", "ship", "truck"
};

/* Statistics tracking */
typedef struct {
    uint32_t total_images;
    uint32_t correct_predictions;
    uint32_t class_counts[10];
    uint32_t class_correct[10];
    double total_inference_time_us;
    double min_inference_time_us;
    double max_inference_time_us;
} CNN_Stats;

/* Register structure */
typedef struct CNN_Regs {
    volatile uint32_t rst;      /* Offset 0x00: Reset register */
    volatile uint32_t ctrl;     /* Offset 0x04: Control register (bit 0 = start_sync_vld) */
    volatile uint32_t status;   /* Offset 0x08: Status register (bit 0 = done_sync_vld, bit 1 = start_sync_rdy) */
    volatile uint32_t led;      /* Offset 0x0C: LED control */
} CNN_Regs;

/* CNN accelerator structure */
typedef struct CNN_Accel {
    volatile CNN_Regs *regs;           /* Control/status registers */
    volatile uint32_t *cnn_input;      /* Input memory (1728 x 10-bit) */
    volatile uint32_t *cnn_output;     /* Output memory (10 x 10-bit) */
} CNN_Accel;

/* Initialize CNN accelerator */
void CNN_init(CNN_Accel *cnn, volatile unsigned char *base)
{
    cnn->regs = (CNN_Regs *)(base);
    cnn->cnn_input = (volatile uint32_t *)(base + 0x100000);
    cnn->cnn_output = (volatile uint32_t *)(base + 0x200000);
}

/* Initialize statistics */
void Stats_init(CNN_Stats *stats)
{
    stats->total_images = 0;
    stats->correct_predictions = 0;
    stats->total_inference_time_us = 0.0;
    stats->min_inference_time_us = 1e9;  /* Large initial value */
    stats->max_inference_time_us = 0.0;

    for (int i = 0; i < 10; i++) {
        stats->class_counts[i] = 0;
        stats->class_correct[i] = 0;
    }
}

/* Reset CNN accelerator */
void CNN_reset(CNN_Accel *cnn)
{    
    cnn->regs->rst = 1;
    usleep(1000);  /* Hold reset for 1ms */
    cnn->regs->rst = 0;
    usleep(1000);  /* Wait for hardware to stabilize */
}

/* Start CNN inference */
void CNN_start(CNN_Accel *cnn)
{
    cnn->regs->ctrl = 1;  /* Set start_sync_vld bit */
}

/* Check if CNN is done */
int CNN_is_done(CNN_Accel *cnn)
{
    return (cnn->regs->status & 0x1);  /* Check done_sync_vld (bit 0) */
}

/* Clear the done latch (must call before starting new inference) */
void CNN_clear_done(CNN_Accel *cnn)
{
    cnn->regs->rst = 0x2;  /* Bit 1 = clear done latch */
    usleep(10);            /* Let clear propagate through CDC */
    cnn->regs->rst = 0x0;  /* Clear the clear request */
    usleep(10);
}

/* UART helper: Receive a single byte (blocking) */
static int uart_recv_byte(XUartPs *uart_inst, uint8_t *byte)
{
    uint32_t received = 0;

    /* Wait until at least one byte is available in RX FIFO */
    while (received == 0) {
        received = XUartPs_Recv(uart_inst, byte, 1);
    }

    return 0;
}

/* Normalize RGB pixel to fixed-point format with per-image mean/std */
void normalize_image(uint8_t *rgb_data, int16_t *normalized_data, int size)
{
    double sum = 0.0;
    double sum_sq = 0.0;

    for (int i = 0; i < size; i++) {
        double val = (double)rgb_data[i];
        sum += val;
        sum_sq += val * val;
    }

    double mean = sum / size;
    double std = sqrt(sum_sq / size - mean * mean);
    double min_std = 1.0 / sqrt((double)size);
    double divisor = (std > min_std) ? std : min_std;

    for (int i = 0; i < size; i++) {
        double normalized = ((double)rgb_data[i] - mean) / divisor;

        /* Convert to fixed-point: multiply by scale factor (32) */
        int32_t fixed_val = (int32_t)(normalized * FIXED_POINT_SCALE);

        /* Clamp to valid range [-512, 511] */
        if (fixed_val > FIXED_POINT_MAX) {
            fixed_val = FIXED_POINT_MAX;
        } else if (fixed_val < FIXED_POINT_MIN) {
            fixed_val = FIXED_POINT_MIN;
        }

        normalized_data[i] = (int16_t)fixed_val;
    }
}

/* Receive PPM images via UART */
int receive_ppm_images(XUartPs *uart_inst, uint8_t *buffer, uint8_t *labels, uint32_t *num_images)
{
    uint32_t count = 0;
    uint8_t byte;

    xil_printf("\n\r=== Waiting for PPM Images via UART ===\n\r");
    xil_printf("Protocol: [4-byte count][label + 1728-byte image] x count\n\r");

    /* Receive number of images (4 bytes, little-endian) */
    for (int i = 0; i < 4; i++) {
        uart_recv_byte(uart_inst, &byte);
        count |= ((uint32_t)byte << (i * 8));
    }

    xil_printf("Number of images to receive: %d\n\r", count);

    /* Sanity check */
    if (count == 0 || count > MAX_IMAGES) {
        xil_printf("ERROR: Invalid image count %d (max %d)\n\r", count, MAX_IMAGES);
        return -1;
    }

    *num_images = count;

    /* Receive each image */
    for (uint32_t img = 0; img < count; img++) {
        xil_printf("\n\rReceiving image %d/%d...\n\r", img + 1, count);

        /* Receive label (1 byte) */
        uart_recv_byte(uart_inst, &labels[img]);
        xil_printf("  Expected label: %d (%s)\n\r", labels[img], class_names[labels[img]]);

        /* Receive image data (1728 bytes) */
        uint8_t *img_buffer = buffer + (img * CNN_INPUT_SIZE);
        xil_printf("  Receiving %d bytes", CNN_INPUT_SIZE);

        for (int i = 0; i < CNN_INPUT_SIZE; i++) {
            uart_recv_byte(uart_inst, &img_buffer[i]);

            /* Print progress dots */
            if (i % (CNN_INPUT_SIZE / 16) == 0) {
                xil_printf(".");
            }
        }
        xil_printf(" done!\n\r");
    }

    xil_printf("\n\rSuccessfully received %d images!\n\r", count);
    return 0;
}

/* Load PPM image into CNN input memory with normalization */
void CNN_load_ppm_image(CNN_Accel *cnn, uint8_t *ppm_data)
{
    int16_t normalized_data[CNN_INPUT_SIZE];

    normalize_image(ppm_data, normalized_data, CNN_INPUT_SIZE);

    /* Load normalized fixed-point values into CNN input SRAM */
    for (int i = 0; i < CNN_INPUT_SIZE; i++) {
        /* Mask to 10 bits for hardware */
        cnn->cnn_input[i] = ((uint32_t)normalized_data[i]) & FIXED_POINT_MASK;
    }
}

/* Run complete CNN inference with timing */
void CNN_run_inference(CNN_Accel *cnn, uint8_t *ppm_data, int expected_class,
                       CNN_Stats *stats, int image_num, int total_images)
{
    XTime t_start, t_end;
    uint32_t probs[CNN_OUTPUT_SIZE];

    /* Ensure control signal is low before reset */
    cnn->regs->ctrl = 0;
    usleep(100);  /* Wait for hardware to register ctrl=0 */

    /* Reset accelerator */
    CNN_reset(cnn);
    
    /* Load and normalize PPM image */
    CNN_load_ppm_image(cnn, ppm_data);
    
    /* Clear the done latch from any previous inference */
    CNN_clear_done(cnn);

    /* Start timing for inference */
    XTime_GetTime(&t_start);

    CNN_start(cnn);
    
    cnn->regs->ctrl = 0;
    usleep(10);  /* Ensure clear propagates */

    /* Wait for rising edge of done signal (transition 0->1) */
    const uint32_t TIMEOUT_US = 10000000;  /* 1000ms timeout */
    uint32_t wait_count = 0;
    
    /* Sample initial done state */
    int done_prev = CNN_is_done(cnn);
    int done_curr = done_prev;
    int rising_edge_detected = 0;
    
    /* Wait for rising edge: done transitions from 0 to 1 */
    while (wait_count < TIMEOUT_US && !rising_edge_detected) {
        usleep(100);
        wait_count += 100;
        
        done_curr = CNN_is_done(cnn);
        
        /* Detect rising edge: prev=0 and curr=1 */
        if (!done_prev && done_curr) {
            rising_edge_detected = 1;
            break;
        }
        
        done_prev = done_curr;
    }

    if (!rising_edge_detected) {
        xil_printf("ERROR: CNN inference timeout after %d us\n\r", TIMEOUT_US);
        return;
    }

    /* Stop timing */
    XTime_GetTime(&t_end);

    /* Calculate elapsed time */
    double elapsed_us = (double)(t_end - t_start) / (COUNTS_PER_SECOND / 1000000.0);
    uint32_t elapsed_us_int = (uint32_t)elapsed_us;

    /* Read output and get predicted class */
    int max_idx = 0;
    int16_t max_val = (int16_t)FIXED_POINT_MIN;
    int16_t signed_scores[CNN_OUTPUT_SIZE];

    for (int i = 0; i < CNN_OUTPUT_SIZE; i++) {
        uint32_t raw = cnn->cnn_output[i] & FIXED_POINT_MASK;
        probs[i] = raw;

        /* Convert 10-bit two's complement to signed int16_t */
        if (raw & (1 << (FIXED_POINT_TOTAL_BITS - 1))) {
            /* Negative: sign-extend bits [15:10] */
            signed_scores[i] = (int16_t)(raw | 0xFC00);
        } else {
            /* Positive: just cast */
            signed_scores[i] = (int16_t)raw;
        }

        if (signed_scores[i] > max_val) {
            max_val = signed_scores[i];
            max_idx = i;
        }
        
        int int_p = signed_scores[i] / FIXED_POINT_SCALE;
        int frac_p_raw = signed_scores[i] % FIXED_POINT_SCALE;
        if (frac_p_raw < 0) frac_p_raw = -frac_p_raw;
        int frac_p = (frac_p_raw * 100000) / FIXED_POINT_SCALE;
        
        char marker = (i == expected_class) ? '*' : ' ';
        if (i == max_idx) marker = '>';
    }

    /* Print compact single-line result */
    int result_correct = (max_idx == expected_class) ? 1 : 0;
    int int_part = max_val / FIXED_POINT_SCALE;
    int frac_part = ((max_val % FIXED_POINT_SCALE) * 10000) / FIXED_POINT_SCALE;
    char result_symbol = result_correct ? 0xFB : 0xF8;  /* ✓ or ✗ in extended ASCII */

    xil_printf("Image %d/%d: True=%-10s, Pred=%-10s (%d.%04d) %s\n\r",
               image_num, total_images,
               class_names[expected_class],
               class_names[max_idx],
               int_part, frac_part,
               result_correct ? "✓" : "✗");

    /* Update statistics */
    stats->total_images++;
    stats->class_counts[expected_class]++;

    if (result_correct) {
        stats->correct_predictions++;
        stats->class_correct[expected_class]++;
    }

    stats->total_inference_time_us += elapsed_us;

    if (elapsed_us < stats->min_inference_time_us) {
        stats->min_inference_time_us = elapsed_us;
    }
    if (elapsed_us > stats->max_inference_time_us) {
        stats->max_inference_time_us = elapsed_us;
    }

    /* Clear control signal for next inference (after reading outputs) */
    cnn->regs->ctrl = 0;
}

/* Print comprehensive evaluation statistics */
void print_evaluation_stats(CNN_Stats *stats)
{
    xil_printf("\n\r");
    xil_printf("************************************************\n\r");
    xil_printf("*         CNN EVALUATION STATISTICS            *\n\r");
    xil_printf("************************************************\n\r\n\r");

    /* Overall accuracy - use integer arithmetic */
    uint32_t accuracy_int = 0;
    uint32_t accuracy_frac = 0;
    if (stats->total_images > 0) {
        accuracy_int = (stats->correct_predictions * 100) / stats->total_images;
        accuracy_frac = ((stats->correct_predictions * 10000) / stats->total_images) % 100;
    }

    xil_printf("=== Overall Performance ===\n\r");
    xil_printf("Total Images Tested: %d\n\r", stats->total_images);
    xil_printf("Correct Predictions: %d\n\r", stats->correct_predictions);
    xil_printf("Wrong Predictions:   %d\n\r", stats->total_images - stats->correct_predictions);
    xil_printf("Overall Accuracy:    %d.%02d%%\n\r\n\r", accuracy_int, accuracy_frac);

    /* Per-class accuracy */
    xil_printf("=== Per-Class Accuracy ===\n\r");
    for (int i = 0; i < 10; i++) {
        if (stats->class_counts[i] > 0) {
            uint32_t class_acc_int = (stats->class_correct[i] * 100) / stats->class_counts[i];
            uint32_t class_acc_frac = ((stats->class_correct[i] * 1000) / stats->class_counts[i]) % 10;
            xil_printf("Class %d (%-10s): %2d/%2d correct (%d.%d%%)\n\r",
                       i, class_names[i],
                       stats->class_correct[i], stats->class_counts[i],
                       class_acc_int, class_acc_frac);
        }
    }
    xil_printf("\n\r");

    /* Timing statistics */
    xil_printf("=== Inference Timing ===\n\r");
    if (stats->total_images > 0) {
        uint32_t avg_time_us = (uint32_t)(stats->total_inference_time_us / stats->total_images);
        uint32_t avg_time_ms = avg_time_us / 1000;
        uint32_t avg_time_ms_frac = (avg_time_us % 1000) / 10;  /* 2 decimal places */
        uint32_t avg_fps_int = (1000000 / avg_time_us);
        uint32_t avg_fps_frac = ((1000000 * 10) / avg_time_us) % 10;

        xil_printf("Average Time: %d us (%d.%02d ms)\n\r", avg_time_us, avg_time_ms, avg_time_ms_frac);
        xil_printf("Min Time:     %d us\n\r", (uint32_t)stats->min_inference_time_us);
        xil_printf("Max Time:     %d us\n\r", (uint32_t)stats->max_inference_time_us);
        xil_printf("Throughput:   %d.%d FPS\n\r", avg_fps_int, avg_fps_frac);
    }

    xil_printf("\n\r************************************************\n\r\n\r");
}

int main()
{
    int status;
    XUartPs uart_inst;
    XUartPs_Config *uart_cfg;
    uint32_t num_images = 0;

    init_platform();

    /* Initialize CNN accelerator */
    CNN_Accel cnn;
    CNN_init(&cnn, (unsigned char *)XPAR_AXI_Z7_PROCHDMI_0_BASEADDR);

    /* Initialize UART */
    uart_cfg = XUartPs_LookupConfig(XPAR_XUARTPS_0_DEVICE_ID);
    if (uart_cfg == NULL) {
        xil_printf("ERROR: UART config lookup failed\n\r");
        cleanup_platform();
        return -1;
    }

    status = XUartPs_CfgInitialize(&uart_inst, uart_cfg, uart_cfg->BaseAddress);
    if (status != XST_SUCCESS) {
        xil_printf("ERROR: UART initialization failed\n\r");
        cleanup_platform();
        return -1;
    }

    XUartPs_SetBaudRate(&uart_inst, 115200);

    xil_printf("\n\r");
    xil_printf("************************************************\n\r");
    xil_printf("*  CNN Hardware Accelerator - UART Testing    *\n\r");
    xil_printf("*  CIFAR-10 Classification on Zynq            *\n\r");
    xil_printf("*  Receives PPM images via UART (115200 baud) *\n\r");
    xil_printf("************************************************\n\r\n\r");

    /* Allocate buffers in DDR3 */
    uint8_t *ppm_buffer = (uint8_t *)PPM_BUFFER_ADDR;
    uint8_t *label_buffer = (uint8_t *)(PPM_BUFFER_ADDR + (MAX_IMAGES * CNN_INPUT_SIZE));

    /* Initialize statistics */
    CNN_Stats stats;
    Stats_init(&stats);

    /* Main loop - receive and test images */
    while (1) {
        xil_printf("Ready to receive new batch of images\n\r");
        xil_printf("Send images using: python3 send_ppm_uart.py\n\r");

        /* Receive images via UART */
        status = receive_ppm_images(&uart_inst, ppm_buffer, label_buffer, &num_images);
        if (status != 0) {
            xil_printf("ERROR: Failed to receive images\n\r");
            continue;
        }

        xil_printf("\n\r");
        xil_printf("================================================\n\r");
        xil_printf("Testing %d images with CNN accelerator\n\r", num_images);
        xil_printf("================================================\n\r");

        /* Reset statistics for this batch */
        Stats_init(&stats);

        /* Process each image */
        for (uint32_t i = 0; i < num_images; i++) {
            uint8_t *ppm_data = ppm_buffer + (i * CNN_INPUT_SIZE);
            uint8_t expected_label = label_buffer[i];

            /* Update LED to show progress */
            cnn.regs->led = i & 0xF;


            /* Run CNN inference */
            CNN_run_inference(&cnn, ppm_data, expected_label, &stats, i + 1, num_images);
        }

        /* Print evaluation statistics */
        print_evaluation_stats(&stats);

        xil_printf("Waiting 5 seconds before accepting new batch...\n\r");
        sleep(5);
    }

    cleanup_platform();
    return 0;
}
