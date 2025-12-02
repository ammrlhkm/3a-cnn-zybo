#ifndef CONFIG_H
#define CONFIG_H

#define IMAGE_SIZE_0 24  // Width of input image
#define IMAGE_SIZE_1 24  // Height of input image
#define IMG_SIZE (IMAGE_SIZE_0 * IMAGE_SIZE_1 * 3)  //
#define AT(h, w, c) ((h * IMAGE_SIZE_0 + w) * 3 + c)

#define IMAGE_P 16, 8, true  // Image fixed-point params
#define WEIGHT_P 16, 8, true // Weight fixed-point params
#define ACC_P 32, 16, true    // Accumulator fixed-point params
#define BIAS_P 16, 8, true    // Bias fixed-point params

#endif // CONFIG_H