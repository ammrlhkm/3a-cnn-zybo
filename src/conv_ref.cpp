#define IMG_SIZE_0 320
#define IMG_SIZE_1 240
#define IMG_SIZE (IMG_SIZE_0 * IMG_SIZE_1)
#define AT(h, w) (h * IMG_SIZE_0 + w)

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

void conv2d(const unsigned char image[IMG_SIZE],
            const int kernel[3][3],
            unsigned char output[IMG_SIZE]) {

    // convolution
    for (int i = 0; i < IMG_SIZE_1; ++i) {
        for (int j = 0; j < IMG_SIZE_0; ++j) {

            int sum = 0;

            for (int kr = 0; kr < 3; ++kr) {
                for (int kc = 0; kc < 3; ++kc) {

                    int r_in = i + kr - 1;
                    int c_in = j + kc - 1;

                    unsigned char pixel_val;
                    if (r_in >= 0 && r_in < IMG_SIZE_1 && c_in >= 0 && c_in < IMG_SIZE_0) {
                        pixel_val = image[AT(r_in, c_in)];
                    } else {
                        pixel_val = 0;
                    }

                    sum += pixel_val * kernel[kr][kc];
                }
            }

            if (sum < 0) output[AT(i, j)] = 0;
            else if (sum > 255) output[AT(i, j)] = 255;
            else output[AT(i, j)] = (unsigned char)sum;
        }
    }
}

void edge_detection(unsigned char image[IMG_SIZE],
                    unsigned char output[IMG_SIZE]) {

    unsigned char gx_image[IMG_SIZE];
    unsigned char gy_image[IMG_SIZE];

    conv2d(image, sobel_x, gx_image);
    conv2d(image, sobel_y, gy_image);

    for (int i = 0; i < IMG_SIZE; ++i) {
        int sum = (int)gx_image[i] + (int)gy_image[i];
        if (sum > 255) output[i] = 255;
        else output[i] = (unsigned char)sum;
    }

}