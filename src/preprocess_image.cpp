#include "preprocess_image.h"

bool loadPPM(const char* filename, double* image_data) {
    ifstream simg_in(filename);
    char type[255], tmp[255];
    int sx, sy;
    
    // Read file
    if (!simg_in.is_open()) {
        printf("File not opened\n");
        return false;
    }
    printf("File %s opened\n", filename);
    
    simg_in.getline(type, 255);
    simg_in.getline(tmp, 255);
    while (tmp[0] == '#') simg_in.getline(tmp, 255);
    sscanf(tmp, "%d %d", &sx, &sy);
    
    int level;
    simg_in >> level;
    
    int data;
    for (int i = 0; i < sx * sy * 3; i++) {
        simg_in >> data;
        image_data[i] = static_cast<double>(data);  // Write directly to output array
    }
    
    return true;
}

bool writePPM(const char* filename, double* image_data) {
    ofstream simg_out(filename);
    if (!simg_out.is_open()) {
        cerr << "Error: Could not open " << filename << " for writing." << endl;
        return false;
    }

    simg_out << "P3" << endl;
    simg_out << IMAGE_SIZE_0 << " " << IMAGE_SIZE_1 << endl;
    simg_out << "255" << endl;

    for(int i=0; i<IMG_SIZE;i++) {
        simg_out <<  static_cast<int>(image_data[i]) << endl; 
    }

    return true;
}

bool loadPGM(const char* filename, unsigned char* image_data) {
    FILE *fp = fopen(filename, "rb");
    if (!fp) {
        printf("Error: Cannot open file %s\n", filename);
        return false;
    }
    
    char format[3];
    int width, height, maxval;
    
    if(!fscanf(fp, "%2s\n", format)) {
        printf("Error: Unable to read PGM format\n");
        fclose(fp);
        return false;
    }

    if (strcmp(format, "P5") != 0) {
        printf("Error: Unsupported PGM format %s\n", format);
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
    
    if(!fscanf(fp, "%d %d\n%d\n", &width, &height, &maxval)) {
        printf("Error: Unable to read PGM header\n");
        fclose(fp);
        return false;
    }
    
    if(!fread(image_data, sizeof(unsigned char), width * height, fp)) {
        printf("Error: Unable to read PGM pixel data\n");
        fclose(fp);
        return false;
    }
    fclose(fp);
    return true;
}

bool writePGM(const char* filename, unsigned char* data, int width, int height) {
    FILE *fp = fopen(filename, "wb");
    if (!fp) {
        printf("Error: Cannot open file %s for writing\n", filename);
        return false;
    }
    
    fprintf(fp, "P5\n%d %d\n255\n", width, height);
    fwrite(data, sizeof(unsigned char), width * height, fp);
    fclose(fp);
    return true;
}

void normalizeImage(double* image_data) {
    double sum = 0;
    double sum_sq = 0;

    for (int h = 0; h < IMAGE_SIZE_0; h++) {
        for (int w = 0; w < IMAGE_SIZE_1; w++) {
            for (int c = 0; c < 3; c++) {
                double val = image_data[AT(h, w, c)];
                sum += val;
                sum_sq += val * val;
            }
        }
    }
    
    double mean = sum / IMG_SIZE;
    double std = sqrtf(sum_sq / IMG_SIZE - mean * mean);
    double min_std = 1.0 / sqrtf(static_cast<double>(IMG_SIZE));
    
    for (int h = 0; h < IMAGE_SIZE_0; h++) {
        for (int w = 0; w < IMAGE_SIZE_1; w++) {
            for (int c = 0; c < 3; c++) {
                double& pixel = image_data[AT(h, w, c)];
                pixel = (pixel - mean) / max(min_std, std);
            }
        }
    }
}
