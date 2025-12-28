#include "cnn_ref.h"

template <int H, int W, int CIN, int COUT>
void conv2d(const double image[H][W][CIN], 
            const double kernel[3][3][CIN][COUT], 
            const double bias[COUT], 
            double output[H][W][COUT]) {

    float padded[H+2][W+2][CIN] = {0};

    // Explicit padding
    for (int i = 0; i < H; i++)
        for (int j = 0; j < W; j++)
            for (int c = 0; c < CIN; c++)
                padded[i+1][j+1][c] = image[i][j][c];

    const int TILE_F = 16;

    for (int i = 0; i < H; i++) {
        for (int j = 0; j < W; j++) {
            for (int tf = 0; tf < COUT; tf += TILE_F) {
                
                int tile = (tf + TILE_F <= COUT) ? TILE_F : (COUT - tf);
                float acc[TILE_F];

                for (int ff = 0; ff < tile; ff++)
                    acc[ff] = bias[tf + ff];

                for (int c = 0; c < CIN; c++) {
                    for (int kr = 0; kr < 3; kr++) {
                        for (int kc = 0; kc < 3; kc++) {

                            float pix = padded[i+kr][j+kc][c];

                            for (int ff = 0; ff < tile; ff++)
                                acc[ff] += pix * kernel[kr][kc][c][tf + ff];
                        }
                    }
                }

                for (int ff = 0; ff < tile; ff++) {
                    float v = acc[ff];
                    if(v < 0.0f) v = 0.0f;
                    output[i][j][tf + ff] = v;
                }
            }
        }
    }
}


template <int H_IN, int W_IN, int CH, int H_OUT, int W_OUT>
void maxpool(const double input[H_IN][W_IN][CH], double output[H_OUT][W_OUT][CH]) {
    const int STRIDE = 2;

    static double padded[H_IN + 2][W_IN + 2][CH] = {0};

    // Padding
    for (int i = 0; i < H_IN; i++)
        for (int j = 0; j < W_IN; j++)
            for (int c = 0; c < CH; c++)
                padded[i + 1][j + 1][c] = input[i][j][c];

    for (int c = 0; c < CH; c++) {
        for (int i = 0; i < H_OUT; i++) {
            for (int j = 0; j < W_OUT; j++) {

                int h = i * STRIDE;
                int w = j * STRIDE;

                // Fixed 3×3 window
                double m0 = padded[h+0][w+0][c];
                double m1 = padded[h+0][w+1][c];
                double m2 = padded[h+0][w+2][c];

                double m3 = padded[h+1][w+0][c];
                double m4 = padded[h+1][w+1][c];
                double m5 = padded[h+1][w+2][c];

                double m6 = padded[h+2][w+0][c];
                double m7 = padded[h+2][w+1][c];
                double m8 = padded[h+2][w+2][c];

                // Reduction tree (log₂(9) depth)
                double max0 = (m0 > m1) ? m0 : m1;
                double max1 = (m2 > m3) ? m2 : m3;
                double max2 = (m4 > m5) ? m4 : m5;
                double max3 = (m6 > m7) ? m6 : m7;

                double max4 = (max0 > max1) ? max0 : max1;
                double max5 = (max2 > max3) ? max2 : max3;

                double max6 = (max4 > max5) ? max4 : max5;

                double max_val = (max6 > m8) ? max6 : m8;

                output[i][j][c] = max_val;
            }
        }
    }
}


void conv1_3to64(const double input[24][24][3], double output[24][24][64]) {
    conv2d<24, 24, 3, 64>(input, CONV1_W, CONV1_B, output);
}

void conv2_64to32(const double input[12][12][64], double output[12][12][32]) {
    conv2d<12, 12, 64, 32>(input, CONV2_W, CONV2_B, output);
}

void conv3_32to20(const double input[6][6][32], double output[6][6][20]) {
    conv2d<6, 6, 32, 20>(input, CONV3_W, CONV3_B, output);
}

void maxpool_24to12(const double input[24][24][64], double output[12][12][64]) {
    maxpool<24, 24, 64, 12, 12>(input, output);
}

void maxpool_12to6(const double input[12][12][32], double output[6][6][32]) {
    maxpool<12, 12, 32, 6, 6>(input, output);
}

void maxpool_6to3(const double input[6][6][20], double output[3][3][20]) {
    maxpool<6, 6, 20, 3, 3>(input, output);
}

void fully_connected(const double input[3][3][20], double output[10]) {
    const int N_OUT = 10;

    // Local accumulators
    double acc[N_OUT];

    // Initialize with bias
    for (int i = 0; i < N_OUT; i++)
        acc[i] = LOCAL3_B[i];

    // Traverse input features once
    for (int h = 0; h < 3; h++) {
        for (int w = 0; w < 3; w++) {
            for (int c = 0; c < 20; c++) {

                // Compute flattened index logically
                int j = (h * 3 + w) * 20 + c;
                double x = input[h][w][c];

                // Update all outputs
                for (int i = 0; i < N_OUT; i++) {
                    acc[i] += x * LOCAL3_W[j][i];
                }
            }
        }
    }

    // Write outputs
    for (int i = 0; i < N_OUT; i++)
        output[i] = acc[i];
}

void softmax(const double input[10], double output[10]) {
    // Find max for numerical stability
    double max_val = input[0];
    for (int i = 1; i < 10; i++) {
        if (input[i] > max_val) {
            max_val = input[i];
        }
    }
    
    // Compute exp(x - max) and sum
    double exp_sum = 0.0f;
    double exp_vals[10];
    for (int i = 0; i < 10; i++) {
        exp_vals[i] = exp(input[i] - max_val);
        exp_sum += exp_vals[i];
    }
    
    // Normalize
    for (int i = 0; i < 10; i++) {
        output[i] = exp_vals[i] / exp_sum;
    }
}

void cnn_ref(const double input[IMG_SIZE], double output[10]) {
    double (*img_buffer)[24][3] = (double (*)[24][3])input;
    double conv1_out[24][24][64];
    double pool1_out[12][12][64];
    double conv2_out[12][12][32];
    double pool2_out[6][6][32];
    double conv3_out[6][6][20];
    double pool3_out[3][3][20];

    // Layer 1: Conv + Pool
    conv1_3to64(img_buffer, conv1_out);
    maxpool_24to12(conv1_out, pool1_out);
    
    // Layer 2: Conv + Pool
    conv2_64to32(pool1_out, conv2_out);
    maxpool_12to6(conv2_out, pool2_out);
    
    // Layer 3: Conv + Pool
    conv3_32to20(pool2_out, conv3_out);
    maxpool_6to3(conv3_out, pool3_out);
    
    // Fully connected
    // double logits[10];
    fully_connected(pool3_out, output);
    
    // Softmax
    // softmax(logits, output);  Uncomment if softmax probabilities are needed
}
