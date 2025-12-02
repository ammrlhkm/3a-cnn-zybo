
// Include files for data types
#include "math.h"
#include <fstream>
#include <iostream>
#include <iomanip>
using namespace std ;
#include "mc_scverify.h"
#include "ac_fixed.h"
#include "DispProcTest.h"

/* Pour  Compilation et exécution sur PC */
#ifndef CCS_MAIN
#define CCS_MAIN int main
#define CCS_DESIGN(d) d
#endif

CCS_MAIN(int argc, char **argv) {

  ifstream simg_in("img_in.pgm");
  char  type[128], tmp[128];
  int sx=IMG_SIZE_0, sy=IMG_SIZE_1;
  ac_fixed<DATA_WIDTH,DATA_WIDTH,false,AC_RND_INF,AC_SAT> img_in[IMG_SIZE];
  ac_fixed<DATA_WIDTH,DATA_WIDTH,false,AC_RND_INF,AC_SAT> img_out[IMG_SIZE];

 
  /* Execute traitement */
  printf( "Start verification DispProcTest\n");
  CCS_DESIGN(DispProcTest)(img_out) ;

  /*
    Fichier sortie
  */
  ofstream simg_out("img_out.pgm");
  simg_out << "P2" << endl;
  simg_out << IMG_SIZE_0<< " ";
  simg_out <<  IMG_SIZE_1<< endl;
  simg_out <<  255 << endl;
  for(int i=0; i<sx*sy;i++)
    {
      simg_out <<  img_out[i].to_int() << endl; 
    }

}
  
