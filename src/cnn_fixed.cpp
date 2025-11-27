#include "cnn_fixed.h"

// Note: La fonction max(0.0, sum) est remplacée par le ternaire (sum > 0 ? sum : 0)
// pour la Virgule Fixe et le HLS.

// =========================================================================
// 1. CONV2D
// =========================================================================
template <int H, int W, int Cin, int Cout>
void conv2d(const image_t image[H][W][Cin], 
            const kernel_t kernel[3][3][Cin][Cout], 
            const bias_t bias[Cout], 
            out_t output[H][W][Cout]) {
    
    // Utilisation d'un tampon (buffer) en Virgule Fixe
    image_t padded_image[H + 2][W + 2][Cin] = {0};

    // L1: Préparation du Padding
    PAD_H: for (int h = 0; h < H; ++h) {
        PAD_W: for (int w = 0; w < W; ++w) {
            PAD_C: for (int c = 0; c < Cin; ++c) {
                padded_image[h + 1][w + 1][c] = image[h][w][c];
            }
        }
    }

    // L2: Convolution
    F_LOOP: for (int f = 0; f < Cout; ++f) {
        H_LOOP: for (int i = 0; i < H; ++i) {
            
            // **HLS PIPELINE** : Clé pour la performance spatiale
            
            W_LOOP: for (int j = 0; j < W; ++j) {
                
                // Accumulateur en haute précision
                acc_t sum = bias[f]; 

                // Convolve with 3x3 kernel
                C_IN_LOOP: for (int c = 0; c < Cin; ++c) {
                    
                    // **HLS UNROLL** : Paralléliser les 3x3 MACC
                    
                    KR_LOOP: for (int kr = 0; kr < 3; ++kr) {
                     
                        KC_LOOP: for (int kc = 0; kc < 3; ++kc) {
                            sum += padded_image[i+kr][j+kc][c] * kernel[kr][kc][c][f];
                        }
                    }
                }
                
                // Apply ReLU activation: max(0, sum)
                if (sum > 0) {
                    output[i][j][f] = (out_t)sum; // Conversion du large acc_t vers out_t
                } else {
                    output[i][j][f] = 0;
                }
            }
        }
    }
}

// =========================================================================
// 2. MAXPOOLING (Fonction générique pour réutilisation)
// =========================================================================
template <int H_IN, int W_IN, int CH, int POOL_S, int STRIDE, int H_OUT, int W_OUT>
void maxpool_generic(const image_t input[H_IN][W_IN][CH], out_t output[H_OUT][W_OUT][CH]) {
    
    C_POOL_LOOP: for (int c = 0; c < CH; c++) {
        R_POOL_OUT: for (int i = 0; i < H_OUT; i++) {
            
            // **HLS PIPELINE**
         
            W_POOL_OUT: for (int j = 0; j < W_OUT; j++) {
                int h_start = i * STRIDE;
                int w_start = j * STRIDE;
                
                out_t max_val = input[h_start][w_start][c];
                
                // **HLS UNROLL** : Paralléliser la recherche du maximum
                POOL_KH: for (int kh = 0; kh < POOL_S && (h_start + kh) < H_IN; kh++) {
                  
                    POOL_KW: for (int kw = 0; kw < POOL_S && (w_start + kw) < W_IN; kw++) {
                        out_t val = input[h_start + kh][w_start + kw][c];
                        if (val > max_val) {
                            max_val = val;
                        }
                    }
                }
                output[i][j][c] = max_val;
            }
        }
    }
}

// Fonctions spécifiques appelant la fonction générique
void maxpool_24to12(const image_t input[24][24][64], out_t output[12][12][64]) {
    maxpool_generic<24, 24, 64, 3, 2, 12, 12>(input, output);
}
void maxpool_12to6(const image_t input[12][12][32], out_t output[6][6][32]) {
    maxpool_generic<12, 12, 32, 3, 2, 6, 6>(input, output);
}
void maxpool_6to3(const image_t input[6][6][20], out_t output[3][3][20]) {
    maxpool_generic<6, 6, 20, 3, 2, 3, 3>(input, output);
}
// =========================================================================
// 3. SOFTMAX
// =========================================================================
void softmax(const image_t input[10], out_t output[10]) {
    
    double max_val = input[0].to_double(); 
    
    MAX_LOOP: for (int i = 1; i < 10; i++) {
        if (input[i].to_double() > max_val) {
            max_val = input[i].to_double();
        }
    }
    
    // Compute exp(x - max) and sum
    out_t exp_sum = 0;
    out_t exp_vals[10];
    EXP_LOOP: for (int i = 0; i < 10; i++) {
        
        double exp_arg = input[i].to_double() - max_val;
        double exp_result = exp(exp_arg);
        
        // CORRECTION (1) : Décomposition en une variable temporaire const 
        // pour clarifier le transfert du résultat du cast.
        const out_t temp_val_result = (out_t)exp_result; 
        
        // L'affectation simple d'un objet ac_fixed à un autre.
        // C'est la meilleure pratique C++ pour ce cas malgré le warning.
        exp_vals[i] = temp_val_result; // Ligne 136
        
        // Accumulation
        exp_sum += exp_vals[i];
    }
    
    // Normalize
    NORM_LOOP: for (int i = 0; i < 10; i++) {
        
        // CORRECTION (2) : Calcul du résultat de la division dans une variable 
        // temporaire explicite pour éviter l'affectation implicite dépréciée
        // du résultat de l'opérateur.
        out_t division_result = exp_vals[i] / exp_sum; 
        
        output[i] = division_result; 
    }
}

// =========================================================================
// 4. FORWARD FUNCTIONS (Adaptation des signatures)
// =========================================================================

void conv1_forward(const PPMImage& input, out_t output[24][24][64]) {
    // Copy flat input data into 3D array format (Virgule Fixe)
    image_t input_3d[24][24][3];
    
    // **HLS PIPELINE** pour la copie
   
    H_COPY: for (int h = 0; h < 24; h++) {
        W_COPY: for (int w = 0; w < 24; w++) {
            C_COPY: for (int c = 0; c < 3; c++) {
                // Conversion de la valeur (double/float) de PPMImage vers le type fixed-point
                input_3d[h][w][c] = (image_t)input.at(h, w, c);
            }
        }
    }
    
    // Call conv2d with fixed-point arrays
    conv2d<24, 24, 3, 64>(input_3d, CONV1_W, CONV1_B, output);
}

void maxpool1_forward(const image_t input[24][24][64], out_t output[12][12][64]) {
    maxpool_24to12(input, output);
}

void conv2_forward(const image_t input[12][12][64], out_t output[12][12][32]) {
    conv2d<12, 12, 64, 32>(input, CONV2_W, CONV2_B, output);
}

void maxpool2_forward(const image_t input[12][12][32], out_t output[6][6][32]) {
    maxpool_12to6(input, output);
}

void conv3_forward(const image_t input[6][6][32], out_t output[6][6][20]) {
    conv2d<6, 6, 32, 20>(input, CONV3_W, CONV3_B, output);
}

void maxpool3_forward(const image_t input[6][6][20], out_t output[3][3][20]) {
    maxpool_6to3(input, output);
}

void fc_forward(const image_t input[3][3][20], out_t output[10]) {
    // Flatten spatial dimensions: 3*3*20 = 180 features
    out_t flattened[180];
    
    // **HLS PIPELINE** pour le Flatten
    
    int idx = 0;
    for (int h = 0; h < 3; h++) {
        for (int w = 0; w < 3; w++) {
            for (int c = 0; c < 20; c++) {
                flattened[idx++] = input[h][w][c];
            }
        }
    }
    
    // Fully connected: output[i] = sum(flattened[j] * LOCAL3_W[j][i]) + LOCAL3_B[i]
    OUT_NEURON_LOOP: for (int i = 0; i < 10; i++) {
        acc_t sum = LOCAL3_B[i];
        
        // **HLS PIPELINE** pour l'accumulation
    
        IN_NEURON_LOOP: for (int j = 0; j < 180; j++) {
            sum += flattened[j] * LOCAL3_W[j][i];
        }
        output[i] = (out_t)sum;
    }
}

void softmax_forward(const image_t input[10], out_t output[10]) {
    softmax(input, output);
}

// Complete forward pass through entire network
void cnn_forward(const PPMImage& input, out_t output[10]) {
    // Layer 1: Conv + Pool
    out_t conv1_out[24][24][64];
    conv1_forward(input, conv1_out);
    out_t pool1_out[12][12][64];
    maxpool1_forward(conv1_out, pool1_out);
    
    // Layer 2: Conv + Pool
    out_t conv2_out[12][12][32];
    conv2_forward(pool1_out, conv2_out);
    out_t pool2_out[6][6][32];
    maxpool2_forward(conv2_out, pool2_out);
    
    // Layer 3: Conv + Pool
    out_t conv3_out[6][6][20];
    conv3_forward(pool2_out, conv3_out);
    out_t pool3_out[3][3][20];
    maxpool3_forward(conv3_out, pool3_out);
    
    // Fully connected
    out_t logits[10];
    fc_forward(pool3_out, logits);
    
    // Softmax
    softmax_forward(logits, output);
}