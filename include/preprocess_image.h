#ifndef PREPROCESS_IMAGE_H
#define PREPROCESS_IMAGE_H

#include <string>
#include <fstream>
#include <iostream>
#include <cmath>
#include <cstring>
#include "config.h"

using namespace std;

// Image preprocessing functions
bool loadPPM(const char* filename, double* image_data);
bool writePPM(const char* filename, double* image_data);
bool loadPGM(const char* filename, unsigned char* image_data);
bool writePGM(const char* filename, unsigned char* data, int width, int height);
void normalizeImage(double* image_data);

#endif // PREPROCESS_IMAGE_H

