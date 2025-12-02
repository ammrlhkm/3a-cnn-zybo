
// Include files for data types
#include "math.h"
#include <fstream>
#include <iostream>
#include <iomanip>
using namespace std ;
#include "mc_scverify.h"
#include "ac_fixed.h"
#include "ImgProcTest.h"

/* Pour  Compilation et exécution sur PC */

#ifndef CCS_MAIN
#define CCS_MAIN int main
#define CCS_DESIGN(d) d
#define CCS_RETURN(a)  return a
#endif


CCS_MAIN(int argc, char **argv) {

  ifstream simg_in("/tima/smancini/Catapult/CC_demo/ImgProcTest/img_in.pgm");
  char  type[128], tmp[128];
  int sx, sy;
  ac_fixed<DATA_WIDTH,DATA_WIDTH,false,AC_RND_INF,AC_SAT> img_in[IMG_SIZE];
  ac_fixed<DATA_WIDTH,DATA_WIDTH,false,AC_RND_INF,AC_SAT> img_out[IMG_SIZE];
  printf( "Start verification ImgProcTest\n");
  /*
    Lecture fichier entree
  */
  if (simg_in.is_open()) printf("file opened\n");
  simg_in.getline(type, 128);
  simg_in.getline(tmp, 128);
  while (tmp[0]== '#') simg_in.getline(tmp, 128);
  sscanf(tmp, "%d %d\n", &sx, &sy);	
  printf( "%d %d\n", sx, sy);
  int level;
  simg_in>>level;
  int data;
  for(int i=0; i<sx*sy;i++)
    {   
      simg_in >> data;
      img_in[i]=data; 
    }
  /* Execute traitement */
  printf( "Start verification ImgProcTest\n");
  CCS_DESIGN(ImgProcTest)(img_in, img_out) ;


  /*
    Fichier sortie
  */
  ofstream simg_out("/tima/smancini/Catapult/CC_demo/ImgProcTest/img_out.pgm");
  simg_out << "P2" << endl;
  simg_out << IMG_SIZE_0<< " ";
  simg_out <<  IMG_SIZE_1<< endl;
  simg_out <<  255 << endl;
  for(int i=0; i<sx*sy;i++)
    {
      simg_out <<  img_out[i].to_int() << endl; 
    }
  CCS_RETURN(0);
}
  
