#include <fstream>
#include <iostream>
#include <iomanip>
#include "config.h"
#include "preprocess_image.h"
#include "conv_fixed.h"

using namespace std;

#include "mc_scverify.h"

CCS_MAIN(int argc, char **argv) {

    const char file[] = "dataset/tiger_grayscale.pgm";
    cam_image_t input_image[CAM_IMG_SIZE];
    cam_image_t output_image[CAM_IMG_SIZE];
    unsigned char in_image[CAM_IMG_SIZE];
    unsigned char out_image[CAM_IMG_SIZE];

    if(!loadPGM(file, in_image)) {
        printf("Error: Could not load PGM image data from %s\n", file);
        CCS_RETURN(-1);  
    }

    for (int i = 0; i < CAM_IMG_SIZE; ++i) {
        input_image[i] = (cam_image_t)in_image[i];
    }

    printf("Start verification Edge Detection\n");
    CCS_DESIGN(edge_detection)(input_image, output_image);

    for (int i = 0; i < CAM_IMG_SIZE; ++i) {
        out_image[i] = output_image[i].to_int();
    }

    writePGM("dataset/tiger_edges.pgm", out_image, CAM_IMAGE_SIZE_0, CAM_IMAGE_SIZE_1);
    printf("Edge detection complete!\n");
    
    CCS_RETURN(0);
}
  
