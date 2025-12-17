#include <ac_int.h>
#include "config.h"
#include "conv_fixed.h"

void conv2d(cam_image_t image[CAM_IMG_SIZE],
            const sobel_t kernel[3][3],
            cam_image_t output[CAM_IMG_SIZE]) {

    // convolution
    H_CONV_LOOP : for (int i = 0; i < CAM_IMAGE_SIZE_1; ++i) {
        W_CONV_LOOP : for (int j = 0; j < CAM_IMAGE_SIZE_0; ++j) {

            cam_acc_t sum = 0;

            KR_CONV_LOOP : for (int kr = 0; kr < 3; ++kr) {
                KC_CONV_LOOP : for (int kc = 0; kc < 3; ++kc) {

                    int r_in = i + kr - 1;
                    int c_in = j + kc - 1;

                    cam_image_t pixel_val;
                    if (r_in >= 0 && r_in < CAM_IMAGE_SIZE_1 && c_in >= 0 && c_in < CAM_IMAGE_SIZE_0) {
                        pixel_val = image[CAM_AT(r_in, c_in)];
                    } else {
                        pixel_val = 0;
                    }

                    sum += pixel_val * kernel[kr][kc];
                }
            }

            if (sum < 0) output[CAM_AT(i, j)] = 0;
            else if (sum > 255) output[CAM_AT(i, j)] = 255;
            else output[CAM_AT(i, j)] = (cam_image_t)sum;
        }
    }
}

void edge_detection(cam_image_t image[CAM_IMG_SIZE],
                    cam_image_t output[CAM_IMG_SIZE]) {

    cam_image_t gx_image[CAM_IMG_SIZE];
    cam_image_t gy_image[CAM_IMG_SIZE];
    conv2d(image, sobel_x, gx_image);
    conv2d(image, sobel_y, gy_image);

    EDGE_DETECTION_LOOP : for (int i = 0; i < CAM_IMG_SIZE; ++i) {
        cam_acc_t sum = gx_image[i] + gy_image[i];
        if (sum > 255) output[i] = 255;
        else output[i] = (cam_image_t)sum;
    }
}