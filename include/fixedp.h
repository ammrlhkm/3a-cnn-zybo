#ifndef FIXEDP_H
#define FIXEDP_H

#include <ac_fixed.h>

using namespace std;

// --- Définition des TYPES (et non des variables) ---

// Type pour les pixels et poids (32 bits dont 16 entiers)
//image
typedef ac_fixed<14, 6, true> image_t;
typedef ac_fixed<14, 6, true> kernel_t;
typedef ac_fixed<14, 6, true> bias_t;
typedef ac_fixed<14, 6, true> out_t;

// Accumulateur : Doit être grand pour sommer 576 multiplications sans déborder.
// W=32, I=16 -> Range [ -32766, +32766 ]
typedef ac_fixed<28, 12, true> acc_t;
#endif // FIXEDP_H
