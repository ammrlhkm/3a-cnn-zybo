

#include "IMX219_camera.h"

extern IMX219_cam_reg IMX219_common[];
extern int IMX219_common_n;
extern IMX219_cam_reg IMX219_640_480_15[];
extern int IMX219_640_480_15_n;

XIicPs IMX219_IIc;


int IMX219_main_640_480_15(int interactive)
{
  
  IMX219_InitI2C(&IMX219_IIc, XPAR_XIICPS_0_DEVICE_ID);

  IMX219_WriteRegister(&IMX219_IIc, 0x0103, 0x01);
  usleep(100);
  // Stop streaming
  IMX219_WriteRegister(&IMX219_IIc, 0x0100, 0x00);
  // We ask a camera reset via SCCB
  usleep(100);
  IMX219_Config(&IMX219_IIc, IMX219_640_480_15, IMX219_640_480_15_n);
  //IMX219_Config(&IIc, IMX219_640_480_15, IMX219_640_480_15_n);

  xil_printf("Camera is now configured for IMX219_640_480_15\n\r");

  //IMX219_Config(IIc, sensor_640_480_15, size_sensor_640_480_15);
  //xil_printf("Camera is now configured for 320x240 RAW10 format\n\r");
      
  IMX219_WriteRegister(&IMX219_IIc, 0x0100, 0x01);
  xil_printf("Config camera  OK \n\r");
  if (interactive)
    IMX219_Interactive(&IMX219_IIc, IMX219_640_480_15, IMX219_640_480_15_n);
}
int IMX219_Get_Analog_Gain(void) {
  return IMX219_ReadRegister(&IMX219_IIc, 0x0157);
}
int IMX219_Set_Analog_Gain(int gain) {
  IMX219_cam_reg IMX219_analog_gain = {
                                       {0x0157, 0x00},
  };
  IMX219_WriteRegister(&IMX219_IIc, 0x0157, (gain & 0xFF));
  return 0;
}
int IMX219_Get_Digital_Gain(void) {
  u8 low=  IMX219_ReadRegister(&IMX219_IIc, 0x0159);
  u8 high=  IMX219_ReadRegister(&IMX219_IIc, 0x0158);
  u32 gain= (high<<8) + (low & 0xFF);
  return gain;
}
int IMX219_Set_Digital_Gain(int gain) {
  IMX219_cam_reg IMX219_digital_gain = {
                                        {0x0158, 0x08}, {0x0159, 0x00},
  };
  IMX219_WriteRegister(&IMX219_IIc, 0x0159, (gain & 0xFF));
  IMX219_WriteRegister(&IMX219_IIc, 0x0158, ((gain>>8) & 0xF));
  return 0;
}


int IMX219_Get_Integration_Time(void) {
  u8 low=  IMX219_ReadRegister(&IMX219_IIc, 0x015B);
  u8 high=  IMX219_ReadRegister(&IMX219_IIc, 0x015A);
  u32 time= (high<<8) + (low & 0xFF);
  return time;
}
int IMX219_Set_Integration_Time(int time) { // 0x800
  IMX219_cam_reg IMX219_integration_time = {
                                            {0x015A, 0x08}, {0x015B, 0x00},
  };
  IMX219_WriteRegister(&IMX219_IIc, 0x015B, (time & 0xFF));
  IMX219_WriteRegister(&IMX219_IIc, 0x015A, ((time>>8) & 0xFF));
  return 0;
}

