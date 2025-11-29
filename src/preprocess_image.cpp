#include "preprocess_image.h"

void normalizeImage(PPMImage& image) {
    int N = image.height * image.width * 3;
    double min_std = 1.0f / sqrtf(static_cast<double>(N));
    for (int h = 0; h < image.height; h++) {
        for (int w = 0; w < image.width; w++) {
            for (int c = 0; c < 3; c++) {
                double& pixel = image.at(h, w, c);
                pixel = (pixel - image.mean) / max(min_std, image.std);
            }
        }
    }
}

void computeMeanStd(PPMImage& image) {
    double sum = 0;
    double sum_sq = 0;
    int N = image.width * image.height * 3;

    for (int h = 0; h < image.height; h++) {
        for (int w = 0; w < image.width; w++) {
            for (int c = 0; c < 3; c++) {
                double val = image.at(h, w, c);
                sum += val;
                sum_sq += val * val;
            }
        }
    }

    image.mean = sum / N;
    image.std = sqrtf(sum_sq / N - image.mean * image.mean);
}

bool loadPPM(const char* filename, PPMImage& image) {
    FILE* fp = fopen(filename, "rb");
    if (!fp) {
        perror("Error opening file");
        return false;
    }

    char format[3];
    fscanf(fp, "%2s", format);
    if (strcmp(format, "P3") != 0) {
        cerr << "Error: Unsupported PPM format " << format << endl;
        fclose(fp);
        return false;
    }

    // Skip comments
    int c = fgetc(fp);
    while (c == '#') {
        while (fgetc(fp) != '\n');
        c = fgetc(fp);
    }
    ungetc(c, fp);

    fscanf(fp, "%d %d", &image.width, &image.height);
    int max_val;
    fscanf(fp, "%d", &max_val);
    fgetc(fp); // consume newline

    // Allocate flat contiguous memory for image data
    image.data = new double[image.height * image.width * 3];

    // Read pixel data
    for (int h = 0; h < image.height; h++) {
        for (int w = 0; w < image.width; w++) {
            for (int c = 0; c < 3; c++) {
                int pixel_value;
                fscanf(fp, "%d", &pixel_value);
                image.at(h, w, c) = static_cast<double>(pixel_value);
            }
        }
    }  
    fclose(fp);
    return true;
}

void freePPM(PPMImage& image) {
    delete[] image.data;
    image.data = nullptr;
}