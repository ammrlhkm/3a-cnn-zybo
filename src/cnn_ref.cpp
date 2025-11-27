#include "cnn_ref.h"

template <int H, int W, int Cin, int Cout>
void conv2d(const double image[H][W][Cin], 
            const double kernel[3][3][Cin][Cout], 
            const double bias[Cout], 
            double output[H][W][Cout]) {

    // Create padded image with zeros
    double padded_image[H + 2][W + 2][Cin] = {0};
    for (int h = 0; h < H; ++h) {
        for (int w = 0; w < W; ++w) {
            for (int c = 0; c < Cin; ++c) {
                padded_image[h + 1][w + 1][c] = image[h][w][c];
            }
        }
    }

    // Perform convolution with ReLU activation
    for (int f = 0; f < Cout; ++f) {
        for (int i = 0; i < H; ++i) {
            for (int j = 0; j < W; ++j) {
                
                // Initialize with bias
                double sum = bias[f]; 

                // Convolve with 3x3 kernel
                for (int c = 0; c < Cin; ++c) {
                    for (int kr = 0; kr < 3; ++kr) {
                        for (int kc = 0; kc < 3; ++kc) {
                            sum += padded_image[i+kr][j+kc][c] * kernel[kr][kc][c][f];
                        }
                    }
                }
                
                // Apply ReLU activation
                output[i][j][f] = max(0.0, sum);
            }
        }
    }
}


void maxpool_24to12(const double input[24][24][64], double output[12][12][64]) {
    const int pool_size = 3;
    const int stride = 2;
    
    for (int c = 0; c < 64; c++) {
        for (int i = 0; i < 12; i++) {
            for (int j = 0; j < 12; j++) {
                int h_start = i * stride;
                int w_start = j * stride;
                
                double max_val = input[h_start][w_start][c];
                
                for (int kh = 0; kh < pool_size && (h_start + kh) < 24; kh++) {
                    for (int kw = 0; kw < pool_size && (w_start + kw) < 24; kw++) {
                        double val = input[h_start + kh][w_start + kw][c];
                        if (val > max_val) {
                            max_val = val;
                        }
                    }
                }
                
                output[i][j][c] = max_val;
            }
        }
    }
}

void maxpool_12to6(const double input[12][12][32], double output[6][6][32]) {
    const int pool_size = 3;
    const int stride = 2;
    
    for (int c = 0; c < 32; c++) {
        for (int i = 0; i < 6; i++) {
            for (int j = 0; j < 6; j++) {
                int h_start = i * stride;
                int w_start = j * stride;
                
                double max_val = input[h_start][w_start][c];
                
                for (int kh = 0; kh < pool_size && (h_start + kh) < 12; kh++) {
                    for (int kw = 0; kw < pool_size && (w_start + kw) < 12; kw++) {
                        double val = input[h_start + kh][w_start + kw][c];
                        if (val > max_val) {
                            max_val = val;
                        }
                    }
                }
                
                output[i][j][c] = max_val;
            }
        }
    }
}

void maxpool_6to3(const double input[6][6][20], double output[3][3][20]) {
    const int pool_size = 3;
    const int stride = 2;
    
    for (int c = 0; c < 20; c++) {
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                int h_start = i * stride;
                int w_start = j * stride;
                
                double max_val = input[h_start][w_start][c];
                
                for (int kh = 0; kh < pool_size && (h_start + kh) < 6; kh++) {
                    for (int kw = 0; kw < pool_size && (w_start + kw) < 6; kw++) {
                        double val = input[h_start + kh][w_start + kw][c];
                        if (val > max_val) {
                            max_val = val;
                        }
                    }
                }
                
                output[i][j][c] = max_val;
            }
        }
    }
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

void conv1_forward(const PPMImage& input, double output[24][24][64]) {
    // Copy flat input data into 3D array format
    double input_3d[24][24][3];
    for (int h = 0; h < 24; h++) {
        for (int w = 0; w < 24; w++) {
            for (int c = 0; c < 3; c++) {
                input_3d[h][w][c] = input.at(h, w, c);
            }
        }
    }
    
    // Call conv2d with properly formatted arrays
    conv2d<24, 24, 3, 64>(input_3d, CONV1_W, CONV1_B, output);
}

void maxpool1_forward(const double input[24][24][64], double output[12][12][64]) {
    maxpool_24to12(input, output);
}

void conv2_forward(const double input[12][12][64], double output[12][12][32]) {
    conv2d<12, 12, 64, 32>(input, CONV2_W, CONV2_B, output);
}

void maxpool2_forward(const double input[12][12][32], double output[6][6][32]) {
    maxpool_12to6(input, output);
}

void conv3_forward(const double input[6][6][32], double output[6][6][20]) {
    conv2d<6, 6, 32, 20>(input, CONV3_W, CONV3_B, output);
}

void maxpool3_forward(const double input[6][6][20], double output[3][3][20]) {
    maxpool_6to3(input, output);
}

void fc_forward(const double input[3][3][20], double output[10]) {
    // Flatten spatial dimensions: 3*3*20 = 180 features
    double flattened[180];
    int idx = 0;
    for (int h = 0; h < 3; h++) {
        for (int w = 0; w < 3; w++) {
            for (int c = 0; c < 20; c++) {
                flattened[idx++] = input[h][w][c];
            }
        }
    }
    
    // Fully connected: output[i] = sum(flattened[j] * LOCAL3_W[j][i]) + LOCAL3_B[i]
    for (int i = 0; i < 10; i++) {
        double sum = LOCAL3_B[i];
        for (int j = 0; j < 180; j++) {
            sum += flattened[j] * LOCAL3_W[j][i];
        }
        output[i] = sum;
    }
}

void softmax_forward(const double input[10], double output[10]) {
    softmax(input, output);
}

// Complete forward pass through entire network
void cnn_forward(const PPMImage& input, double output[10]) {
    // Layer 1: Conv + Pool
    double conv1_out[24][24][64];
    conv1_forward(input, conv1_out);
    double pool1_out[12][12][64];
    maxpool1_forward(conv1_out, pool1_out);
    
    // Layer 2: Conv + Pool
    double conv2_out[12][12][32];
    conv2_forward(pool1_out, conv2_out);
    double pool2_out[6][6][32];
    maxpool2_forward(conv2_out, pool2_out);
    
    // Layer 3: Conv + Pool
    double conv3_out[6][6][20];
    conv3_forward(pool2_out, conv3_out);
    double pool3_out[3][3][20];
    maxpool3_forward(conv3_out, pool3_out);
    
    // Fully connected
    double logits[10];
    fc_forward(pool3_out, logits);
    
    // Softmax
    softmax_forward(logits, output);
}


