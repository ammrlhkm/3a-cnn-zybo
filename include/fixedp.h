#ifndef FIXEDP_H
#define FIXEDP_H

#include <ac_fixed.h>
#include "config.h"

// Fixed-point type definitions using macros
typedef ac_fixed<IMAGE_P> image_t;
typedef ac_fixed<WEIGHT_P> kernel_t;
typedef ac_fixed<ACC_P> acc_t;
typedef ac_fixed<BIAS_P> bias_t;
typedef ac_fixed<PROB_P> prob_t;

#endif // FIXEDP_H
