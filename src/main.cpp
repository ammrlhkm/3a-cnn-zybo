#include "cifar10_loader.h"
#include "weights_loader.h"
#include <iostream>

using namespace std;

int main(int argc, char** argv) {
    // Parse command line arguments
    int num_images = 10;  // Default: test 10 images
    if (argc > 1) {
        num_images = atoi(argv[1]);
    }
    
    cout << "=== CIFAR-10 CNN Inference ===" << endl;
    cout << "Testing on " << num_images << " images" << endl << endl;
    
    CIFAR10Batch test_batch;
    if (!loadCIFAR10Binary("dataset/cifar-10-batches-bin/test_batch.bin", test_batch)) {
        cerr << "\nError: Could not load CIFAR-10 binary file." << endl;
        return -1;
    }
    
    // Limit to available images
    if (num_images > test_batch.num_images) {
        num_images = test_batch.num_images;
    }
    
    load_cnn_weights("dataset/CNN_coeff_3x3.txt");
    cout << "Loaded CNN weights (3x3 kernels)" << endl << endl;

    
    for (int img_idx = 0; img_idx < num_images; img_idx++) {
        const CIFAR10Image& cifar_img = test_batch.images[img_idx];
        
        // Convert to PPMImage
        PPMImage image = cifar_img.toPPMImage();
        
        // Normalize
        computeMeanStd(image);
        normalizeImage(image);
        
        printf("Loading Image %d (Label: %d)\n", img_idx, cifar_img.label);

        freePPM(image);
    }
    return 0;
}
