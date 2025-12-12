#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "preprocess_image.h"

#define IMG_SIZE_0 320
#define IMG_SIZE_1 240
#define IMG_SIZE (IMG_SIZE_0 * IMG_SIZE_1)
#define AT(h, w) (h * IMG_SIZE_0 + w)

// Sobel kernels for edge detection
const int sobel_x[3][3] = {
    {-1, 0, 1},
    {-2, 0, 2},
    {-1, 0, 1}
};

const int sobel_y[3][3] = {
    {-1, -2, -1},
    { 0,  0,  0},
    { 1,  2,  1}
};

// Simple edge detection kernel (Laplacian)
const int edge_kernel[3][3] = {
    { 0, -1,  0},
    {-1,  4, -1},
    { 0, -1,  0}
};

// Generate a simple test image (gradient pattern)
void generate_test_image(unsigned char image[IMG_SIZE]) {
    for (int h = 0; h < IMG_SIZE_1; h++) {
        for (int w = 0; w < IMG_SIZE_0; w++) {
            // Create a gradient pattern
            unsigned char value = (unsigned char)((h + w) % 256);
            image[AT(h, w)] = value;  // R
            image[AT(h, w)] = value;  // G
            image[AT(h, w)] = value;  // B
        }
    }
}

void edge_detection(unsigned char image[IMG_SIZE],
                    unsigned char output[IMG_SIZE]);

int main() {
    const char filename[] = "dataset/tiger_grayscale.pgm";

    unsigned char input_image[IMG_SIZE];
    if(!loadPGM(filename, input_image)) {
        printf("Error: Could not load PGM image data from %s\n", filename);
        return -1;  
    }

    unsigned char output_image[IMG_SIZE];
    edge_detection(input_image, output_image);
    writePGM("dataset/tiger_edges.pgm", output_image, IMG_SIZE_0, IMG_SIZE_1);
    
    printf("Edge detection complete!\n");
    return 0;
}
