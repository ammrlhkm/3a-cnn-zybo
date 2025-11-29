#ifndef FIXEDP_H
#define FIXEDP_H

#include <ac_fixed.h>

using namespace std;

#define IMAGE_W 14        // Total word length
#define IMAGE_I 6         // Integer bits
#define IMAGE_SIGNED true

// Weight parameters
#define WEIGHT_W 14     // Total word length
#define WEIGHT_I 6      // Integer bits
#define WEIGHT_SIGNED true

// Accumulator parameters
#define ACC_W 28        // Total word length
#define ACC_I 12        // Integer bits
#define ACC_SIGNED true

// Bias parameters
#define BIAS_W 14       // Total word length
#define BIAS_I 6        // Integer bits
#define BIAS_SIGNED true

// Fixed-point type definitions using macros
typedef ac_fixed<IMAGE_W, IMAGE_I, IMAGE_SIGNED> image_t;
typedef ac_fixed<WEIGHT_W, WEIGHT_I, WEIGHT_SIGNED> kernel_t;
typedef ac_fixed<ACC_W, ACC_I, ACC_SIGNED> acc_t;
typedef ac_fixed<BIAS_W, BIAS_I, BIAS_SIGNED> bias_t;

#endif // FIXEDP_H
