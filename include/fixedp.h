#ifndef FIXEDP_H
#define FIXEDP_H




#include <ac_fixed.h>

using namespace std;

//image
ac_fixed<32, 16, true> image;
//kernel
ac_fixed<32, 16, true> kernel;
//bias
ac_fixed<32, 16, true> bias;

//out image
ac_fixed<106, 74, true> out_image;

//Performs a 3x3 convolution (SAME padding),
//adds bias, applies ReLU, and returns output feature maps.
out_image conv2d_relu(PPMImage& image, kernel, bias);



#endif // FIXEDP_H
