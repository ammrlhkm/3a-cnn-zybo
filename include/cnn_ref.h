#ifndef CNN_REF_H
#define CNN_REF_H

#include <vector>
#include <algorithm>
#include <cmath>
#include "config.h"
#include "coeffs_double.h"

using namespace std;

template <int H, int W, int CIN, int COUT>
void conv2d(const double image[H][W][CIN],
            const double kernel[3][3][CIN][COUT],
            const double bias[COUT],
            double output[H][W][COUT]);

template <int H_IN, int W_IN, int CH, int H_OUT, int W_OUT>
void maxpool(const double input[H_IN][W_IN][CH],
             double output[H_OUT][W_OUT][CH]);   

void conv1_3to64(const double input[24][24][3], double output[24][24][64]);
void maxpool_24to12(const double input[24][24][64], double output[12][12][64]);
void conv2_64to32(const double input[12][12][64], double output[12][12][32]);
void maxpool_12to6(const double input[12][12][32], double output[6][6][32]);
void conv3_32to20(const double input[6][6][32], double output[6][6][20]);
void maxpool_6to3(const double input[6][6][20], double output[3][3][20]);
void fully_connected(const double input[3][3][20], double output[10]);
void softmax(const double input[10], double output[10]);

void cnn_ref(const double input[IMG_SIZE], double output[10]);

#endif // CNN_REF_H

