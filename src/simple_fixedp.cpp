#include <iostream>
#include <iomanip>
#include <cmath>
#include "ac_fixed.h"
#include "config.h"
#include "fixedp.h"

using namespace std;

int main() {
    cout << "=======================================================" << endl;
    cout << "  Fixed-Point Range & Precision Analysis (config.h)" << endl;
    cout << "=======================================================" << endl;
    cout << endl;

    cout << "=== Current Config.h Fixed-Point Types ===" << endl;
    cout << endl;

    // Calculate theoretical ranges
    // For ac_fixed<W, I, true> (signed):
    //   Min = -2^(I-1)
    //   Max = 2^(I-1) - 2^(-(W-I))
    //   Resolution = 2^(-(W-I))

    // IMAGE_P: ac_fixed<24, 12, true>
    // W=24, I=12, F=12 (fractional bits)
    int W_img = 24, I_img = 12, F_img = W_img - I_img;
    double min_img = -pow(2, I_img - 1);
    double max_img = pow(2, I_img - 1) - pow(2, -F_img);
    double res_img = pow(2, -F_img);

    cout << "--- image_t: ac_fixed<24, 12, true> ---" << endl;
    cout << "  Total bits (W):      " << W_img << endl;
    cout << "  Integer bits (I):    " << I_img << endl;
    cout << "  Fractional bits (F): " << F_img << endl;
    cout << "  MIN value:           " << fixed << setprecision(6) << min_img << endl;
    cout << "  MAX value:           " << max_img << endl;
    cout << "  Resolution:          " << res_img << " (2^-" << F_img << ")" << endl;
    cout << endl;

    // Verify with actual type
    image_t img_max, img_min;
    img_max.set_val<AC_VAL_MAX>();
    img_min.set_val<AC_VAL_MIN>();
    cout << "  Actual MAX (test):   " << img_max.to_double() << endl;
    cout << "  Actual MIN (test):   " << img_min.to_double() << endl;
    cout << endl;

    // WEIGHT_P: ac_fixed<24, 12, true>
    int W_wgt = 24, I_wgt = 12, F_wgt = W_wgt - I_wgt;
    double min_wgt = -pow(2, I_wgt - 1);
    double max_wgt = pow(2, I_wgt - 1) - pow(2, -F_wgt);
    double res_wgt = pow(2, -F_wgt);

    cout << "--- kernel_t (weight): ac_fixed<24, 12, true> ---" << endl;
    cout << "  Total bits (W):      " << W_wgt << endl;
    cout << "  Integer bits (I):    " << I_wgt << endl;
    cout << "  Fractional bits (F): " << F_wgt << endl;
    cout << "  MIN value:           " << min_wgt << endl;
    cout << "  MAX value:           " << max_wgt << endl;
    cout << "  Resolution:          " << res_wgt << " (2^-" << F_wgt << ")" << endl;
    cout << endl;

    kernel_t wgt_max, wgt_min;
    wgt_max.set_val<AC_VAL_MAX>();
    wgt_min.set_val<AC_VAL_MIN>();
    cout << "  Actual MAX (test):   " << wgt_max.to_double() << endl;
    cout << "  Actual MIN (test):   " << wgt_min.to_double() << endl;
    cout << endl;

    // BIAS_P: ac_fixed<24, 12, true>
    int W_bias = 24, I_bias = 12, F_bias = W_bias - I_bias;
    double min_bias = -pow(2, I_bias - 1);
    double max_bias = pow(2, I_bias - 1) - pow(2, -F_bias);
    double res_bias = pow(2, -F_bias);

    cout << "--- bias_t: ac_fixed<24, 12, true> ---" << endl;
    cout << "  Total bits (W):      " << W_bias << endl;
    cout << "  Integer bits (I):    " << I_bias << endl;
    cout << "  Fractional bits (F): " << F_bias << endl;
    cout << "  MIN value:           " << min_bias << endl;
    cout << "  MAX value:           " << max_bias << endl;
    cout << "  Resolution:          " << res_bias << " (2^-" << F_bias << ")" << endl;
    cout << endl;

    bias_t bias_max, bias_min;
    bias_max.set_val<AC_VAL_MAX>();
    bias_min.set_val<AC_VAL_MIN>();
    cout << "  Actual MAX (test):   " << bias_max.to_double() << endl;
    cout << "  Actual MIN (test):   " << bias_min.to_double() << endl;
    cout << endl;

    // ACC_P: ac_fixed<48, 24, true>
    int W_acc = 48, I_acc = 24, F_acc = W_acc - I_acc;
    double min_acc = -pow(2, I_acc - 1);
    double max_acc = pow(2, I_acc - 1) - pow(2, -F_acc);
    double res_acc = pow(2, -F_acc);

    cout << "--- acc_t (accumulator): ac_fixed<48, 24, true> ---" << endl;
    cout << "  Total bits (W):      " << W_acc << endl;
    cout << "  Integer bits (I):    " << I_acc << endl;
    cout << "  Fractional bits (F): " << F_acc << endl;
    cout << "  MIN value:           " << min_acc << endl;
    cout << "  MAX value:           " << max_acc << endl;
    cout << "  Resolution:          " << res_acc << " (2^-" << F_acc << ")" << endl;
    cout << endl;

    acc_t acc_max, acc_min;
    acc_max.set_val<AC_VAL_MAX>();
    acc_min.set_val<AC_VAL_MIN>();
    cout << "  Actual MAX (test):   " << acc_max.to_double() << endl;
    cout << "  Actual MIN (test):   " << acc_min.to_double() << endl;
    cout << endl;

    // =========================================================================
    // Summary Table
    // =========================================================================
    cout << "=======================================================" << endl;
    cout << "                    SUMMARY TABLE" << endl;
    cout << "=======================================================" << endl;
    cout << setw(12) << "Type" << setw(10) << "W" << setw(6) << "I" 
         << setw(8) << "F" << setw(16) << "MIN" << setw(16) << "MAX" 
         << setw(14) << "Resolution" << endl;
    cout << string(72, '-') << endl;
    cout << setw(12) << "image_t"  << setw(10) << W_img  << setw(6) << I_img  
         << setw(8) << F_img  << setw(16) << min_img  << setw(16) << max_img  
         << setw(14) << res_img << endl;
    cout << setw(12) << "kernel_t" << setw(10) << W_wgt  << setw(6) << I_wgt  
         << setw(8) << F_wgt  << setw(16) << min_wgt  << setw(16) << max_wgt  
         << setw(14) << res_wgt << endl;
    cout << setw(12) << "bias_t"   << setw(10) << W_bias << setw(6) << I_bias 
         << setw(8) << F_bias << setw(16) << min_bias << setw(16) << max_bias 
         << setw(14) << res_bias << endl;
    cout << setw(12) << "acc_t"    << setw(10) << W_acc  << setw(6) << I_acc  
         << setw(8) << F_acc  << setw(16) << min_acc  << setw(16) << max_acc  
         << setw(14) << res_acc << endl;
    cout << endl;

    // =========================================================================
    // Multiplication Analysis (bit growth)
    // =========================================================================
    cout << "=======================================================" << endl;
    cout << "         MULTIPLICATION BIT GROWTH ANALYSIS" << endl;
    cout << "=======================================================" << endl;
    cout << endl;

    cout << "image_t * kernel_t multiplication:" << endl;
    cout << "  image_t:   W=" << W_img << ", I=" << I_img << endl;
    cout << "  kernel_t:  W=" << W_wgt << ", I=" << I_wgt << endl;
    cout << "  Product needs: W=" << (W_img + W_wgt) << ", I=" << (I_img + I_wgt) << endl;
    cout << "  acc_t has:     W=" << W_acc << ", I=" << I_acc << endl;
    
    if (W_acc >= W_img + W_wgt && I_acc >= I_img + I_wgt) {
        cout << "  Status: OK - acc_t can hold one product without overflow" << endl;
    } else {
        cout << "  Status: WARNING - acc_t may not hold full precision" << endl;
    }
    cout << endl;

    // =========================================================================
    // Convolution Accumulation Analysis
    // =========================================================================
    cout << "=======================================================" << endl;
    cout << "       CONVOLUTION ACCUMULATION ANALYSIS" << endl;
    cout << "=======================================================" << endl;
    cout << endl;

    // 3x3 conv with 3 input channels = 27 MACs, but let's consider worst case
    // Conv1: 3x3x3 = 27 MACs (3 input channels)
    // Conv2: 3x3x64 = 576 MACs
    // Conv3: 3x3x32 = 288 MACs

    cout << "Worst case: all max values multiplied and summed" << endl;
    cout << endl;

    // Conv1: 3x3 kernel, 3 input channels = 27 multiplications
    double worst_product = max_img * max_wgt;
    int num_macs_conv1 = 3 * 3 * 3;  // 3x3 kernel, 3 channels
    double worst_sum_conv1 = worst_product * num_macs_conv1;

    cout << "Conv1 (3x3x3 = 27 MACs):" << endl;
    cout << "  Max single product: " << max_img << " * " << max_wgt << " = " << worst_product << endl;
    cout << "  Worst sum (27 MACs): " << worst_sum_conv1 << endl;
    cout << "  acc_t MAX: " << max_acc << endl;
    if (worst_sum_conv1 <= max_acc) {
        cout << "  Status: OK - No overflow" << endl;
    } else {
        cout << "  Status: OVERFLOW RISK!" << endl;
    }
    cout << endl;

    // Conv2: 3x3 kernel, 64 input channels = 576 multiplications
    int num_macs_conv2 = 3 * 3 * 64;
    double worst_sum_conv2 = worst_product * num_macs_conv2;

    cout << "Conv2 (3x3x64 = 576 MACs):" << endl;
    cout << "  Worst sum (576 MACs): " << worst_sum_conv2 << endl;
    cout << "  acc_t MAX: " << max_acc << endl;
    if (worst_sum_conv2 <= max_acc) {
        cout << "  Status: OK - No overflow" << endl;
    } else {
        cout << "  Status: OVERFLOW RISK!" << endl;
        cout << "  Need extra integer bits: " << ceil(log2(worst_sum_conv2 / max_acc)) << endl;
    }
    cout << endl;

    // Conv3: 3x3 kernel, 32 input channels = 288 multiplications
    int num_macs_conv3 = 3 * 3 * 32;
    double worst_sum_conv3 = worst_product * num_macs_conv3;

    cout << "Conv3 (3x3x32 = 288 MACs):" << endl;
    cout << "  Worst sum (288 MACs): " << worst_sum_conv3 << endl;
    cout << "  acc_t MAX: " << max_acc << endl;
    if (worst_sum_conv3 <= max_acc) {
        cout << "  Status: OK - No overflow" << endl;
    } else {
        cout << "  Status: OVERFLOW RISK!" << endl;
        cout << "  Need extra integer bits: " << ceil(log2(worst_sum_conv3 / max_acc)) << endl;
    }
    cout << endl;

    // =========================================================================
    // Practical Test with actual types
    // =========================================================================
    cout << "=======================================================" << endl;
    cout << "            PRACTICAL OVERFLOW TEST" << endl;
    cout << "=======================================================" << endl;
    cout << endl;

    // Test Conv1 scenario
    image_t test_img = img_max;
    kernel_t test_wgt = wgt_max;
    acc_t test_acc = 0;

    cout << "Testing Conv1 (27 MACs with max values):" << endl;
    for (int i = 0; i < 27; i++) {
        test_acc += test_img * test_wgt;
    }
    cout << "  Expected: " << (img_max.to_double() * wgt_max.to_double() * 27) << endl;
    cout << "  Actual:   " << test_acc.to_double() << endl;
    if (fabs(test_acc.to_double() - (img_max.to_double() * wgt_max.to_double() * 27)) < 0.01) {
        cout << "  Status: OK" << endl;
    } else {
        cout << "  Status: OVERFLOW DETECTED!" << endl;
    }
    cout << endl;

    // Test Conv2 scenario
    test_acc = 0;
    cout << "Testing Conv2 (576 MACs with max values):" << endl;
    for (int i = 0; i < 576; i++) {
        test_acc += test_img * test_wgt;
    }
    cout << "  Expected: " << (img_max.to_double() * wgt_max.to_double() * 576) << endl;
    cout << "  Actual:   " << test_acc.to_double() << endl;
    if (fabs(test_acc.to_double() - (img_max.to_double() * wgt_max.to_double() * 576)) < 1.0) {
        cout << "  Status: OK" << endl;
    } else {
        cout << "  Status: OVERFLOW DETECTED!" << endl;
    }
    cout << endl;

    cout << "=======================================================" << endl;
    cout << "                    ANALYSIS COMPLETE" << endl;
    cout << "=======================================================" << endl;

    return 0;
}

