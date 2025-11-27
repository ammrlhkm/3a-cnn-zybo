#include "cnn_fixed.h"

//Performs a 3x3 convolution (SAME padding),
//adds bias, applies ReLU, and returns output feature maps.

template<int H, int W, int C_IN, int C_OUT, int K_SIZE>
void conv2d_relu(
    image_t img[H][W][C_IN],
    kernel_t kernel[K_SIZE][K_SIZE][C_IN][C_OUT],
    bias_t bias[C_OUT],
    out_image_t output[H][W][C_OUT]
){
    const int pad = K_SIZE / 2;

    // L1: Boucle des Lignes de Sortie (H)
    ROW_LOOP: for (int r = 0; r < H; r++) {

        // L2: Boucle des Colonnes de Sortie (W)
        // **PIPELINE:** C'est la boucle principale pour la performance spatiale.
        // On vise II=1 (un nouveau pixel est traité chaque cycle d'horloge).
        #pragma HLS PIPELINE II=1
        COL_LOOP: for (int c = 0; c < W; c++) {

            // L3: Boucle des Filtres de Sortie (C_out)
            FILTER_LOOP: for (int f = 0; f < C_OUT; f++) {

                acc_t sum = bias[f];

                // L4: Boucle de la hauteur du Noyau
                // **UNROLL:** On déplie cette boucle (et la suivante) pour paralléliser
                // toutes les multiplications du noyau (ex: 3x3=9 MACC en parallèle).
                #pragma HLS UNROLL
                K_ROW_LOOP: for (int ki = 0; ki < K_SIZE; ki++) {

                    // L5: Boucle de la largeur du Noyau
                    #pragma HLS UNROLL
                    K_COL_LOOP: for (int kj = 0; kj < K_SIZE; kj++) {

                        // L6: Boucle des Canaux d'Entrée
                        // Cette boucle peut rester séquentielle ou être pipelinée,
                        // selon la taille de C_IN et les ressources DSP disponibles.
                        CH_IN_LOOP: for (int ch = 0; ch < C_IN; ch++) {

                            int in_r = r + ki - pad;
                            int in_c = c + kj - pad;

                            if (in_r >= 0 && in_r < H && in_c >= 0 && in_c < W) {
                                sum += img[in_r][in_c][ch] * kernel[ki][kj][ch][f];
                            }
                        }
                    }
                }

                // Activation ReLU
                if (sum < 0) {
                    output[r][c][f] = 0;
                } else {
                    output[r][c][f] = (out_image_t)sum;
                }
            }
        }
    }
}
