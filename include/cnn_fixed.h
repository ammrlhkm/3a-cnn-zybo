#ifndef CNN_FIXED_H
#define CNN_FIXED_H

#include <vector>
#include <algorithm>
#include <cmath>
#include "cifar10_loader.h"
#include "fixedp.h"
#include "coeffs_fixed.h"

template <int H, int W, int Cin, int Cout>
void conv2d(const image_t image[H][W][Cin],
            const kernel_t kernel[3][3][Cin][Cout],
            const bias_t bias[Cout],
            image_t output[H][W][Cout]);

template <int H_IN, int W_IN, int CH, int H_OUT, int W_OUT>
void maxpool(const double input[H_IN][W_IN][CH], double output[H_OUT][W_OUT][CH]);

void maxpool_24to12(const image_t input[24][24][64], image_t output[12][12][64]);
void maxpool_12to6(const image_t input[12][12][32], image_t output[6][6][32]);
void maxpool_6to3(const image_t input[6][6][20], image_t output[3][3][20]);
void fc_forward(const image_t input[3][3][20], image_t output[10]);

void conv1_forward(const PPMImage& input, image_t output[24][24][64]);
void cnn_forward(const PPMImage& input, image_t output[10]);


#endif // CNN_FIXED_H
