/************************************************************************/
/*																		*/
/*	main.c	--	ZYBO_CAMERA						*/
/*																		*/
/************************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */


#include "IMX219_camera.h"

/* ------------------------------------------------------------ */
/*				Global Variables								*/
/* ------------------------------------------------------------ */

/*
 * XPAR redefines
 */

#define IIC_SCLK_RATE		100000

void IMX219_InitI2C(XIicPs *IIc, int DeviceId )
{
  i2c_InitI2C(IIc, DeviceId, XIICPS_7_BIT_ADDR_OPTION);
}

void IMX219_WriteRegister(XIicPs *IIc, u16 RegAddr, u8 RegisterValue)
{
   i2c_16_8_WriteRegister(IIc, IMX219_DEVICE_WRITE_ADDRESS, RegAddr,  RegisterValue);
}

u8 IMX219_ReadRegister(XIicPs *IIc, u16 RegAddr)
{
  return i2c_16_8_ReadRegister(IIc, IMX219_DEVICE_READ_ADDRESS, IMX219_DEVICE_WRITE_ADDRESS, RegAddr);
}


void IMX219_Config(XIicPs *IIc, IMX219_cam_reg IMX219_config[], int IMX219_config_n)
{
  i2c_16_8_Config(IIc, IMX219_DEVICE_READ_ADDRESS, IMX219_DEVICE_WRITE_ADDRESS, IMX219_config, IMX219_config_n);
}

/* Lit les registre et réécrit les bits du mask tels quels */
void IMX219_Config_rw(XIicPs *IIc, IMX219_cam_reg_rw IMX219_config[], int IMX219_config_n)
{
  i2c_rw_16_8_Config(IIc, IMX219_DEVICE_READ_ADDRESS, IMX219_DEVICE_WRITE_ADDRESS, IMX219_config, IMX219_config_n);

}

int IMX219_Interactive(XIicPs *IIc, IMX219_cam_reg IMX219_config[], int IMX219_config_n)
{
  return  i2c_reg_16_8_Interactive(IIc, IMX219_DEVICE_READ_ADDRESS, IMX219_DEVICE_WRITE_ADDRESS, IMX219_config, IMX219_config_n);
}
