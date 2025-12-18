/************************************************************************/
/*																		*/
/*	main.c	--	ZYBO_CAMERA						*/
/*																		*/
/************************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */


#include "i2c_control.h"

/* ------------------------------------------------------------ */
/*				Global Variables								*/
/* ------------------------------------------------------------ */


#define IIC_SCLK_RATE		100000


/* ------------------------------------------------------------ */
/*				Procedure Definitions							*/
/* ------------------------------------------------------------ */

void i2c_InitI2C(XIicPs *IIc, int DeviceId, u32 opt )
{
  XIicPs_Config *Config;
  int Status;

  xil_printf("INIT_I2C\n\r");
  Config = XIicPs_LookupConfig(DeviceId);
  if (NULL == Config){
    xil_printf("LOOKUP_FAIL_I2C\n\r");
  }

  Status = XIicPs_CfgInitialize(IIc, Config, Config->BaseAddress); 
  if (Status != XST_SUCCESS){
    xil_printf("INIT_INSTANCE_FAIL_I2C\n\r");
  }
 // XIicPs_Reset(IIc);
  Status = XIicPs_SelfTest(IIc);
  if (Status != XST_SUCCESS){
    xil_printf("SELF_TEST_FAIL_I2C\n\r");
  }
  if (opt)
    {
    xil_printf("Set Option\n\r");
    Status = XIicPs_SetOptions(IIc, opt); //XIICPS_7_BIT_ADDR_OPTION
      if (Status != XST_SUCCESS){
        xil_printf("SET_OPTION_FAIL_I2C\n\r");
      }
    }
  XIicPs_SetSClk(IIc, IIC_SCLK_RATE); /* 100kHz */

}

void i2c_16_8_WriteRegister(XIicPs *IIc, u32 dev_wr_addr, u16 RegAddr, u8 RegisterValue)
{
  int Status;
  u8 SendBuffer[3];

  SendBuffer[0] = (RegAddr&0xFF00)>>8; // MSB first, according to the SCCB's datasheet
  SendBuffer[1] = RegAddr&0xFF;
  SendBuffer[2] = RegisterValue;

  Status = XIicPs_MasterSendPolled(IIc, SendBuffer, 3, dev_wr_addr);
  if (Status != XST_SUCCESS){
    xil_printf("IIC_SEND_FAIL\n\r");
  }

  /* Attente fin communication I2C */
  while (XIicPs_BusIsBusy(IIc)) {}
}

u8 i2c_16_8_ReadRegister(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, u16 RegAddr)
{
  int Status;
  u8 RecvBuffer[1]={0};
  u8 SendBuffer[2];

  SendBuffer[0]=(RegAddr&0xFF00)>>8; // MSB first, according to the SCCB's datasheet
  SendBuffer[1]=RegAddr;

  Status = XIicPs_MasterSendPolled(IIc, SendBuffer, 2,dev_wr_addr );
  if (Status != XST_SUCCESS){
    xil_printf("IIC_SEND_FAIL\n\r");
  }

  /* Attente fin communication I2C */
  while (XIicPs_BusIsBusy(IIc)) {}

  Status = XIicPs_MasterRecvPolled(IIc, RecvBuffer, 1, dev_read_addr);
  if (Status != XST_SUCCESS){
    xil_printf("IIC_RECEIVE_FAIL\n\r");
  }

  /* Attente fin communication I2C */
  while (XIicPs_BusIsBusy(IIc)) {}

  return RecvBuffer[0];
}


void i2c_16_8_Config(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, i2c_reg_16_8 reg_config[], int reg_config_n)
{
  u8 read_value = 0;
  volatile int cpt = 0;
  xil_printf("I2C 16_8b config %d\n\r", reg_config_n);
  
  /* Ecrit les registres une fois !*/
  for(cpt=0;cpt<reg_config_n;cpt++)
    i2c_16_8_WriteRegister(IIc, dev_wr_addr, reg_config[cpt].reg, reg_config[cpt].val);
  //for(cpt=0;cpt<reg_config_n;cpt++)
   // i2c_16_8_WriteRegister(IIc, dev_wr_addr, reg_config[cpt].reg, reg_config[cpt].val);
  
}

/* Lit les registre et reecrit les bits du mask tels quels */
void i2c_rw_16_8_Config(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, i2c_reg_rw_16_8 reg_config[], int reg_config_n)
{
  u8 read_value = 0;
  volatile int cpt = 0;
 
  for(cpt=0;cpt<reg_config_n;cpt++)
    {
      read_value = i2c_16_8_ReadRegister(IIc, dev_read_addr, dev_wr_addr, reg_config[cpt].reg );
      read_value = (read_value & reg_config[cpt].mask) | reg_config[cpt].val;
      i2c_16_8_WriteRegister(IIc, dev_wr_addr, reg_config[cpt].reg, read_value);
    }
  /*
  for(cpt=0;cpt<reg_config_n;cpt++)
    {
      read_value = i2c_16_8_ReadRegister(IIc, dev_read_addr, dev_wr_addr, reg_config[cpt].reg );
      read_value = (read_value & reg_config[cpt].mask) | reg_config[cpt].val;
      i2c_16_8_WriteRegister(IIc, dev_wr_addr, reg_config[cpt].reg, read_value);
    }
    */
}

int i2c_reg_16_8_Interactive(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, i2c_reg_16_8 *cfg_def, int cfg_def_n)
{
  u8 ReadValue = 0;
  char userInput[256] ;
  char YesNo[256];
  int addrReg, valReg;

  xil_printf("**************************************************\n\r");
  xil_printf("**************************************************\n\r");
  xil_printf("*         Configuration I2C                      *\n\r");
  xil_printf("**************************************************\n\r");
  xil_printf("**************************************************\n\r");
  xil_printf("\n\r");

 
  do	
    {
      xil_printf("w - Modifier registre\n\r");
      xil_printf("r - Lire registre\n\r");
      xil_printf("d - Valeur par defaut\n\r");

      xil_printf("q - Quitter\n\r");
      xil_printf("\n\r");
      xil_printf("Selectionnez votre action:\n\r");
      scanf("%s", userInput);
      switch (userInput[0])
        {
        case 'w':
          xil_printf("Entrez l'addresse du registre a modifier\n\r");
          scanf("%x", &addrReg);
          xil_printf("Entrez la nouvelle valeur du registre\r\n");
          scanf("%x", &valReg);
          xil_printf("Confirmation valeur 0x%2x du registre d'addresse 0x%2x ? (y/n)\r\n", valReg, addrReg);
          scanf("%2s", YesNo);
          if (YesNo[0] == 'y')
            {
              i2c_16_8_WriteRegister(IIc, dev_wr_addr, addrReg, valReg);
              xil_printf("Registre modifie\r\n");
            }
          else
            {
              xil_printf("Abandon\r\n");
            }
          break;

        case 'r':
          xil_printf("Entrez l'addresse du registre a lire\n\r");
          scanf("%x", &addrReg);
          ReadValue = i2c_16_8_ReadRegister(IIc, dev_read_addr,  dev_wr_addr, addrReg);
          xil_printf("Valeur lue 0x%2x du registre d'adresse 0x%2x\n\r", ReadValue, addrReg);
          break;

        case 'd' :
          i2c_16_8_Config(IIc, dev_read_addr,  dev_wr_addr, cfg_def, cfg_def_n);
        case 'q':
          break;
        default :
          xil_printf("Selectionnez votre action\n\r");
        }
    }
  while (userInput[0] != 'q');

  xil_printf("END CONFIGURATION CAMERA\n\r");

  return 0;
}




void i2c_8_8_WriteRegister(XIicPs *IIc, u32 dev_wr_addr, u16 RegAddr, u8 RegisterValue)
{
  int Status;
  u8 SendBuffer[3];

  SendBuffer[0] = RegAddr; // MSB first, according to the SCCB's datasheet
  SendBuffer[1] = RegisterValue;

  Status = XIicPs_MasterSendPolled(IIc, SendBuffer, 2, dev_wr_addr);
  if (Status != XST_SUCCESS){
    xil_printf("IIC_SEND_FAIL\n\r");
  }

  /* Attente fin communication I2C */
  while (XIicPs_BusIsBusy(IIc)) {}
}

u8 i2c_8_8_ReadRegister(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, u16 RegAddr)
{
  int Status;
  u8 RecvBuffer[1]={0};
  u8 SendBuffer[2];

  SendBuffer[0]=RegAddr; // MSB first, according to the SCCB's datasheet
xil_printf("read %02x\n\r", RegAddr);
//XIicPs_SetOptions(IIc, XIICPS_REP_START_OPTION | XIICPS_7_BIT_ADDR_OPTION);
  Status = XIicPs_MasterSendPolled(IIc, SendBuffer, 1, dev_wr_addr);
  if (Status != XST_SUCCESS){
    xil_printf("IIC_SEND_FAIL\n\r");
  }

  xil_printf("read A\n\r");
  /* Attente fin communication I2C */
  while (XIicPs_BusIsBusy(IIc)) {};
  xil_printf("read opt\n\r");

  //XIicPs_SetOptions(IIc,  XIICPS_7_BIT_ADDR_OPTION);
  xil_printf("read opt OK\n\r");
Status = XIicPs_MasterRecvPolled(IIc, RecvBuffer, 1, dev_read_addr);
  if (Status != XST_SUCCESS){
    xil_printf("IIC_RECEIVE_FAIL\n\r");
  }

  /* Attente fin communication I2C */
  while (XIicPs_BusIsBusy(IIc)) {};

  return RecvBuffer[0];
}


void i2c_8_8_Config(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, i2c_reg_8_8 reg_config[], int reg_config_n)
{
  u8 read_value = 0;
  volatile int cpt = 0;
  xil_printf("I2C 8_8 config %d\n\r", reg_config_n);
  
  /* Ecrit les registres deux fois !*/
  for(cpt=0;cpt<reg_config_n;cpt++)
    i2c_8_8_WriteRegister(IIc, dev_wr_addr, reg_config[cpt].reg, reg_config[cpt].val);
  /*
  for(cpt=0;cpt<reg_config_n;cpt++)
    i2c_8_8_WriteRegister(IIc, dev_wr_addr, reg_config[cpt].reg, reg_config[cpt].val);
  */
}

/* Lit les registre et reecrit les bits du mask tels quels */
void i2c_rw_8_8_Config(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, i2c_reg_rw_8_8 reg_config[], int reg_config_n)
{
  u8 read_value = 0;
  volatile int cpt = 0;
 
  for(cpt=0;cpt<reg_config_n;cpt++)
    {
      read_value = i2c_8_8_ReadRegister(IIc, dev_read_addr, dev_wr_addr, reg_config[cpt].reg );
      read_value = (read_value & reg_config[cpt].mask) | reg_config[cpt].val;
      i2c_8_8_WriteRegister(IIc, dev_wr_addr, reg_config[cpt].reg, read_value);
    }
  /*
  for(cpt=0;cpt<reg_config_n;cpt++)
    {
      read_value = i2c_8_8_ReadRegister(IIc, dev_read_addr, dev_wr_addr, reg_config[cpt].reg );
      read_value = (read_value & reg_config[cpt].mask) | reg_config[cpt].val;
      i2c_8_8_WriteRegister(IIc, dev_wr_addr, reg_config[cpt].reg, read_value);
    }
    */
}

int i2c_reg_8_8_Interactive(XIicPs *IIc, u32 dev_read_addr, u32 dev_wr_addr, i2c_reg_8_8 *cfg_default, int cfg_default_n)
{
  u8 ReadValue = 0;
  char userInput[256] ;
  char YesNo[256];
  int addrReg, valReg;

  xil_printf("**************************************************\n\r");
  xil_printf("**************************************************\n\r");
  xil_printf("*         Configuration I2C                      *\n\r");
  xil_printf("**************************************************\n\r");
  xil_printf("**************************************************\n\r");
  xil_printf("\n\r");

 
  do	
    {
      xil_printf("w - Modifier registre\n\r");
      xil_printf("r - Lire registre\n\r");
      xil_printf("d - Valeur par defaut\n\r");

      xil_printf("q - Quitter\n\r");
      xil_printf("\n\r");
      xil_printf("Selectionnez votre action:\n\r");
      scanf("%s", userInput);
      switch (userInput[0])
        {
        case 'w':
          xil_printf("Entrez l'addresse du registre a modifier\n\r");
          scanf("%x", &addrReg);
          xil_printf("Entrez la nouvelle valeur du registre\r\n");
          scanf("%x", &valReg);
          xil_printf("Confirmation valeur 0x%2x du registre d'addresse 0x%2x ? (y/n)\r\n", valReg, addrReg);
          scanf("%2s", YesNo);
          if (YesNo[0] == 'y')
            {
              i2c_8_8_WriteRegister(IIc, dev_wr_addr, addrReg, valReg);
              xil_printf("Registre modifie\r\n");
            }
          else
            {
              xil_printf("Abandon\r\n");
            }
          break;

        case 'r':
          xil_printf("Entrez l'addresse du registre a lire\n\r");
          scanf("%x", &addrReg);
          ReadValue = i2c_8_8_ReadRegister(IIc, dev_read_addr,  dev_wr_addr, addrReg);
          xil_printf("Valeur lue 0x%2x du registre d'adresse 0x%2x\n\r", ReadValue, addrReg);
          break;

        case 'd' :
          i2c_8_8_Config(IIc, dev_read_addr,  dev_wr_addr, cfg_default,  cfg_default_n);
        case 'q':
          break;
        default :
          xil_printf("Selectionnez votre action\n\r");
        }
    }
  while (userInput[0] != 'q');

  xil_printf("END CONFIGURATION CAMERA\n\r");

  return 0;
}

