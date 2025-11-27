#include "cifar10_loader.h"
#include "weights_loader.h"
#include "cnn_ref.h"
#include <iostream>

using namespace std;

int main(int argc, char** argv) {
    int num_images = 1000;  // Default: test 10 images
    string cifar10_filename = "dataset/cifar-10-batches-bin/data_batch_1.bin";
    if (argc > 1) {
        cifar10_filename = string(argv[1]);
    } 
    if (argc > 2) {
        num_images = atoi(argv[2]);
    }
    
    cout << "=== CIFAR-10 CNN Inference ===" << endl;
    cout << "Testing on " << num_images << " images" << endl << endl;
    
    CIFAR10Batch test_batch;
    if (!loadCIFAR10Binary(cifar10_filename, test_batch)) {
        cerr << "\nError: Could not load CIFAR-10 binary file." << endl;
        return -1;
    }
    
    if (num_images > test_batch.num_images) {     // Limit to available images
        num_images = test_batch.num_images;
    }
    
    load_cnn_weights("dataset/CNN_coeff_3x3.txt");
    cout << "Loaded CNN weights (3x3 kernels)" << endl << endl;
    
    int correct = 0;
    int total = 0;
    int class_correct[10] = {0};
    int class_total[10] = {0};
    
    for (int img_idx = 0; img_idx < num_images; img_idx++) {
        const CIFAR10Image& cifar_img = test_batch.images[img_idx];
        
        // Convert to PPMImage
        PPMImage image = cifar_img.toPPMImage();
        
        // Normalize
        computeMeanStd(image);
        normalizeImage(image);
        
        // Run CNN inference
        double probabilities[10];
        cnn_forward(image, probabilities);
        
        // Find predicted class
        int predicted = 0;
        double max_prob = probabilities[0];
        for (int i = 1; i < 10; i++) {
            if (probabilities[i] > max_prob) {
                max_prob = probabilities[i];
                predicted = i;
            }
        }
        
        // Check if correct
        int true_label = cifar_img.label;
        bool is_correct = (predicted == true_label);
        
        if (is_correct) {
            correct++;
            class_correct[true_label]++;
        }
        total++;
        class_total[true_label]++;
        
        // Print result
        cout << "Image " << (img_idx + 1) << "/" << num_images 
             << ": True=" << cifar10_class_names[true_label]
             << ", Pred=" << cifar10_class_names[predicted]
             << " (" << (max_prob * 100.0f) << "%)"
             << " " << (is_correct ? "✓" : "✗") << endl;
        
        // Cleanup
        freePPM(image);
    }
    
    // ===== Print Summary Statistics =====
    cout << "\n=== Results ===" << endl;
    cout << "Overall Accuracy: " << correct << "/" << total 
         << " = " << (100.0f * correct / total) << "%" << endl;
    
    cout << "\nPer-Class Accuracy:" << endl;
    for (int i = 0; i < 10; i++) {
        if (class_total[i] > 0) {
            double acc = 100.0f * class_correct[i] / class_total[i];
            cout << "  " << cifar10_class_names[i] << ": "
                 << class_correct[i] << "/" << class_total[i]
                 << " = " << acc << "%" << endl;
        }
    }
    
    cout << "\nDone!" << endl;
    return 0;
}
