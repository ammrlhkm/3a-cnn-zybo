
// Include files for data types
#include "DispProcTest.h"
#include "ac_fixed.h"
#define DATA_WIDTH 8
#define IMG_SIZE_0 320
#define IMG_SIZE_1 240
#define IMG_SIZE IMG_SIZE_0*IMG_SIZE_1
// optional pragma to specify the top level of the design
#pragma hls_design top
void DispProcTest (
                  ac_fixed<DATA_WIDTH,DATA_WIDTH,false,AC_RND_INF,AC_SAT> img_out[IMG_SIZE]
                  )
{
 lx : for(int x=0; x < IMG_SIZE_0; x++)
  ly : for(int y=0; y < IMG_SIZE_1; y++)
      {
          img_out[x+y*IMG_SIZE_0]=x+y;
      }
} 

