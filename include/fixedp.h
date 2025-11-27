#ifndef FIXEDP_H
#define FIXEDP_H

#include <ac_fixed.h>

using namespace std;

// --- Définition des TYPES (et non des variables) ---

// Type pour les pixels et poids (32 bits dont 16 entiers)
//image
typedef ac_fixed<64, 16, true> image_t;
//kernel
typedef ac_fixed<64, 16, true> kernel_t;
//bias
typedef ac_fixed<64, 16, true> bias_t;

//accumulateur
typedef ac_fixed<106, 74, true> acc_t;

//out image
typedef ac_fixed<64, 16, true> out_t;

//full connect
typedef ac_fixed<64, 16, true> full_conn_weigh_t;
#endif // FIXEDP_H
