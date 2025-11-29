#include "cnn_fixed.h"

template <int H, int W, int Cin, int Cout>
void conv2d(const image_t image[H][W][Cin],
            const kernel_t kernel[3][3][Cin][Cout],
            const bias_t bias[Cout],
            image_t output[H][W][Cout]) {

    F_LOOP: for (int f = 0; f < Cout; ++f) {
        R_LOOP: for (int i = 0; i < H; ++i) {
            C_LOOP: for (int j = 0; j < W; ++j) {

                acc_t sum = bias[f];

                KR_LOOP: for (int kr = 0; kr < 3; ++kr) {
                    KC_LOOP: for (int kc = 0; kc < 3; ++kc) {
                        CH_LOOP: for (int c = 0; c < Cin; ++c) {

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

                if (sum < 0) {
                    output[i][j][f] = 0;
                } else {
                    output[i][j][f] = (image_t)sum;
                }
            }
        }
    }
}

template <int H_IN, int W_IN, int CH, int H_OUT, int W_OUT>
void maxpool_generic(const image_t input[H_IN][W_IN][CH], image_t output[H_OUT][W_OUT][CH]) {
    const int pool_size = 3;
    const int stride = 2;

    CH_LOOP: for (int c = 0; c < CH; c++) {
        R_LOOP: for (int i = 0; i < H_OUT; i++) {
            C_LOOP: for (int j = 0; j < W_OUT; j++) {

                int h_start = i * stride;
                int w_start = j * stride;

                // Initialisation avec le premier pixel de la fenêtre
                image_t max_val = input[h_start][w_start][c];

                // Parcours de la fenêtre 3x3
                PKR_LOOP: for (int kh = 0; kh < pool_size; kh++) {
                    PKC_LOOP: for (int kw = 0; kw < pool_size; kw++) {

                        int cur_h = h_start + kh;
                        int cur_w = w_start + kw;

                        // Vérification des bornes (MATCH REF: loop condition)
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

// Wrappers spécifiques
void maxpool_24to12(const image_t input[24][24][64], image_t output[12][12][64]) {
    maxpool_generic<24, 24, 64, 12, 12>(input, output);
}
void maxpool_12to6(const image_t input[12][12][32], image_t output[6][6][32]) {
    maxpool_generic<12, 12, 32, 6, 6>(input, output);
}
void maxpool_6to3(const image_t input[6][6][20], image_t output[3][3][20]) {
    maxpool_generic<6, 6, 20, 3, 3>(input, output);
}

void fc_forward(const image_t input[3][3][20], image_t output[10]) {

    // 1. Flattening
    image_t flattened[180];
    int idx = 0;

    FLAT_H: for (int h = 0; h < 3; h++) {
        FLAT_W: for (int w = 0; w < 3; w++) {
            FLAT_C: for (int c = 0; c < 20; c++) {
                flattened[idx++] = input[h][w][c];
            }
        }
    }

    // 2. Dense Layer (Matrix Mult)
    DENSE_L: for (int i = 0; i < 10; i++) {
        acc_t sum = LOCAL3_B[i]; // Init avec biais

        // Produit scalaire
        DENSE_DOT: for (int j = 0; j < 180; j++) {
            sum += flattened[j] * LOCAL3_W[j][i];
        }
        output[i] = (image_t)sum;
    }
}

void conv1_forward(const PPMImage& input, image_t output[24][24][64]) {
    image_t img_buffer[24][24][3];

    // Conversion PPM (double/float) vers Fixed Point
    for(int h=0; h<24; h++) {
        for(int w=0; w<24; w++) {
            for(int c=0; c<3; c++) {
                img_buffer[h][w][c] = (image_t)input.at(h, w, c);
            }
        }
    }

    conv2d<24, 24, 3, 64>(img_buffer, CONV1_W, CONV1_B, output);
}

void cnn_forward(const PPMImage& input, image_t output[10]) {
    static image_t layer1_conv[24][24][64];
    static image_t layer1_pool[12][12][64];

    static image_t layer2_conv[12][12][32];
    static image_t layer2_pool[6][6][32];

    static image_t layer3_conv[6][6][20];
    static image_t layer3_pool[3][3][20];

    static image_t fc_output[10];

    // --- Layer 1 ---
    conv1_forward(input, layer1_conv);
    maxpool_24to12(layer1_conv, layer1_pool);

    // --- Layer 2 ---
    conv2d<12, 12, 64, 32>(layer1_pool, CONV2_W, CONV2_B, layer2_conv);
    maxpool_12to6(layer2_conv, layer2_pool);

    // --- Layer 3 ---
    conv2d<6, 6, 32, 20>(layer2_pool, CONV3_W, CONV3_B, layer3_conv);
    maxpool_6to3(layer3_conv, layer3_pool);

    // --- Fully Connected ---
    fc_forward(layer3_pool, output);
}
