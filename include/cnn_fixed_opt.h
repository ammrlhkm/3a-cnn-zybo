#ifndef CNN_FIXED_OPT_H
#define CNN_FIXED_OPT_H

#include <ac_fixed.h>
#include "config.h"
#include "coeffs_fixed.h"

typedef ac_fixed<IMAGE_P> image_t;
typedef ac_fixed<ACC_P> acc_t;
typedef ac_fixed<PROB_P> prob_t;

template <int H, int W, int CIN, int COUT>
void conv2d_fixed_opt(const image_t image[H][W][CIN],
                  const kernel_t kernel[3][3][CIN][COUT],
                  const bias_t bias[COUT],
                  image_t output[H][W][COUT]);

template <int H_IN, int W_IN, int CH, int H_OUT, int W_OUT>
void maxpool_fixed_opt(const image_t input[H_IN][W_IN][CH],
                   image_t output[H_OUT][W_OUT][CH]);   

void conv1_fixed_3to64_opt(const image_t input[24][24][3], image_t output[24][24][64]);
void conv2_fixed_64to32_opt(const image_t input[12][12][64], image_t output[12][12][32]);
void conv3_fixed_32to20_opt(const image_t input[6][6][32], image_t output[6][6][20]);
void maxpool_fixed_24to12_opt(const image_t input[24][24][64], image_t output[12][12][64]);
void maxpool_fixed_12to6_opt(const image_t input[12][12][32], image_t output[6][6][32]);
void maxpool_fixed_6to3_opt(const image_t input[6][6][20], image_t output[3][3][20]);
void fully_connected_fixed_opt(const image_t input[3][3][20], prob_t output[10]);

void cnn_hardware_opt(const image_t image_in[IMG_SIZE], prob_t prob_out[10]);

#endif // CNN_FIXED_OPT_H
