#include "cifar10_loader.h"
#include <fstream>
#include <iostream>
#include <cstring>

using namespace std;

// ===== CIFAR-10 Loading Functions =====

const char* cifar10_class_names[10] = {
    "airplane", "automobile", "bird", "cat", "deer",
    "dog", "frog", "horse", "ship", "truck"
};

void CIFAR10Image::toHWC24x24(unsigned char output[24][24][3]) const {
    // CIFAR-10 format: HWC (height-width-channel)
    // data[0:1024] = Red channel, [1024:2048] = Green, [2048:3072] = Blue
    // Each channel is 32x32
    
    // Crop from 32x32 to 24x24 (remove 4 pixels from each side)
    for (int h = 0; h < 24; h++) {
        for (int w = 0; w < 24; w++) {
            int src_h = h + 4;  // Start at row 4
            int src_w = w + 4;  // Start at col 4
            int src_idx = src_h * 32 + src_w;
            
            output[h][w][0] = data[src_idx];              // Red
            output[h][w][1] = data[1024 + src_idx];       // Green
            output[h][w][2] = data[2048 + src_idx];       // Blue
        }
    }
}

PPMImage CIFAR10Image::toPPMImage() const {
    PPMImage img;
    img.width = 24;
    img.height = 24;
    img.mean = 0.0f;
    img.std = 1.0f;
    img.data = new double[24 * 24 * 3];
    
    // Convert to HWC 24x24
    unsigned char cropped[24][24][3];
    toHWC24x24(cropped);
    
    // Convert to double
    for (int h = 0; h < 24; h++) {
        for (int w = 0; w < 24; w++) {
            for (int c = 0; c < 3; c++) {
                img.data[h * 24 * 3 + w * 3 + c] = double(cropped[h][w][c]);
            }
        }
    }
    
    return img;
}

bool loadCIFAR10Binary(const string& filename, CIFAR10Batch& batch) {
    ifstream file(filename.c_str(), ios::binary);
    if (!file.is_open()) {
        cerr << "Error: Could not open " << filename << endl;
        return false;
    }
    
    // Get file size to determine number of images
    file.seekg(0, ios::end);
    size_t file_size = file.tellg();
    file.seekg(0, ios::beg);
    
    // Each image is 3073 bytes (1 label + 3072 pixels)
    const size_t image_size = 3073;
    batch.num_images = file_size / image_size;
    
    if (file_size % image_size != 0) {
        cerr << "Warning: File size not a multiple of " << image_size << " bytes" << endl;
    }
    
    cout << "Loading " << batch.num_images << " images from " << filename << endl;
    
    batch.images.resize(batch.num_images);
    
    for (int i = 0; i < batch.num_images; i++) {
        // Read label (1 byte)
        file.read(reinterpret_cast<char*>(&batch.images[i].label), 1);
        
        // Read image data (3072 bytes)
        file.read(reinterpret_cast<char*>(batch.images[i].data), 3072);
        
        if (!file) {
            cerr << "Error reading image " << i << endl;
            return false;
        }
    }
    
    file.close();
    cout << "Successfully loaded " << batch.num_images << " images" << endl;
    return true;
}
