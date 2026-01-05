#include "cnn_fixed_opt.h"

template <int H, int W, int CIN, int COUT>
void conv2d_fixed_opt(const image_t image[H][W][CIN],
            const kernel_t kernel[3][3][CIN][COUT],
            const bias_t bias[COUT],
            image_t output[H][W][COUT]) {

    image_t padded[H+2][W+2][CIN];
    ac::init_array<AC_VAL_0>(&padded[0][0][0], (H+2)*(W+2)*CIN);
    
    HIN_PADDING : for (int i = 0; i < H; i++)
        WIN_PADDING : for (int j = 0; j < W; j++)
            CIN_PADDING : for (int c = 0; c < CIN; c++)
                padded[i+1][j+1][c] = image[i][j][c];
                
    const int TILE_F = 16;

    HIN_CONV : for (int i = 0; i < H; i++) {
        WIN_CONV : for (int j = 0; j < W; j++) {
            COUT_CONV : for (int tf = 0; tf < COUT; tf += TILE_F) {

                int tile = (tf + TILE_F <= COUT) ? TILE_F : (COUT - tf);
                acc_t acc[TILE_F];

                TILE_F1_CONV : for (int ff = 0; ff < TILE_F; ff++)
                    acc[ff] = bias[tf + ff];

                CIN_CONV : for (int c = 0; c < CIN; c++) {
                    KR_CONV : for (int kr = 0; kr < 3; kr++) {
                        KC_CONV : for (int kc = 0; kc < 3; kc++) {

                            image_t pix = padded[i + kr][j + kc][c];

                            TILE_F2_CONV : for (int ff = 0; ff < TILE_F; ff++)
                                acc[ff] += pix * kernel[kr][kc][c][tf + ff];
                        }
                    }
                }

                TILE_F3_CONV : for (int ff = 0; ff < TILE_F; ff++) {
                    acc_t v = acc[ff];
                    acc_t relu = (v > 0) ? v : 0;
                    output[i][j][tf + ff] = (image_t)relu;
                }
            }
        }
    }
}

template <int H_IN, int W_IN, int CH, int H_OUT, int W_OUT>
void maxpool_fixed_opt(const image_t input[H_IN][W_IN][CH], image_t output[H_OUT][W_OUT][CH]) {
    const int STRIDE = 2;

    image_t padded[H_IN+1][W_IN+1][CH];
    ac::init_array<AC_VAL_0>(&padded[0][0][0], (H_IN+1)*(W_IN+1)*CH);
    
    HIN_PADDING : for (int i = 0; i < H_IN; i++)
        WIN_PADDING : for (int j = 0; j < W_IN; j++)
            CH_PADDING : for (int c = 0; c < CH; c++)
                padded[i][j][c] = input[i][j][c];
                
    CH2_MAXPOOL : for (int c = 0; c < CH; c++) {
        HOUT_MAXPOOL : for (int i = 0; i < H_OUT; i++) {
            WOUT_MAXPOOL : for (int j = 0; j < W_OUT; j++) {

                int h = i * STRIDE;
                int w = j * STRIDE;

                // Fixed 3×3 window
                image_t m0 = padded[h+0][w+0][c];
                image_t m1 = padded[h+0][w+1][c];
                image_t m2 = padded[h+0][w+2][c];

                image_t m3 = padded[h+1][w+0][c];
                image_t m4 = padded[h+1][w+1][c];
                image_t m5 = padded[h+1][w+2][c];

                image_t m6 = padded[h+2][w+0][c];
                image_t m7 = padded[h+2][w+1][c];
                image_t m8 = padded[h+2][w+2][c];

                // Reduction tree (log₂(9) depth)
                image_t max0 = (m0 > m1) ? m0 : m1;
                image_t max1 = (m2 > m3) ? m2 : m3;
                image_t max2 = (m4 > m5) ? m4 : m5;
                image_t max3 = (m6 > m7) ? m6 : m7;

                image_t max4 = (max0 > max1) ? max0 : max1;
                image_t max5 = (max2 > max3) ? max2 : max3;

                image_t max6 = (max4 > max5) ? max4 : max5;

                image_t max_val = (max6 > m8) ? max6 : m8;

                output[i][j][c] = max_val;
            }
        }
    }
}

void conv1_fixed_3to64_opt(const image_t input[24][24][3], image_t output[24][24][64]) {
    conv2d_fixed_opt<24, 24, 3, 64>(input, CONV1_W_FIXED, CONV1_B_FIXED, output);
}

void conv2_fixed_64to32_opt(const image_t input[12][12][64], image_t output[12][12][32]) {
    conv2d_fixed_opt<12, 12, 64, 32>(input, CONV2_W_FIXED, CONV2_B_FIXED, output);
}

void conv3_fixed_32to20_opt(const image_t input[6][6][32], image_t output[6][6][20]) {
    conv2d_fixed_opt<6, 6, 32, 20>(input, CONV3_W_FIXED, CONV3_B_FIXED, output);
}

void maxpool_fixed_24to12_opt(const image_t input[24][24][64], image_t output[12][12][64]) {
    maxpool_fixed_opt<24, 24, 64, 12, 12>(input, output);
}
void maxpool_fixed_12to6_opt(const image_t input[12][12][32], image_t output[6][6][32]) {
    maxpool_fixed_opt<12, 12, 32, 6, 6>(input, output);
}
void maxpool_fixed_6to3_opt(const image_t input[6][6][20], image_t output[3][3][20]) {
    maxpool_fixed_opt<6, 6, 20, 3, 3>(input, output);
}

void fully_connected_fixed_opt(const image_t input[3][3][20], prob_t output[10]) {
    const int N_OUT = 10;

    // Local accumulators
    acc_t acc[N_OUT];

    // Initialize with bias
    INIT_FLATTEN : for (int i = 0; i < N_OUT; i++)
        acc[i] = LOCAL3_B_FIXED[i];

    // Traverse input features once
    H_FLATTEN : for (int h = 0; h < 3; h++) {
        W_FLATTEN : for (int w = 0; w < 3; w++) {
            CH_FLATTEN : for (int c = 0; c < 20; c++) {

                int j = (h * 3 + w) * 20 + c;
                image_t x = input[h][w][c];

                // Update all outputs
                UPDATE_FLATTEN : for (int i = 0; i < N_OUT; i++) {
                    acc[i] += x * LOCAL3_W_FIXED[j][i];
                }
            }
        }
    }

    // Write outputs
    OUTPUT_FLATTEN : for (int i = 0; i < N_OUT; i++)
        output[i] = (prob_t)acc[i];
}

void cnn_hardware_opt(const image_t image_in[IMG_SIZE], prob_t prob_out[10]) {
    image_t (*img_buffer)[24][3] = (image_t (*)[24][3])image_in;
    image_t conv1_out[24][24][64];
    image_t pool1_out[12][12][64];
    image_t conv2_out[12][12][32];
    image_t pool2_out[6][6][32];
    image_t conv3_out[6][6][20];
    image_t pool3_out[3][3][20];

    conv1_fixed_3to64_opt(img_buffer, conv1_out);
    maxpool_fixed_24to12_opt(conv1_out, pool1_out);
    conv2_fixed_64to32_opt(pool1_out, conv2_out);
    maxpool_fixed_12to6_opt(conv2_out, pool2_out);    
    conv3_fixed_32to20_opt(pool2_out, conv3_out);
    maxpool_fixed_6to3_opt(conv3_out, pool3_out);
    fully_connected_fixed_opt(pool3_out, prob_out);
}
