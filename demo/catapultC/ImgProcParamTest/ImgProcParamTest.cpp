/*
 Demonstration d'unité de traitement
 Avec registres de configuration, entrée/sortie tableaux et sortie registres
*/

// Include files for data types
#include "ac_fixed.h"
#define DATA_WIDTH 8
#define IMG_SIZE_0 320
#define IMG_SIZE_1 240
#define IMG_SIZE IMG_SIZE_0*IMG_SIZE_1
// optional pragma to specify the top level of the design

#pragma hls_design top
void ImgProcParamTest (
                  ac_fixed<DATA_WIDTH,DATA_WIDTH, false, AC_RND_INF, AC_SAT> img_in[IMG_SIZE],
                  ac_fixed<DATA_WIDTH,DATA_WIDTH, false, AC_RND_INF, AC_SAT> img_out[IMG_SIZE],
                  ac_fixed<DATA_WIDTH,DATA_WIDTH, false, AC_RND_INF, AC_SAT> vlign_in[IMG_SIZE_1],
                  ac_fixed<DATA_WIDTH,DATA_WIDTH, false, AC_RND_INF, AC_SAT> &avg,
                  ac_int<DATA_WIDTH, false> &ctrl

)
{
  ac_fixed<DATA_WIDTH+17,DATA_WIDTH+17,false,AC_RND_INF,AC_SAT> average;
  
  average=0;
  // L'entree CTRL ne semble pas mise a jour a chaque fois
  // Tester le type d'entree pour que ce soit le cas....
  // Si, ca fonctionne avec une entree par reference &ctrl
 lx : for(int x=0; x < IMG_SIZE_0; x++)
    ly : for(int y=0; y < IMG_SIZE_1; y++)
      {
        if ((ctrl[0]==1) && (x<y)) 
          img_out[x+y*IMG_SIZE_0]=255- img_in[x+y*IMG_SIZE_0];
        else
          img_out[x+y*IMG_SIZE_0]=img_in[x+y*IMG_SIZE_0];
        average+= img_in[x+y*IMG_SIZE_0];
        if (x == IMG_SIZE_0/2)
          img_out[x+y*IMG_SIZE_0]=  vlign_in[y];
      }
  avg= average.slc<DATA_WIDTH>(17);
} 

