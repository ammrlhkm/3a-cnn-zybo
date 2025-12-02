#ifndef CIFAR10_LOADER_H
#define CIFAR10_LOADER_H

#include <string>
#include <vector>
#include <fstream>
#include <iostream>
#include "config.h"

using namespace std;

// CIFAR-10 image structure
struct CIFAR10Image {
    unsigned char label;           // Class label (0-9)
    unsigned char data[3072];      // 32x32x3 image in CHW format (R,G,B channels)
    
    void toHWC24x24(unsigned char output[24][24][3]) const;     // Convert to HWC format and crop to 24x24
};

// CIFAR-10 batch structure
struct CIFAR10Batch {
    vector<CIFAR10Image> images;
    int num_images;
    
    CIFAR10Batch() : num_images(0) {}
    void readCIFAR10(int index, double image_data[IMG_SIZE]);
};

extern const char* cifar10_class_names[10];
bool loadCIFAR10Binary(const string& filename, CIFAR10Batch& batch); 

#endif // CIFAR10_LOADER_H
