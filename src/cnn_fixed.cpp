#include "cnn_fixed.h"

template <int H, int W, int CIN, int COUT>
void conv2d_fixed(const image_t image[H][W][CIN],
            const kernel_t kernel[3][3][CIN][COUT],
            const bias_t bias[COUT],
            image_t output[H][W][COUT]) {

    COUT_CONV_LOOP: for (int f = 0; f < COUT; ++f) {
        HIN_CONV_LOOP: for (int i = 0; i < H; ++i) {
            WIN_CONV_LOOP: for (int j = 0; j < W; ++j) {

                acc_t sum = bias[f];
                
                CIN_CONV_LOOP: for (int c = 0; c < CIN; ++c) {
                    KR_CONV_LOOP: for (int kr = 0; kr < 3; ++kr) {
                        KC_CONV_LOOP: for (int kc = 0; kc < 3; ++kc) {

                            int r_in = i + kr - 1;
                            int c_in = j + kc - 1;

                            image_t pixel_val;
                            if (r_in >= 0 && r_in < H && c_in >= 0 && c_in < W) {
                                pixel_val = image[r_in][c_in][c];
                            } else {
                                pixel_val = 0;
                            }

                            sum += pixel_val * kernel[kr][kc][c][f];
                        }
                    }
                }

                if (sum < 0) output[i][j][f] = 0;
                else output[i][j][f] = (image_t)sum;
            }
        }
    }
}

template <int H_IN, int W_IN, int CH, int H_OUT, int W_OUT>
void maxpool_fixed(const image_t input[H_IN][W_IN][CH], image_t output[H_OUT][W_OUT][CH]) {
    const int pool_size = 3;
    const int stride = 2;

    CH_MAXPOOL_LOOP: for (int c = 0; c < CH; c++) {
        HOUT_MAXPOOL_LOOP: for (int i = 0; i < H_OUT; i++) {
            WOUT_MAXPOOL_LOOP: for (int j = 0; j < W_OUT; j++) {

                int h_start = i * stride;
                int w_start = j * stride;

                image_t max_val = input[h_start][w_start][c];

                KH_MAXPOOL_LOOP: for (int kh = 0; kh < pool_size; kh++) {
                    KW_MAXPOOL_LOOP: for (int kw = 0; kw < pool_size; kw++) {
                        int cur_h = h_start + kh;
                        int cur_w = w_start + kw;

                        if (cur_h < H_IN && cur_w < W_IN) {
                            image_t val = input[cur_h][cur_w][c];
                            if (val > max_val) {
                                max_val = val;
                            }
                        }
                    }
                }
                output[i][j][c] = max_val;
            }
        }
    }
}

void conv1_fixed_3to64(const image_t input[24][24][3], image_t output[24][24][64]) {
    conv2d_fixed<24, 24, 3, 64>(input, CONV1_W_FIXED, CONV1_B_FIXED, output);
}

void conv2_fixed_64to32(const image_t input[12][12][64], image_t output[12][12][32]) {
    conv2d_fixed<12, 12, 64, 32>(input, CONV2_W_FIXED, CONV2_B_FIXED, output);
}

void conv3_fixed_32to20(const image_t input[6][6][32], image_t output[6][6][20]) {
    conv2d_fixed<6, 6, 32, 20>(input, CONV3_W_FIXED, CONV3_B_FIXED, output);
}

void maxpool_fixed_24to12(const image_t input[24][24][64], image_t output[12][12][64]) {
    maxpool_fixed<24, 24, 64, 12, 12>(input, output);
}
void maxpool_fixed_12to6(const image_t input[12][12][32], image_t output[6][6][32]) {
    maxpool_fixed<12, 12, 32, 6, 6>(input, output);
}
void maxpool_fixed_6to3(const image_t input[6][6][20], image_t output[3][3][20]) {
    maxpool_fixed<6, 6, 20, 3, 3>(input, output);
}

void fully_connected_fixed(const image_t input[3][3][20], prob_t output[10]) {
    image_t flattened[180];
    int idx = 0;
    H_FLATTEN_LOOP: for (int h = 0; h < 3; h++) {
        W_FLATTEN_LOOP: for (int w = 0; w < 3; w++) {
            CH_FLATTEN_LOOP: for (int c = 0; c < 20; c++) {
                flattened[idx++] = input[h][w][c];
            }
        }
    }

    CLASS_OUT_LOOP: for (int i = 0; i < 10; i++) {
        acc_t sum = LOCAL3_B_FIXED[i];
        WEIGHT_SUM_LOOP: for (int j = 0; j < 180; j++) {
            sum += flattened[j] * LOCAL3_W_FIXED[j][i];
        }
        output[i] = (prob_t)sum;
    }
}

void cnn_hardware(const image_t image_in[IMG_SIZE], prob_t prob_out[10], ctrl_signal_t &ctrl_signal, done_signal_t &done_signal) {
    static ctrl_signal_t ctrl_prev = 0;  // Track previous ctrl state
    
    // Clear done on rising edge of ctrl_signal
    if (ctrl_signal && !ctrl_prev) {
        done_signal = 0;
    }
    
    ctrl_prev = ctrl_signal;
    
    image_t (*img_buffer)[24][3] = (image_t (*)[24][3])image_in;

    if (ctrl_signal == 0) {
        return;
    }

    image_t conv1_out[24][24][64];
    image_t pool1_out[12][12][64];
    image_t conv2_out[12][12][32];
    image_t pool2_out[6][6][32];
    image_t conv3_out[6][6][20];
    image_t pool3_out[3][3][20];

    conv1_fixed_3to64(img_buffer, conv1_out);
    maxpool_fixed_24to12(conv1_out, pool1_out);
    conv2_fixed_64to32(pool1_out, conv2_out);
    maxpool_fixed_12to6(conv2_out, pool2_out);    
    conv3_fixed_32to20(pool2_out, conv3_out);
    maxpool_fixed_6to3(conv3_out, pool3_out);
    fully_connected_fixed(pool3_out, prob_out);
    
    done_signal = 1;
}
