#ifndef CIFAR10_LOADER_H
#define CIFAR10_LOADER_H

#include <string>
#include <vector>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <iostream>
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

// CIFAR-10 image structure
struct CIFAR10Image {
    unsigned char label;           // Class label (0-9)
    unsigned char data[3072];      // 32x32x3 image in CHW format (R,G,B channels)
    
    
    void toHWC24x24(unsigned char output[24][24][3]) const;     // Convert to HWC format and crop to 24x24
    PPMImage toPPMImage() const;                                // Convert to normalized PPMImage
};

// CIFAR-10 batch structure
struct CIFAR10Batch {
    std::vector<CIFAR10Image> images;
    int num_images;
    
    CIFAR10Batch() : num_images(0) {}
};

extern const char* cifar10_class_names[10];
bool loadCIFAR10Binary(const std::string& filename, CIFAR10Batch& batch);

#endif // CIFAR10_LOADER_H
