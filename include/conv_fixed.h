#ifndef CONV_FIXED_H
#define CONV_FIXED_H

#include <ac_fixed.h>
#include "config.h"

typedef ac_fixed<SOBEL_P> sobel_t;
typedef ac_fixed<CAM_IMAGE_P> cam_image_t;
typedef ac_fixed<CAM_ACC_P> cam_acc_t;

const sobel_t sobel_x[3][3] = {
    {-1, 0, 1},
    {-2, 0, 2},
    {-1, 0, 1}
};

const sobel_t sobel_y[3][3] = {
    {-1, -2, -1},
    { 0,  0,  0},
    { 1,  2,  1}
};

void conv2d(cam_image_t image[CAM_IMG_SIZE],
            const sobel_t kernel[3][3],
            cam_image_t output[CAM_IMG_SIZE]);

void edge_detection(cam_image_t image[CAM_IMG_SIZE],
                    cam_image_t output[CAM_IMG_SIZE]);

#endif // CONV_FIXED_H