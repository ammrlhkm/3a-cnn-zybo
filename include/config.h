#ifndef CONFIG_H
#define CONFIG_H

// CNN RGB image dimensions
#define IMAGE_SIZE_0 24  
#define IMAGE_SIZE_1 24  
#define IMG_SIZE (IMAGE_SIZE_0 * IMAGE_SIZE_1 * 3)  
#define AT(h, w, c) ((h * IMAGE_SIZE_0 + w) * 3 + c)

// Camera grayscale image dimensions
#define CAM_IMAGE_SIZE_0 320
#define CAM_IMAGE_SIZE_1 240  
#define CAM_IMG_SIZE (CAM_IMAGE_SIZE_0 * CAM_IMAGE_SIZE_1)
#define CAM_AT(h, w) (h * CAM_IMAGE_SIZE_0 + w)

// Fixed-point configuration parameters
#define IMAGE_P 10, 5, true  
#define WEIGHT_P 10, 3, true 
#define ACC_P 32, 17, true   
#define BIAS_P 10, 3, true   
#define PROB_P 10, 6, true   

#endif // CONFIG_H
