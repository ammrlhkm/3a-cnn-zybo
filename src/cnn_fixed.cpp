#include "cnn_fixed.h"

// =========================================================================
// 1. CONVOLUTION GENÉRIQUE 
// =========================================================================
template <int H, int W, int Cin, int Cout>
void conv2d(const image_t image[H][W][Cin], 
            const kernel_t kernel[3][3][Cin][Cout], 
            const bias_t bias[Cout], 
            out_t output[H][W][Cout]) 
{
    // MATCH REF: La référence crée une image "padded_image[H+2][W+2]".
    // En HLS, on évite de copier toute l'image. On gère le padding par index.
    // Le noyau est 3x3, donc le padding est de 1 pixel de chaque côté.

    F_LOOP: for (int f = 0; f < Cout; ++f) {
        R_LOOP: for (int i = 0; i < H; ++i) {
            C_LOOP: for (int j = 0; j < W; ++j) {
                #pragma HLS PIPELINE II=1
                
                // 1. Initialisation avec le biais (MATCH REF)
                // Utilisation de acc_t pour éviter l'overflow pendant la somme
                acc_t sum = bias[f]; 

                // 2. Convolution 3x3
                KR_LOOP: for (int kr = 0; kr < 3; ++kr) {
                    KC_LOOP: for (int kc = 0; kc < 3; ++kc) {
                        CH_LOOP: for (int c = 0; c < Cin; ++c) {
                            
                            // Calcul de l'index sur l'image d'entrée correspondant au padding SAME
                            // i, j sont les coordonnées de sortie.
                            // kr, kc vont de 0 à 2.
                            // -1 est le décalage pour centrer le noyau 3x3 (Padding=1)
                            int r_in = i + kr - 1;
                            int c_in = j + kc - 1;

                            // Simulation du Zero-Padding (MATCH REF: padded_image=0 aux bords)
                            out_t pixel_val;
                            if (r_in >= 0 && r_in < H && c_in >= 0 && c_in < W) {
                                pixel_val = image[r_in][c_in][c];
                            } else {
                                pixel_val = 0;
                            }

                            // MAC (Multiply-Accumulate)
                            sum += pixel_val * kernel[kr][kc][c][f];
                        }
                    }
                }
                
                // 3. Activation ReLU (MATCH REF: max(0.0, sum))
                if (sum < 0) {
                    output[i][j][f] = 0;
                } else {
                    // Cast explicite de l'accumulateur large vers le type de sortie
                    output[i][j][f] = (out_t)sum;
                }
            }
        }
    }
}

// =========================================================================
// 2. MAXPOOLING 
// =========================================================================
// Note: Votre ref utilise pool_size=3 et stride=2 (Overlapping pooling)
// C'est inhabituel (souvent 2x2 s=2), mais je respecte VOTRE code ref.

template <int H_IN, int W_IN, int CH, int H_OUT, int W_OUT>
void maxpool_generic(const image_t input[H_IN][W_IN][CH], out_t output[H_OUT][W_OUT][CH]) {
    const int pool_size = 3; 
    const int stride = 2;

    CH_LOOP: for (int c = 0; c < CH; c++) {
        R_LOOP: for (int i = 0; i < H_OUT; i++) {
            C_LOOP: for (int j = 0; j < W_OUT; j++) {
                
                int h_start = i * stride;
                int w_start = j * stride;
                
                // Initialisation avec le premier pixel de la fenêtre
                out_t max_val = input[h_start][w_start][c];
                
                // Parcours de la fenêtre 3x3
                PKR_LOOP: for (int kh = 0; kh < pool_size; kh++) {
                    PKC_LOOP: for (int kw = 0; kw < pool_size; kw++) {
                        
                        int cur_h = h_start + kh;
                        int cur_w = w_start + kw;

                        // Vérification des bornes (MATCH REF: loop condition)
                        if (cur_h < H_IN && cur_w < W_IN) {
                            out_t val = input[cur_h][cur_w][c];
                            if (val > max_val) {
                                max_val = val;
                            }
                        }
                    }
                }
                output[i][j][c] = max_val;
            }
        }
    }
}

// Wrappers spécifiques
void maxpool_24to12(const image_t input[24][24][64], out_t output[12][12][64]) {
    maxpool_generic<24, 24, 64, 12, 12>(input, output);
}
void maxpool_12to6(const image_t input[12][12][32], out_t output[6][6][32]) {
    maxpool_generic<12, 12, 32, 6, 6>(input, output);
}
void maxpool_6to3(const image_t input[6][6][20], out_t output[3][3][20]) {
    maxpool_generic<6, 6, 20, 3, 3>(input, output);
}

// =========================================================================
// 3. FULLY CONNECTED 
// =========================================================================
// C'est souvent ici que ça casse. L'ordre des boucles doit correspondre 
// exactement à la façon dont LOCAL3_W a été généré.

void fc_forward(const image_t input[3][3][20], out_t output[10]) {
    
    // 1. Flattening
    // MATCH REF: for h, for w, for c
    image_t flattened[180];
    int idx = 0;
    
    FLAT_H: for (int h = 0; h < 3; h++) {
        FLAT_W: for (int w = 0; w < 3; w++) {
            FLAT_C: for (int c = 0; c < 20; c++) {
                flattened[idx++] = input[h][w][c];
            }
        }
    }

    // 2. Dense Layer (Matrix Mult)
    DENSE_L: for (int i = 0; i < 10; i++) {
        acc_t sum = LOCAL3_B[i]; // Init avec biais
        
        // Produit scalaire
        DENSE_DOT: for (int j = 0; j < 180; j++) {
            sum += flattened[j] * LOCAL3_W[j][i];
        }
        output[i] = (out_t)sum;
    }
}

// =========================================================================
// 4. SOFTMAX
// =========================================================================
void softmax(const image_t input[10], out_t output[10]) {
    // Utilisation de double pour l'exponentielle pour garantir la précision mathématique
    // puis reconversion en fixed-point.
    double max_val = input[0].to_double();
    for (int i = 1; i < 10; i++) {
        if (input[i].to_double() > max_val) max_val = input[i].to_double();
    }

    double sum_exp = 0.0;
    double exp_vals[10];

    for (int i = 0; i < 10; i++) {
        exp_vals[i] = std::exp(input[i].to_double() - max_val);
        sum_exp += exp_vals[i];
    }

    for (int i = 0; i < 10; i++) {
        output[i] = (out_t)(exp_vals[i] / sum_exp);
    }
}

// =========================================================================
// 5. CNN FORWARD 
// =========================================================================

// Wrapper Conv1 pour gérer l'entrée PPM
void conv1_forward(const PPMImage& input, out_t output[24][24][64]) {
    image_t img_buffer[24][24][3];
    
    // Conversion PPM (double/float) vers Fixed Point
    // MATCH REF ORDER: h, w, c
    for(int h=0; h<24; h++) {
        for(int w=0; w<24; w++) {
            for(int c=0; c<3; c++) {
                img_buffer[h][w][c] = (image_t)input.at(h, w, c);
            }
        }
    }
    
    conv2d<24, 24, 3, 64>(img_buffer, CONV1_W, CONV1_B, output);
}

void cnn_forward(const PPMImage& input, out_t output[10]) {
    // Buffers intermédiaires (statiques pour éviter l'allocation dynamique en HLS)
    // Note: En pure simulation C++, static n'est pas obligatoire mais aide.
    static out_t layer1_conv[24][24][64];
    static out_t layer1_pool[12][12][64];
    
    static out_t layer2_conv[12][12][32];
    static out_t layer2_pool[6][6][32];
    
    static out_t layer3_conv[6][6][20];
    static out_t layer3_pool[3][3][20];
    
    static out_t fc_output[10];

    // --- Layer 1 ---
    conv1_forward(input, layer1_conv);
    maxpool_24to12(layer1_conv, layer1_pool);

    // --- Layer 2 ---
    conv2d<12, 12, 64, 32>(layer1_pool, CONV2_W, CONV2_B, layer2_conv);
    maxpool_12to6(layer2_conv, layer2_pool);

    // --- Layer 3 ---
    conv2d<6, 6, 32, 20>(layer2_pool, CONV3_W, CONV3_B, layer3_conv);
    maxpool_6to3(layer3_conv, layer3_pool);

    // --- Fully Connected ---
    fc_forward(layer3_pool, fc_output);

    // --- Softmax ---
    softmax(fc_output, output);
}