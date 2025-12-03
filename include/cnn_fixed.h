#ifndef CNN_FIXED_H
#define CNN_FIXED_H

#include "config.h"
#include "fixedp.h"
#include "coeffs_fixed.h"

template <int H, int W, int CIN, int COUT>
void conv2d_fixed(const image_t image[H][W][CIN],
                  const kernel_t kernel[3][3][CIN][COUT],
                  const bias_t bias[COUT],
                  image_t output[H][W][COUT]);

template <int H_IN, int W_IN, int CH, int H_OUT, int W_OUT>
void maxpool_fixed(const image_t input[H_IN][W_IN][CH],
                   image_t output[H_OUT][W_OUT][CH]);   

void conv1_fixed_3to64(const image_t input[24][24][3], image_t output[24][24][64]);
void maxpool_fixed_24to12(const image_t input[24][24][64], image_t output[12][12][64]);
void conv2_fixed_64to32(const image_t input[12][12][64], image_t output[12][12][32]);
void maxpool_fixed_12to6(const image_t input[12][12][32], image_t output[6][6][32]);
void conv3_fixed_32to20(const image_t input[6][6][32], image_t output[6][6][20]);
void maxpool_fixed_6to3(const image_t input[6][6][20], image_t output[3][3][20]);
void fully_connected_fixed(const image_t input[3][3][20], prob_t output[10]);

void cnn_hardware(const image_t input[IMG_SIZE], prob_t output[10]);

#endif // CNN_FIXED_H
