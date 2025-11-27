#ifndef CNN_REF_H
#define CNN_REF_H

#include <vector>
#include <algorithm>
#include <cmath>
#include "cifar10_loader.h"
#include "coeffs_double.h"

using namespace std;

template <int H, int W, int Cin, int Cout>
void conv2d(const double image[H][W][Cin],
            const double kernel[3][3][Cin][Cout],
            const double bias[Cout],
            double output[H][W][Cout]);

// Max pooling functions (3x3 window, stride 2) - specialized for each layer
void maxpool_24to12(const double input[24][24][64], double output[12][12][64]);
void maxpool_12to6(const double input[12][12][32], double output[6][6][32]);
void maxpool_6to3(const double input[6][6][20], double output[3][3][20]);

// Softmax activation
void softmax(const double input[10], double output[10]);

// HLS-friendly wrappers for each layer
void conv1_forward(const PPMImage& input, double output[24][24][64]);
void maxpool1_forward(const double input[24][24][64], double output[12][12][64]);
void conv2_forward(const double input[12][12][64], double output[12][12][32]);
void maxpool2_forward(const double input[12][12][32], double output[6][6][32]);
void conv3_forward(const double input[6][6][32], double output[6][6][20]);
void maxpool3_forward(const double input[6][6][20], double output[3][3][20]);
void fc_forward(const double input[3][3][20], double output[10]);
void softmax_forward(const double input[10], double output[10]);

// Full forward pass
void cnn_forward(const PPMImage& input, double output[10]);

#endif // CNN_REF_H