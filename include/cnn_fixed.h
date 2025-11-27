#ifndef CNN_FIXED_H
#define CNN_FIXED_H

#include <vector>
#include <algorithm>
#include <cmath>
#include "cifar10_loader.h"
#include "weights_loader.h"
#include "fixedp.h"


using namespace std;

//Performs a 3x3 convolution (SAME padding),
//adds bias, applies ReLU, and returns output feature maps.

template<int H, int W, int C_IN, int C_OUT, int K_SIZE>
void conv2d_relu(
    image_t img[H][W][C_IN],
    kernel_t kernel[K_SIZE][K_SIZE][C_IN][C_OUT],
    bias_t bias[C_OUT],
    out_image_t[H][W][C_OUT]
);

#endif // CNN_FIXED_H
