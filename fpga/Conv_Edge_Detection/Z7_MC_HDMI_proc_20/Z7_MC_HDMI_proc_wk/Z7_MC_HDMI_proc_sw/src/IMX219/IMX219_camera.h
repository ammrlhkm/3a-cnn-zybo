#ifndef IMX219_H
#define IMX219_H
//#include "IMX219_camera_constants.h"
int IMX219_main_640_480_15(int interactive);

#include "../I2C/i2c_control.h"
#define IMX219_640_480_15  IMX219_640_480_15_fast

/************************************************************************/
/*																		*/
/*	OV9655_camera.h	--	Configuration Camera							*/
/*																		*/
/************************************************************************/
#define IMX219_cam_reg    i2c_reg_16_8
#define IMX219_cam_reg_rw i2c_reg_rw_16_8


#define IMX219_DEVICE_WRITE_ADDRESS (0x20)>>1
#define IMX219_DEVICE_READ_ADDRESS 	(0x20)>>1

int IMX219_main_640_480_15(int interactive);


int IMX219_Get_Analog_Gain(void);
int IMX219_Set_Analog_Gain(int gain);

int IMX219_Get_Digital_Gain(void);
int IMX219_Set_Digital_Gain(int gain);

int IMX219_Get_Integration_Time(void);
int IMX219_Set_Integration_Time(int time);


int  IMX219_CameraConfigInteractive(XIicPs *IIc);
void IMX219_InitI2C(XIicPs *IIc, int DeviceId);
void IMX219_WriteRegister(XIicPs *IIc, u16 RegAddr, u8 RegisterValue);
u8   IMX219_ReadRegister(XIicPs *IIc, u16 RegAddr);
void IMX219_Config(XIicPs *IIc, IMX219_cam_reg IMX219_config[], int IMX219_config_n );
void IMX219_Config_rw(XIicPs *IIc, IMX219_cam_reg_rw IMX219_config[], int IMX219_config_n);
int IMX219_Interactive(XIicPs *IIc, IMX219_cam_reg IMX219_config[], int IMX219_config_n);



/* Configs par defaut */
extern IMX219_cam_reg_rw IMX219_config_rw_RGB565_15fps[];
extern int IMX219_config_rw_RGB565_15fps_n;

extern IMX219_cam_reg IMX219_config_640_480[];
extern int IMX219_config_640_480_n;

extern IMX219_cam_reg IMX219_config_128_128[];
extern int IMX219_config_128_128_n;

#define IMX219_NUMBER_REGISTER 	200

/* IMX219 registers' addresses */

/* -- System control registers -- */
#define IMX219_SC_CMMN_PAD_OEN0         0x3000
#define IMX219_SC_CMMN_PAD_OEN1         0x3001
#define IMX219_SC_CMMN_PAD_OEN2         0x3002
#define IMX219_CHIP_ID_MSB              0x300A
#define IMX219_CHIP_ID_LSB              0x300B
#define IMX219_SUB_ID                   0x302A
#define IMX219_SC_CMMN_PLL_CTRL0        0x3034
#define IMX219_SC_CMMN_PLL_CTRL1        0x3035
#define IMX219_SC_CMMN_PLL_MULTIPLIER   0x3036
#define IMX219_SC_CMMN_PLL_CTRL13       0x3037
#define IMX219_SC_CMMN_PLL_CTRL2        0x303C

/* -- MIPI configuration-related registers -- */
#define IMX219_MIPI_PHY0     0x3016
#define IMX219_MIPI_PHY1     0x3017
#define IMX219_MIPI_CTRL0 0x3018
#define IMX219_MIPI_CTRL1 0x3019
#define IMX219_MIPI_CTRL2 0x3022

/* -- SCCB configuration-related registers -- */
#define IMX219_SCCB_ID      0x3100
#define IMX219_SCCB_CTRL    0x3100
#define IMX219_SCCB_OPT     0x3101
#define IMX219_SCCB_FILTER  0x3102
#define IMX219_SCCB_SYSREG  0x3103
#define IMX219_PWUP_DIS     0x3104
#define IMX219_PADCLK_DIV   0x3105
#define IMX219_SRB_CTRL     0x3106

/* -- Group hold control registers -- */
#define IMX219_SRM_GRUP_ADR0 0x3200
#define IMX219_GROUP_ADR0    0x3200
#define IMX219_GROUP_ADR1    0x3201
#define IMX219_GROUP_ADR2    0x3202
#define IMX219_GROUP_ADR3    0x3203
#define IMX219_GROUP_LEN0    0x3204
#define IMX219_GROUP_LEN1    0x3205
#define IMX219_GROUP_LEN2    0x3206
#define IMX219_GROUP_LEN3    0x3207
#define IMX219_GROUP_ACCESS  0x3208

// TODO AEC/AGC1 registers

/* -- System timing registers -- */
#define IMX219_TIMING_X_ADDR_START_MSB  0x3800
#define IMX219_TIMING_X_ADDR_START_LSB  0x3801
#define IMX219_TIMING_Y_ADDR_START_MSB  0x3802
#define IMX219_TIMING_Y_ADDR_START_LSB  0x3803
#define IMX219_TIMING_X_ADDR_END_MSB    0x3804
#define IMX219_TIMING_X_ADDR_END_LSB    0x3805
#define IMX219_TIMING_Y_ADDR_END_MSB    0x3806
#define IMX219_TIMING_Y_ADDR_END_LSB    0x3807
#define IMX219_TIMING_X_OUTPUT_SIZE_MSB 0x3808
#define IMX219_TIMING_X_OUTPUT_SIZE_LSB 0x3809
#define IMX219_TIMING_Y_OUTPUT_SIZE_MSB 0x380A
#define IMX219_TIMING_Y_OUTPUT_SIZE_LSB 0x380B

// TODO add "timing & DVP"-related registers here (see p.85 IMX219's datasheet)

#define IMX219_TIMING_HTS_MSB           0x380C
#define IMX219_TIMING_HTS_LSB           0x380D
#define IMX219_TIMING_VTS_MSB           0x380E
#define IMX219_TIMING_VTS_LSB           0x380F

#define IMX219_TIMING_ISP_X_WIN_MSB     0x3810
#define IMX219_TIMING_ISP_X_WIN_LSB     0x3811
#define IMX219_TIMING_ISP_Y_WIN_MSB     0x3812
#define IMX219_TIMING_ISP_Y_WIN_LSB     0x3813

#define IMX219_TIMING_X_INC             0x3814
#define IMX219_TIMING_Y_INC             0x3815

#define IMX219_TIMING_HSYNCST_MSB       0x3816
#define IMX219_TIMING_HSYNCST_LSB       0x3817
#define IMX219_TIMING_HSYNCW_MSB        0x3818
#define IMX219_TIMING_HSYNCW_LSB        0x3819

#define IMX219_TIMING_TC_REG20          0x3820
#define IMX219_TIMING_TC_REG21          0x3821


// TODO AEC/AGC2 registers
#define IMX219_AECAGC_GAIN_CEILING             0X3A18
#define IMX219_AECAGC_GAIN_CEILING_2           0X3A19
#define IMX219_AECAGC_WPT                      0X3A0F
#define IMX219_AECAGC_BPT                      0X3A10
#define IMX219_AECAGC_WPT2                     0X3A1B
#define IMX219_AECAGC_BPT2                     0X3A1E
#define IMX219_AECAGC_HIGH_VPT                 0X3A11
#define IMX219_AECAGC_LOW_VPT                  0X3A1F
#define IMX219_AECAGC_B50_STEP_MSB             0X3A08
#define IMX219_AECAGC_B50_STEP_LSB             0X3A09
#define IMX219_AECAGC_B50_MAX                  0X3A0E
#define IMX219_AECAGC_B60_STEP_MSB             0X3A0A
#define IMX219_AECAGC_B60_STEP_LSB             0X3A0B
#define IMX219_AECAGC_B60_MAX                  0X3A0D

#define IMX219_AECAGC_DIGC_CTRL0               0X5A00

// TODO Strobe/frame exposure control registers

// TODO 50/60 HZ DETECTION registers
#define IMX219_5060HZ_DETECTION_CTRL01           0X3C01

// TODO OTP (One time programmable) registers? (Or shall we hide them?)
#define IMX219_STROBE_FREX_MODE_SEL 0X3B07


/* -- ISP general control registers -- */
#define IMX219_TIMING_ISP_CTRL00    0x5000
#define IMX219_TIMING_ISP_CTRL01    0x5001
#define IMX219_TIMING_ISP_CTRL02    0x5002
#define IMX219_TIMING_ISP_CTRL03    0x5003
#define IMX219_TIMING_ISP_CTRL05    0x5005
#define IMX219_TIMING_ISP_CTRL1F    0x501F
#define IMX219_TIMING_ISP_CTRL25    0x5025
#define IMX219_TIMING_ISP_CTRL3D    0x503D
#define IMX219_TIMING_ISP_CTRL3E    0x503E
#define IMX219_TIMING_ISP_CTRL46    0x5046
#define IMX219_TIMING_ISP_CTRL4B    0x504B

// TODO LENC (lense correction) control registers

// TODO DPC (defect pixel cancellation) control registers

// TODO AWB (auto white balance) control registers

// Post-binning-function
#define IMX219_ISP_CTRL3            0x5003
#define IMX219_ISP_CTRL75           0x504B

/* -- Frame control registers -- */
#define IMX219_FRAME_CTRL0          0x4200
#define IMX219_FRAME_ON_NUMBER      0x4201
#define IMX219_FRAME_OFF_NUMBER     0x4202
#define IMX219_FRAME_CTRL1          0x4203

// TODO DVP registers

/* -- MIPI top registers -- */
#define IMX219_MIPI_CTRL00              0x4800
#define IMX219_MIPI_CTRL01              0x4801
#define IMX219_MIPI_CTRL02              0x4802
#define IMX219_MIPI_CTRL03              0x4803
#define IMX219_MIPI_CTRL04              0x4804
#define IMX219_MIPI_CTRL05              0x4805
#define IMX219_MIPI_REG_RW_CTRL         0x4806
#define IMX219_MIPI_BIT_ORDER           0x480A
#define IMX219_MIPI_MAX_FRAME_COUNT_MSB 0x4810
#define IMX219_MIPI_MAX_FRAME_COUNT_LSB 0x4811
#define IMX219_MIPI_CTRL14              0x4814
#define IMX219_MIPI_DT_SPKT             0x4815

#define IMX219_MIPI_HS_ZERO_MIN_MSB     0x4818
#define IMX219_MIPI_HS_ZERO_MIN_LSB     0x4819
#define IMX219_MIPI_HS_TRAIL_MIN_MSB    0x481A
#define IMX219_MIPI_HS_TRAIL_MIN_LSB    0x481B

#define IMX219_MIPI_CLK_ZERO_MIN_MSB    0x481C
#define IMX219_MIPI_CLK_ZERO_MIN_LSB    0x481D
#define IMX219_MIPI_CLK_PREPARE_MIN_MSB 0x481E
#define IMX219_MIPI_CLK_PREPARE_MIN_LSB 0x481F
#define IMX219_MIPI_CLK_POST_MIN_MSB    0x4820
#define IMX219_MIPI_CLK_POST_MIN_LSB    0x4821
#define IMX219_MIPI_CLK_TRAIL_MIN_MSB   0x4822
#define IMX219_MIPI_CLK_TRAIL_MIN_LSB   0x4823

// Low Power mode-related registers
#define IMX219_MIPI_LPX_P_MIN_MSB       0x4824
#define IMX219_MIPI_LPX_P_MIN_LSB       0x4825

// High speed mode-related registers
#define IMX219_MIPI_HS_PREPARE_MIN_MSB  0x4826
#define IMX219_MIPI_HS_PREPARE_MIN_LSB  0x4827
#define IMX219_MIPI_HS_EXIT_MIN_MSB     0x4828
#define IMX219_MIPI_HS_EXIT_MIN_LSB     0x4829

// MIPI timings represented in UIs
#define IMX219_MIPI_UI_HS_ZERO_MIN      0x482A
#define IMX219_MIPI_UI_HS_TRAIL_MIN     0x482B
#define IMX219_MIPI_UI_CLK_ZERO_MIN     0x482C
#define IMX219_MIPI_UI_CLK_PREPARE_MIN  0x482D
#define IMX219_MIPI_UI_CLK_POST_MIN     0x482E
#define IMX219_MIPI_UI_CLK_TRAIL_MIN    0x482F
#define IMX219_MIPI_UI_LPX_P_MIN        0x4830
#define IMX219_MIPI_UI_HS_PREPARE_MIN   0x4831
#define IMX219_MIPI_UI_HS_EXIT_MIN      0x4832

#define IMX219_MIPI_REG_MIN_MSB         0x4833
#define IMX219_MIPI_REG_MIN_LSB         0x4834
#define IMX219_MIPI_REG_MAX_MSB         0x4835
#define IMX219_MIPI_REG_MAX_LSB         0x4836
#define IMX219_PCLK_PERIOD              0x4837
#define IMX219_WKUP_DLY                 0x4838
#define IMX219_DIR_DLY                  0x483A
#define IMX219_MIPI_LP_GPIO             0x483B
#define IMX219_MIPI_CTRL33              0x483C
#define IMX219_MIPI_T_TA_GO             0x483D
#define IMX219_MIPI_T_TA_SURE           0x483E
#define IMX219_MIPI_T_TA_GET            0x483F
#define IMX219_SNR_PCLK_DIV             0x4843
#define IMX219_MIPI_CTRL60              0x4860

// MIPI Read/Write registers
#define IMX219_MIPI_HDSK_REG0           0x4861
#define IMX219_MIPI_HDSK_REG1           0x4862
#define IMX219_MIPI_HDSK_REG2           0x4863
#define IMX219_MIPI_HDSK_REG3           0x4864

#define IMX219_MIPI_ST                  0x4865
#define IMX219_MIPI_T_GLB_TIM_H         0x4866
#define IMX219_MIPI_T_GLB_TIM_L         0x4867


#define IMX219_BLC_CTRL00                0x4001
#define IMX219_BLC_CTRL01                0x4001
#define IMX219_BLC_CTRL04                0x4004
#define IMX219_BLC_MAX                   0x4050
#define IMX219_BLC_STABLE_RANGE          0x4051

// TODO ISPFC registers

/* Bits covering area (for read/write registers only) */

/** -- SC registers-related -- */
#define MSK_IMX219_SC_CMMN_PLL_CTRL0_PLL_CHRGE_PUMP 0x8F
#define MSK_IMX219_SC_CMMN_PLL_CTRL0_MIPI_BIT_MODE  0xF0

#define MSK_IMX219_SC_CMMN_PLL_CTRL1_SYS_CLK_DIV    0x0F
#define MSK_IMX219_SC_CMMN_PLL_CTRL1_SCL_DIV_MIPI   0xF0

#define MSK_IMX219_SC_CMMN_PLLS_CTRL2_PLLS_CP       0x8F
#define MSK_IMX219_SC_CMMN_PLLS_CTRL2_PLLS_SYS_DIV  0xF0

#define MSK_IMX219_SC_CMMN_MIPI_PHY0_LPH            0x3F
#define MSK_IMX219_SC_CMMN_MIPI_PHY0_PAD_EN         0xF7
#define MSK_IMX219_SC_CMMN_MIPI_PHY0_PGM_BP         0xFB
#define MSK_IMX219_SC_CMMN_MIPI_PHY0_ICTL           0xFC

#define MSK_IMX219_SC_CMMN_MIPI_PHY1_PGM_VCM        0x3F
#define MSK_IMX219_SC_CMMN_MIPI_PHY1_PGM_LPTX       0xCF
#define MSK_IMX219_SC_CMMN_MIPI_PHY1_IHALF          0xF7
#define MSK_IMX219_SC_CMMN_MIPI_PHY1_PGM_VICD       0xFB
#define MSK_IMX219_SC_CMMN_MIPI_PHY1_PGM_VIH        0xFD
#define MSK_IMX219_SC_CMMN_MIPI_PHY1_PGM_HS_VAL     0xFE

#define MSK_IMX219_SC_CMMN_MIPI_SC_CTRL_LANE_MODE   0x1F
#define MSK_IMX219_SC_CMMN_MIPI_SC_CTRL_R_PHY_MIPI  0xEF
#define MSK_IMX219_SC_CMMN_MIPI_SC_CTRL_R_PHY_LPRX  0xF7
#define MSK_IMX219_SC_CMMN_MIPI_SC_CTRL_MIPI_EN     0xFB
#define MSK_IMX219_SC_CMMN_MIPI_SC_CTRL_MIPI_SUSP   0xFD
#define MSK_IMX219_SC_CMMN_MIPI_SC_CTRL_LANE_DIS_OP 0xFE

#define MSK_IMX219_SC_CMMN_MISC_CTRL_FST_STBY_CTR   0xDF
#define MSK_IMX219_SC_CMMN_MISC_CTRL_MIPI_CTRL_EN   0xEF
#define MSK_IMX219_SC_CMMN_MISC_CTRL_MIPI_RST_SEL   0xF7
#define MSK_IMX219_SC_CMMN_MISC_CTRL_GPIO_PCL_EN    0xFB
#define MSK_IMX219_SC_CMMN_MISC_CTRL_FREX_EF_SEL    0xFD
#define MSK_IMX219_SC_CMMN_MISC_CTRL_CEN_GLOBAL_O   0xFE

#define MSK_IMX219_SC_CMMN_MIPI_SC_CTRL_LPTX_CK_OPT 0xF7
#define MSK_IMX219_SC_CMMN_MIPI_SC_CTRL_PDWN_CLK_LN 0xFB
#define MSK_IMX219_SC_CMMN_MIPI_SC_CTRL_PDWN_DATA2  0xFD
#define MSK_IMX219_SC_CMMN_MIPI_SC_CTRL_PDWN_DATA1  0xFE

/* -- MIPI-related -- */
#define MSK_IMX219_MIPI_CTRL00_CLK_LANE_DISABLE  0xFE
#define MSK_IMX219_MIPI_CTRL00_CLK_LANE_BITS     0xFD
#define MSK_IMX219_MIPI_CTRL00_IDLE_STATUS       0xFB
#define MSK_IMX219_MIPI_CTRL00_LANE_SELECT       0xF7
#define MSK_IMX219_MIPI_CTRL00_LINE_SYNC_EN      0xEF
#define MSK_IMX219_MIPI_CTRL00_CLK_LANE_EN       0xDF
#define MSK_IMX219_MIPI_CTRL00_CK_MARK1_EN       0xBF
#define MSK_IMX219_MIPI_CTRL00_MIPI_HS_ONLY      0x7F

#define MSK_IMX219_CTRL01_MARK1_EN2         0xFE
#define MSK_IMX219_CTRL01_MARK1_EN1         0xFD
#define MSK_IMX219_CTRL01_PH_BYTE_ORDER2    0xFB
#define MSK_IMX219_CTRL01_PH_BYTE_ORDER     0xF7
#define MSK_IMX219_CTRL01_PH_BIT_ORDER      0xEF
#define MSK_IMX219_CTRL01_SP_WC_MANUAL      0xDF
#define MSK_IMX219_CTRL01_SP_DTYPE_MANUAL   0xBF
#define MSK_IMX219_CTRL01_LP_DTYPE_MANUAL   0x7F

// TODO MIPI_CTRL02 to CTRL04

#define MSK_IMX219_MIPI_CTRL05_HD_SK_EN         0xFE
#define MSK_IMX219_MIPI_CTRL05_CLIP_ENABLE      0xFD
#define MSK_IMX219_MIPI_CTRL05_MIPI_REG_MASK    0xFB
#define MSK_IMX219_MIPI_CTRL05_CD_TST_SEL       0xF7
#define MSK_IMX219_MIPI_CTRL05_LP_RX_INTR_SEL   0xEF
#define MSK_IMX219_MIPI_CTRL05_LPX_P_SEL        0xDF
#define MSK_IMX219_MIPI_CTRL05_LANE2_DISABLE    0xBF
#define MSK_IMX219_MIPI_CTRL05_LANE1_DISABLE    0x7F

#define MSK_IMX219_REG_RW_CTRL_TEST_MODE        0x7F
#define MSK_IMX219_REG_RW_CTRL_MIPI_TEST        0xBF
#define MSK_IMX219_REG_RW_CTRL_MIPI_LP_OP       0xDF
#define MSK_IMX219_REG_RW_CTRL_TWO_LANE_MAN_EN  0xEF
#define MSK_IMX219_REG_RW_CTRL_TWO_LANE_MAN     0xF7
#define MSK_IMX219_REG_RW_CTRL_RST_RTN_EN       0xFB
#define MSK_IMX219_REG_RW_CTRL_FRAME_END_EN     0xFD
#define MSK_IMX219_REG_RW_CTRL_LINE_END_EN      0xFE

#define MSK_IMX219_MIPI_BIT_ORDER_BIT_ORDER_RV  0xFB
#define MSK_IMX219_MIPI_BIT_ORDER_BIT_POS_ADJ   0xFC

#define MSK_IMX219_MIPI_CTRL14_VIRTUAL_CHANNEL  0x3F
#define MSK_IMX219_MIPI_CTRL14_DATATYPE         0xC0

#define MSK_IMX219_MIPI_DT_SPKT_PCLK_DIV        0xBF
#define MSK_IMX219_MIPI_DT_SPKT_SP_DATATYPE     0xC0

#define MSK_IMX219_MIPI_SNR_PCLK_DIV_DIVIDER    0xFE

/* -- SCCB related masks -- */
#define MSK_IMX219_SRB_CTRL_PLL_CLK_DIVIDER     0xF3
#define MSK_IMX219_SRB_CTRL_RST_ARB             0xFD
#define MSK_IMX219_SRB_CTRL_SCLK_ARB            0xFE

/* -- ISP-related masks -- */
#define MSK_IMX219_TIMING_ISP_CTRL00_LENC_EN    0x7F
#define MSK_IMX219_TIMING_ISP_CTRL00_BC_EN      0xFB
#define MSK_IMX219_TIMING_ISP_CTRL00_WC_EN      0xFD

#define MSK_IMX219_TIMING_ISP_CTRL01_AWB_EN     0xFD

#define MSK_IMX219_ISP_CTRL03_BUF_EN            0xF7
#define MSK_IMX219_ISP_CTRL03_BIT_MAN_SET       0xFB
#define MSK_IMX219_ISP_CTRL03_BIN_AUTO_EN       0xFD

/* -- System timing registers -- */
#define MSK_IMX219_TIMING_TC_REG21_R_MIRROR_ISP 0xFB
#define MSK_IMX219_TIMING_TC_REG21_R_MIRROR_SNR 0xFD
#define MSK_IMX219_TIMING_TC_REG21_R_HBIN       0xFE

/* Definition bits registres */

/* -- SC-registers-related --  */
#define IMX219_SC_CMMN_MIPI_PHY0_MIPI_PAD_EN            0x08
#define IMX219_SC_CMMN_MIPI_PHY0_PGM_BP_HS_EN           0x04

#define IMX219_SC_CMMN_MIPI_SC_CTRL_LANE_MODE_ONE_LANE  0x20    // TODO: check that.
#define IMX219_SC_CMMN_MIPI_SC_CTRL_LANE_MODE_TWO_LANES 0x40
#define IMX219_SC_CMMN_MIPI_SC_CTRL_R_PHY_PD_MIPI       0x10
#define IMX219_SC_CMMN_MIPI_SC_CTRL_R_PHY_PD_LPRX       0x08
#define IMX219_SC_CMMN_MIPI_SC_CTRL_MIPI_EN             0x04

#define IMX219_SC_CMMN_PLL_CTRL0_MIPI_BIT_MODE_RAW8     0x08
#define IMX219_SC_CMMN_PLL_CTRL0_MIPI_BIT_MODE_RAW10    0x0A

/* -- SCCB-related -- */
#define IMX219_SRB_CTRL_PLL_CLK_DIVIDER_PER_1           0x00
#define IMX219_SRB_CTRL_PLL_CLK_DIVIDER_PER_2           0x04
#define IMX219_SRB_CTRL_PLL_CLK_DIVIDER_PER_4           0x08
#define IMX219_SRB_CTRL_RST_ARB                         0x02
#define IMX219_SRB_CTRL_SCLK_ARB_EN_SCLK_ARBITER        0x01

/* -- ISP-related -- */
#define IMX219_TIMING_ISP_CTRL00_LENC_EN                0x80
#define IMX219_TIMING_ISP_CTRL00_BC_EN                  0x04
#define IMX219_TIMING_ISP_CTRL00_WC_EN                  0x02

#define IMX219_TIMING_ISP_CTRL01_AWB_EN                 0x02

#define IMX219_ISP_CTRL03_BUF_EN            0x08
#define IMX219_ISP_CTRL03_BIT_MAN_SET       0x04
#define IMX219_ISP_CTRL03_BIN_AUTO_EN       0x02

/* -- System timing registers -- */
#define IMX219_TIMING_TC_REG21_R_MIRROR_ISP 0x04
#define IMX219_TIMING_TC_REG21_R_MIRROR_SNR 0x02
#define IMX219_TIMING_TC_REG21_R_HBIN       0x01

/* -- MIPI-related -- */
#define IMX219_MIPI_CTRL00_CLK_LANE_DISABLE  0x01
#define IMX219_MIPI_CTRL00_CLK_LANE_BITS     0x02
#define IMX219_MIPI_CTRL00_IDLE_STATUS_LP00  0x00
#define IMX219_MIPI_CTRL00_IDLE_STATUS_LP11  0x04
#define IMX219_MIPI_CTRL00_LANE_SELECT_ONE   0x00
#define IMX219_MIPI_CTRL00_LANE_SELECT_TWO   0x08
#define IMX219_MIPI_CTRL00_LINE_SYNC_EN      0x10
#define IMX219_MIPI_CTRL00_CLK_LANE_EN       0x20
#define IMX219_MIPI_CTRL00_CK_MARK1_EN       0x40
#define IMX219_MIPI_CTRL00_MIPI_HS_ONLY      0x80

#define IMX219_MIPI_CTRL05_HD_SK_EN             0x01
#define IMX219_MIPI_CTRL05_CLIP_ENABLE          0x02
#define IMX219_MIPI_CTRL05_MIPI_REG_MASK_SRB    0x04
#define IMX219_MIPI_CTRL05_CD_TST_SEL           0x08
#define IMX219_MIPI_CTRL05_LP_RX_INTR_SEL_FIRST 0x00
#define IMX219_MIPI_CTRL05_LP_RX_INTR_SEL_EOT   0x10
#define IMX219_MIPI_CTRL05_LPX_P_SEL_AUTO       0x00
#define IMX219_MIPI_CTRL05_LPX_P_SEL_LP_P_MIN   0x20
#define IMX219_MIPI_CTRL05_LANE2_DISABLE        0x40
#define IMX219_MIPI_CTRL05_LANE1_DISABLE        0x80

#endif
