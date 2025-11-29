#ifndef PREPROCESS_IMAGE_H
#define PREPROCESS_IMAGE_H

#include <iostream>
#include <ostream>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <cmath>
#include <algorithm>

using namespace std;

// Structure to hold PPM image data with 3D array [height][width][channels]
struct PPMImage {
    int width;
    int height;
    double mean;
    double std;
    double* data;  // Flat contiguous array for RGB data, size = height * width * 3
    
    // Helper to access as 3D array: data[h][w][c]
    inline double& at(int h, int w, int c) {
        return data[(h * width + w) * 3 + c];
    }
    
    inline const double& at(int h, int w, int c) const {
        return data[(h * width + w) * 3 + c];
    }
};

// Image preprocessing functions
void computeMeanStd(PPMImage& image);
void normalizeImage(PPMImage& image);
bool loadPPM(const char* filename, PPMImage& image);
void freePPM(PPMImage& image);

#endif // PREPROCESS_IMAGE_H