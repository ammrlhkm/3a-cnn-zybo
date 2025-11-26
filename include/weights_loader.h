#ifndef WEIGHTS_LOADER_H
#define WEIGHTS_LOADER_H

#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <algorithm>

using namespace std;

// Convolution Weights (3x3 Kernel Size assumed)
// [Kernel_H][Kernel_W][Input_Channels][Output_Channels]
extern float CONV1_W[3][3][3][64];
extern float CONV2_W[3][3][64][32];
extern float CONV3_W[3][3][32][20];

// Fully Connected Weights (180x10)
extern float LOCAL3_W[180][10];

// Biases (Sizes 64, 32, 20, 10)
extern float CONV1_B[64];
extern float CONV2_B[32];
extern float CONV3_B[20];
extern float LOCAL3_B[10];

void load_data(istream& f, int total_elements, float* array_ptr);

void load_cnn_weights(const string& filename);

#endif // WEIGHTS_LOADER_H