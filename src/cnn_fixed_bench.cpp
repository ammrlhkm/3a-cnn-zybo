#include "cifar10_loader.h"
#include "preprocess_image.h"
#include "coeffs_fixed.h"
#include "cnn_fixed.h"
#include <iostream>
#include <chrono>
#include <iomanip>
#include <bitset>

using namespace std;

int main(int argc, char** argv) {
    int num_images = 100;  // Default: test 100 images
    string cifar10_filename = "dataset/cifar-10-batches-bin/data_batch_1.bin";
    int debug_images = 0;  // Number of images to dump for debugging
    
    if (argc > 1) {
        cifar10_filename = string(argv[1]);
    }
    if (argc > 2) {
        num_images = atoi(argv[2]);
    }
    if (argc > 3) {
        debug_images = atoi(argv[3]);
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

    int correct = 0;
    int total = 0;
    int class_correct[10] = {0};
    int class_total[10] = {0};
    double max_image_t = 0;
    double min_image_t = 1000;
    double max_prob_t = 0;
    double min_prob_t = 1000;
    
    /* Timing variables */
    double total_inference_time_us = 0;
    double min_inference_time_us = 1e9;
    double max_inference_time_us = 0;

    for (int img_idx = 0; img_idx < num_images; img_idx++) {
        const CIFAR10Image& cifar_img = test_batch.images[img_idx];
        
        double image[IMG_SIZE];
        test_batch.readCIFAR10(img_idx, image);
        
        // Normalize
        normalizeImage(image);
        
        // Print pixels in txt file
        for (int i = 0; i < IMG_SIZE; i++) {
            if (image[i] > max_image_t) max_image_t = image[i];
            if (image[i] < min_image_t) min_image_t = image[i];
        }

        // Convert to fixed-point
        image_t image_fixed[IMG_SIZE];
        for (int i = 0; i < IMG_SIZE; i++) {
            image_fixed[i] = (image_t)image[i];
        }

        // Start timing
        auto t_start = chrono::high_resolution_clock::now();

        // Run CNN inference
        prob_t probabilities[10];
        done_signal_t done_signal;
        cnn_hardware(image_fixed, probabilities, done_signal);

        // Stop timing
        auto t_end = chrono::high_resolution_clock::now();
        double elapsed_us = chrono::duration<double, micro>(t_end - t_start).count();
        
        if(done_signal != 1) {
            cerr << "Error: CNN hardware did not signal done." << endl;
            return -1;
        } else {
            cout << "Inference completed successfully." << endl;
        }

        // Update timing statistics
        total_inference_time_us += elapsed_us;
        if (elapsed_us < min_inference_time_us) {
            min_inference_time_us = elapsed_us;
        }
        if (elapsed_us > max_inference_time_us) {
            max_inference_time_us = elapsed_us;
        }
        
        // Find predicted class
        int predicted = 0;
        prob_t max_prob = probabilities[0];
        for (int i = 1; i < 10; i++) {
            if (probabilities[i] > max_prob) {
                max_prob = probabilities[i];
                predicted = i;
            }
            double prob_val = probabilities[i].to_double();
            if (prob_val > max_prob_t) max_prob_t = prob_val;
            if (prob_val < min_prob_t) min_prob_t = prob_val;
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
             << " (" << (max_prob.to_double() ) << ")"
             << " " << (is_correct ? "✓" : "✗") << endl;
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

    cout << "\nProbability Value Range: [" << min_prob_t << ", " << max_prob_t << "]" << endl;
    cout << "\nImage Pixel Value Range: [" << min_image_t << ", " << max_image_t << "]" << endl;

    /* Print timing statistics */
    cout << "\n=== Inference Timing ===" << endl;
    if (total > 0) {
        double avg_time_us = total_inference_time_us / total;
        double avg_time_ms = avg_time_us / 1000.0;
        double throughput_fps = 1000000.0 / avg_time_us;
        
        cout << fixed << setprecision(2);
        cout << "Average Time: " << avg_time_us << " us (" << avg_time_ms << " ms)" << endl;
        cout << "Min Time:     " << min_inference_time_us << " us" << endl;
        cout << "Max Time:     " << max_inference_time_us << " us" << endl;
        cout << "Throughput:   " << throughput_fps << " FPS" << endl;
    }

    cout << "\nDone!" << endl;
    return 0;
}
