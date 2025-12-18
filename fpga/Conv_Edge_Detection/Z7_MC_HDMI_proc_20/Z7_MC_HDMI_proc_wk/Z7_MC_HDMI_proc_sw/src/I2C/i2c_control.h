#ifndef I2C_CTRL_H
#define I2C_CTRL_H

#include "xparameters.h"
#include "xuartps.h"
#include "xiicps.h"
#include "xiicps_hw.h"
#include "stdio.h"

typedef struct i2c_reg_16_8 {
  u16 reg;
  u8 val; 
} i2c_reg_16_8;

typedef struct i2c_reg_rw_16_8 {
    u16 reg;
    u8 mask, val; 
  } i2c_reg_rw_16_8;
/* mask : masque des bits a conserver tel quel : 1 => conserver 0 => remplacer*/

int i2c_reg_16_8_Interactive(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, i2c_reg_16_8 *cfg_def, int cfg_def_n);
void i2c_InitI2C(XIicPs *IIc, int DeviceId, u32 opt);
void i2c_16_8_WriteRegister(XIicPs *IIc, u32 dev_wr_addr, u16 RegAddr, u8 RegisterValue);
u8   i2c_16_8_ReadRegister(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, u16 RegAddr);
void i2c_16_8_Config(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, i2c_reg_16_8 cam_config[], int cam_config_n );
void i2c_rw_16_8_Config(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, i2c_reg_rw_16_8 cam_config[], int cam_config_n);


typedef struct i2c_reg_8_8 {
  u8 reg;
  u8 val;
} i2c_reg_8_8;

typedef struct i2c_reg_rw_8_8 {
    u8 reg;
    u8 mask, val;
  } i2c_reg_rw_8_8;
/* mask : masque des bits a conserver tel quel */

int i2c_reg_8_8_Interactive(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, i2c_reg_8_8 *cfg_def, int cfg_def_n);
void i2c_InitI2C(XIicPs *IIc, int DeviceId, u32 opt);
void i2c_8_8_WriteRegister(XIicPs *IIc, u32 dev_wr_addr, u16 RegAddr, u8 RegisterValue);
u8   i2c_8_8_ReadRegister(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, u16 RegAddr);
void i2c_8_8_Config(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, i2c_reg_8_8 cam_config[], int cam_config_n );
void i2c_rw_8_8_Config(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, i2c_reg_rw_8_8 cam_config[], int cam_config_n);


#endif
