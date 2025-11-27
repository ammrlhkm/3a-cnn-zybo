#ifndef FIXEDP_H
#define FIXEDP_H

#include <ac_fixed.h>

using namespace std;

// --- Définition des TYPES (et non des variables) ---

// Type pour les pixels et poids (32 bits dont 16 entiers)
//image
typedef ac_fixed<32, 16, true> image_t;
//kernel
typedef ac_fixed<32, 16, true> kernel_t;
//bias
typedef ac_fixed<32, 16, true> bias_t;
//out image
typedef ac_fixed<32, 16, true> out_image_t;
//accumulateur
typedef ac_fixed<106, 74, true> acc_t;

#endif // FIXEDP_H
