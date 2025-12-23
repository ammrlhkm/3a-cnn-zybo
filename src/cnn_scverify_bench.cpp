#include <iostream>
#include <iomanip>
#include "config.h"
#include "cnn_ref.h"
#include "cnn_fixed.h"
#include "preprocess_image.h"
#include "coeffs_double.h"
#include "coeffs_fixed.h"

using namespace std;

#include "mc_scverify.h"

const char* cifar10_class[10] = {
    "airplane", "automobile", "bird", "cat", "deer",
    "dog", "frog", "horse", "ship", "truck"
};

CCS_MAIN(int argc, char **argv) {
	cout << "Starting Test" << endl ;
    double img_in[IMG_SIZE];  
    
    // Read file - try both paths for flexibility
    const char* img_paths[] = {
        "dataset/3_domestic_cat_s_000907.ppm",
        "../dataset/3_domestic_cat_s_000907.ppm"
    };
    bool loaded = false;
    for (int p = 0; p < 2; p++) {
        if (loadPPM(img_paths[p], img_in)) {
            cout << "Loaded image from: " << img_paths[p] << endl;
            loaded = true;
            break;
        }
    }
    if (!loaded) {
        cout << "Error: Could not load image from any path" << endl;
        CCS_RETURN(1);
    }

    // Normalize
    normalizeImage(img_in);
    
    image_t img_in_fixed[IMG_SIZE];
    for (int i=0; i<IMG_SIZE; i++) {
        img_in_fixed[i] = (image_t) img_in[i];
        // if < 10, print conversion and binary representation
        if (i < 10) {
            cout << "img_in[" << i << "] = " << img_in[i] 
                 << " -> fixed: " << img_in_fixed[i] 
                 << " (bin: " << img_in_fixed[i].to_string(AC_BIN) << ")" << endl;
        }
    }

    // Run CNN inference
    double probabilities[10];
    cnn_ref(img_in, probabilities);
    prob_t probabilities_fixed[10];
    ctrl_signal_t ctrl_signal = 1;
    done_signal_t done_signal;
    CCS_DESIGN(cnn_hardware)(img_in_fixed,probabilities_fixed, ctrl_signal, done_signal);

    if (done_signal != 1) {
        cerr << "Error: CNN hardware did not signal done." << endl;
        CCS_RETURN(1);
    } else {
        cout << "Inference completed successfully." << endl;
        ctrl_signal = 0;
    }

    // compare with double precision reference
    double worst_error = 0.0 ;
    double fixed_out, double_out, diff[10] ;
    
    cout << endl << left << setw(6) << "Class" << setw(12) << "Name" 
         << right << setw(12) << "Ref" << setw(12) << "Fixed P" << setw(12) << "Diff" << endl;
    cout << string(54, '-') << endl;
    
    for(int i=0; i < 10; i++) {
        double_out = probabilities[i] ;
        fixed_out = probabilities_fixed[i].to_double() ;
        diff[i] = fabs(double_out - fixed_out) ;
        cout << left << setw(6) << i << setw(12) << cifar10_class[i]
             << right << fixed << setprecision(4)
             << setw(12) << double_out << setw(12) << fixed_out << setw(12) << diff[i] << endl;
    }
    
    for(int i=0; i < 10; i++) {
        if (diff[i] > worst_error) worst_error = diff[i] ;
    }
    cout << string(54, '-') << endl;
    cout << "Worst error: " << worst_error << endl;

    // Determine predicted class for double and fixed-point
    int pred_double = 0 ;
    int pred_fixed = 0 ;
    double max_double = probabilities[0] ;
    double max_fixed = probabilities_fixed[0].to_double() ;
    for(int i=1; i < 10; i++) {
        if (probabilities[i] > max_double) {
            max_double = probabilities[i] ;
            pred_double = i ;
        }
        if (probabilities_fixed[i].to_double() > max_fixed) {
            max_fixed = probabilities_fixed[i].to_double() ;
            pred_fixed = i ;
        }
    }
    
    cout << endl;
    cout << "Predicted class (double): " << pred_double << " (" << cifar10_class[pred_double] << ")" << endl;
    cout << "Predicted class (fixed):  " << pred_fixed << " (" << cifar10_class[pred_fixed] << ")" << endl;

    cout << "\nDone!" << endl;
	CCS_RETURN(0) ;
}
