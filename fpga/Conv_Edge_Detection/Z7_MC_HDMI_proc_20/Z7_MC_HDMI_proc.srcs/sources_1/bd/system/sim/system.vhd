--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Thu Dec 18 20:24:29 2025
--Host        : ammar running 64-bit Ubuntu 22.04.5 LTS
--Command     : generate_target system.bd
--Design      : system
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    D_PHY_CLK_N : in STD_LOGIC;
    D_PHY_CLK_P : in STD_LOGIC;
    D_PHY_DATA_N : in STD_LOGIC_VECTOR ( 0 to 1 );
    D_PHY_DATA_P : in STD_LOGIC_VECTOR ( 0 to 1 );
    D_PHY_LP_CLK_N : in STD_LOGIC;
    D_PHY_LP_CLK_P : in STD_LOGIC;
    D_PHY_LP_DATA_N : in STD_LOGIC_VECTOR ( 0 to 1 );
    D_PHY_LP_DATA_P : in STD_LOGIC_VECTOR ( 0 to 1 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cam_clk : out STD_LOGIC_VECTOR ( 0 to 0 );
    cam_gpio : out STD_LOGIC_VECTOR ( 0 to 0 );
    cam_iic_scl_i : in STD_LOGIC;
    cam_iic_scl_o : out STD_LOGIC;
    cam_iic_scl_t : out STD_LOGIC;
    cam_iic_sda_i : in STD_LOGIC;
    cam_iic_sda_o : out STD_LOGIC;
    cam_iic_sda_t : out STD_LOGIC;
    hdmi_TMDS_Clk_n : out STD_LOGIC;
    hdmi_TMDS_Clk_p : out STD_LOGIC;
    hdmi_TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system : entity is "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=5,da_ps7_cnt=2,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of system : entity is "system.hwdef";
end system;

architecture STRUCTURE of system is
  component system_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_xlconstant_0_0;
  component system_MC_HDMI_proc_0_0 is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_display : in STD_LOGIC;
    clk_camera : in STD_LOGIC;
    clk_hdmi : in STD_LOGIC;
    hdmi_TMDS_Clk_p : out STD_LOGIC;
    hdmi_TMDS_Clk_n : out STD_LOGIC;
    hdmi_TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D_PHY_CLK_N : in STD_LOGIC;
    D_PHY_CLK_P : in STD_LOGIC;
    D_PHY_DATA_N : in STD_LOGIC_VECTOR ( 0 to 1 );
    D_PHY_DATA_P : in STD_LOGIC_VECTOR ( 0 to 1 );
    D_PHY_LP_CLK_N : in STD_LOGIC;
    D_PHY_LP_CLK_P : in STD_LOGIC;
    D_PHY_LP_DATA_N : in STD_LOGIC_VECTOR ( 0 to 1 );
    D_PHY_LP_DATA_P : in STD_LOGIC_VECTOR ( 0 to 1 )
  );
  end component system_MC_HDMI_proc_0_0;
  component system_clk_wiz_0_1 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_vga : out STD_LOGIC;
    clk_hdmi : out STD_LOGIC;
    clk_camera : out STD_LOGIC
  );
  end component system_clk_wiz_0_1;
  component system_processing_system7_0_0 is
  port (
    I2C0_SDA_I : in STD_LOGIC;
    I2C0_SDA_O : out STD_LOGIC;
    I2C0_SDA_T : out STD_LOGIC;
    I2C0_SCL_I : in STD_LOGIC;
    I2C0_SCL_O : out STD_LOGIC;
    I2C0_SCL_T : out STD_LOGIC;
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component system_processing_system7_0_0;
  signal D_PHY_CLK_N_1 : STD_LOGIC;
  signal D_PHY_CLK_P_1 : STD_LOGIC;
  signal D_PHY_DATA_N_1 : STD_LOGIC_VECTOR ( 0 to 1 );
  signal D_PHY_DATA_P_1 : STD_LOGIC_VECTOR ( 0 to 1 );
  signal D_PHY_LP_CLK_N_1 : STD_LOGIC;
  signal D_PHY_LP_CLK_P_1 : STD_LOGIC;
  signal D_PHY_LP_DATA_N_1 : STD_LOGIC_VECTOR ( 0 to 1 );
  signal D_PHY_LP_DATA_P_1 : STD_LOGIC_VECTOR ( 0 to 1 );
  signal MC_HDMI_proc_0_hdmi_TMDS_Clk_n : STD_LOGIC;
  signal MC_HDMI_proc_0_hdmi_TMDS_Clk_p : STD_LOGIC;
  signal MC_HDMI_proc_0_hdmi_TMDS_Data_n : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal MC_HDMI_proc_0_hdmi_TMDS_Data_p : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal MC_HDMI_proc_0_led : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal btn_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_in1_1 : STD_LOGIC;
  signal clk_wiz_0_clk_camera : STD_LOGIC;
  signal clk_wiz_0_clk_hdmi : STD_LOGIC;
  signal clk_wiz_0_clk_vga : STD_LOGIC;
  signal processing_system7_1_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_1_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_1_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_1_DDR_CKE : STD_LOGIC;
  signal processing_system7_1_DDR_CK_N : STD_LOGIC;
  signal processing_system7_1_DDR_CK_P : STD_LOGIC;
  signal processing_system7_1_DDR_CS_N : STD_LOGIC;
  signal processing_system7_1_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_1_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_1_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_1_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_1_DDR_ODT : STD_LOGIC;
  signal processing_system7_1_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_1_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_1_DDR_WE_N : STD_LOGIC;
  signal processing_system7_1_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_1_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_1_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_1_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_1_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_1_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_1_IIC_0_SCL_I : STD_LOGIC;
  signal processing_system7_1_IIC_0_SCL_O : STD_LOGIC;
  signal processing_system7_1_IIC_0_SCL_T : STD_LOGIC;
  signal processing_system7_1_IIC_0_SDA_I : STD_LOGIC;
  signal processing_system7_1_IIC_0_SDA_O : STD_LOGIC;
  signal processing_system7_1_IIC_0_SDA_T : STD_LOGIC;
  signal sw_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_1_FCLK_CLK0_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_1_FCLK_RESET0_N_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of D_PHY_CLK_N : signal is "xilinx.com:signal:clock:1.0 CLK.D_PHY_CLK_N CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of D_PHY_CLK_N : signal is "XIL_INTERFACENAME CLK.D_PHY_CLK_N, CLK_DOMAIN system_D_PHY_CLK_N, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of D_PHY_CLK_P : signal is "xilinx.com:signal:clock:1.0 CLK.D_PHY_CLK_P CLK";
  attribute X_INTERFACE_PARAMETER of D_PHY_CLK_P : signal is "XIL_INTERFACENAME CLK.D_PHY_CLK_P, CLK_DOMAIN system_D_PHY_CLK_P, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of D_PHY_LP_CLK_N : signal is "xilinx.com:signal:clock:1.0 CLK.D_PHY_LP_CLK_N CLK";
  attribute X_INTERFACE_PARAMETER of D_PHY_LP_CLK_N : signal is "XIL_INTERFACENAME CLK.D_PHY_LP_CLK_N, CLK_DOMAIN system_D_PHY_LP_CLK_N, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of D_PHY_LP_CLK_P : signal is "xilinx.com:signal:clock:1.0 CLK.D_PHY_LP_CLK_P CLK";
  attribute X_INTERFACE_PARAMETER of D_PHY_LP_CLK_P : signal is "XIL_INTERFACENAME CLK.D_PHY_LP_CLK_P, CLK_DOMAIN system_D_PHY_LP_CLK_P, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of cam_iic_scl_i : signal is "xilinx.com:interface:iic:1.0 cam_iic SCL_I";
  attribute X_INTERFACE_INFO of cam_iic_scl_o : signal is "xilinx.com:interface:iic:1.0 cam_iic SCL_O";
  attribute X_INTERFACE_INFO of cam_iic_scl_t : signal is "xilinx.com:interface:iic:1.0 cam_iic SCL_T";
  attribute X_INTERFACE_INFO of cam_iic_sda_i : signal is "xilinx.com:interface:iic:1.0 cam_iic SDA_I";
  attribute X_INTERFACE_INFO of cam_iic_sda_o : signal is "xilinx.com:interface:iic:1.0 cam_iic SDA_O";
  attribute X_INTERFACE_INFO of cam_iic_sda_t : signal is "xilinx.com:interface:iic:1.0 cam_iic SDA_T";
  attribute X_INTERFACE_INFO of hdmi_TMDS_Clk_n : signal is "xilinx.com:signal:clock:1.0 CLK.HDMI_TMDS_CLK_N CLK";
  attribute X_INTERFACE_PARAMETER of hdmi_TMDS_Clk_n : signal is "XIL_INTERFACENAME CLK.HDMI_TMDS_CLK_N, CLK_DOMAIN system_MC_HDMI_proc_0_0_hdmi_TMDS_Clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of hdmi_TMDS_Clk_p : signal is "xilinx.com:signal:clock:1.0 CLK.HDMI_TMDS_CLK_P CLK";
  attribute X_INTERFACE_PARAMETER of hdmi_TMDS_Clk_p : signal is "XIL_INTERFACENAME CLK.HDMI_TMDS_CLK_P, CLK_DOMAIN system_MC_HDMI_proc_0_0_hdmi_TMDS_Clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of pl_clk : signal is "xilinx.com:signal:clock:1.0 CLK.PL_CLK CLK";
  attribute X_INTERFACE_PARAMETER of pl_clk : signal is "XIL_INTERFACENAME CLK.PL_CLK, CLK_DOMAIN system_clk_in1, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
  attribute X_INTERFACE_INFO of cam_clk : signal is "xilinx.com:signal:data:1.0 DATA.CAM_CLK DATA";
  attribute X_INTERFACE_PARAMETER of cam_clk : signal is "XIL_INTERFACENAME DATA.CAM_CLK, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of cam_gpio : signal is "xilinx.com:signal:data:1.0 DATA.CAM_GPIO DATA";
  attribute X_INTERFACE_PARAMETER of cam_gpio : signal is "XIL_INTERFACENAME DATA.CAM_GPIO, LAYERED_METADATA undef";
begin
  D_PHY_CLK_N_1 <= D_PHY_CLK_N;
  D_PHY_CLK_P_1 <= D_PHY_CLK_P;
  D_PHY_DATA_N_1(0 to 1) <= D_PHY_DATA_N(0 to 1);
  D_PHY_DATA_P_1(0 to 1) <= D_PHY_DATA_P(0 to 1);
  D_PHY_LP_CLK_N_1 <= D_PHY_LP_CLK_N;
  D_PHY_LP_CLK_P_1 <= D_PHY_LP_CLK_P;
  D_PHY_LP_DATA_N_1(0 to 1) <= D_PHY_LP_DATA_N(0 to 1);
  D_PHY_LP_DATA_P_1(0 to 1) <= D_PHY_LP_DATA_P(0 to 1);
  btn_1(3 downto 0) <= btn(3 downto 0);
  cam_clk(0) <= xlconstant_0_dout(0);
  cam_gpio(0) <= xlconstant_0_dout(0);
  cam_iic_scl_o <= processing_system7_1_IIC_0_SCL_O;
  cam_iic_scl_t <= processing_system7_1_IIC_0_SCL_T;
  cam_iic_sda_o <= processing_system7_1_IIC_0_SDA_O;
  cam_iic_sda_t <= processing_system7_1_IIC_0_SDA_T;
  clk_in1_1 <= pl_clk;
  hdmi_TMDS_Clk_n <= MC_HDMI_proc_0_hdmi_TMDS_Clk_n;
  hdmi_TMDS_Clk_p <= MC_HDMI_proc_0_hdmi_TMDS_Clk_p;
  hdmi_TMDS_Data_n(2 downto 0) <= MC_HDMI_proc_0_hdmi_TMDS_Data_n(2 downto 0);
  hdmi_TMDS_Data_p(2 downto 0) <= MC_HDMI_proc_0_hdmi_TMDS_Data_p(2 downto 0);
  led(3 downto 0) <= MC_HDMI_proc_0_led(3 downto 0);
  processing_system7_1_IIC_0_SCL_I <= cam_iic_scl_i;
  processing_system7_1_IIC_0_SDA_I <= cam_iic_sda_i;
  sw_1(3 downto 0) <= sw(3 downto 0);
MC_HDMI_proc_0: component system_MC_HDMI_proc_0_0
     port map (
      D_PHY_CLK_N => D_PHY_CLK_N_1,
      D_PHY_CLK_P => D_PHY_CLK_P_1,
      D_PHY_DATA_N(0 to 1) => D_PHY_DATA_N_1(0 to 1),
      D_PHY_DATA_P(0 to 1) => D_PHY_DATA_P_1(0 to 1),
      D_PHY_LP_CLK_N => D_PHY_LP_CLK_N_1,
      D_PHY_LP_CLK_P => D_PHY_LP_CLK_P_1,
      D_PHY_LP_DATA_N(0 to 1) => D_PHY_LP_DATA_N_1(0 to 1),
      D_PHY_LP_DATA_P(0 to 1) => D_PHY_LP_DATA_P_1(0 to 1),
      btn(3 downto 0) => btn_1(3 downto 0),
      clk_camera => clk_wiz_0_clk_camera,
      clk_display => clk_wiz_0_clk_vga,
      clk_hdmi => clk_wiz_0_clk_hdmi,
      hdmi_TMDS_Clk_n => MC_HDMI_proc_0_hdmi_TMDS_Clk_n,
      hdmi_TMDS_Clk_p => MC_HDMI_proc_0_hdmi_TMDS_Clk_p,
      hdmi_TMDS_Data_n(2 downto 0) => MC_HDMI_proc_0_hdmi_TMDS_Data_n(2 downto 0),
      hdmi_TMDS_Data_p(2 downto 0) => MC_HDMI_proc_0_hdmi_TMDS_Data_p(2 downto 0),
      led(3 downto 0) => MC_HDMI_proc_0_led(3 downto 0),
      sw(3 downto 0) => sw_1(3 downto 0)
    );
clk_wiz_0: component system_clk_wiz_0_1
     port map (
      clk_camera => clk_wiz_0_clk_camera,
      clk_hdmi => clk_wiz_0_clk_hdmi,
      clk_in1 => clk_in1_1,
      clk_vga => clk_wiz_0_clk_vga
    );
processing_system7_1: component system_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => NLW_processing_system7_1_FCLK_CLK0_UNCONNECTED,
      FCLK_RESET0_N => NLW_processing_system7_1_FCLK_RESET0_N_UNCONNECTED,
      I2C0_SCL_I => processing_system7_1_IIC_0_SCL_I,
      I2C0_SCL_O => processing_system7_1_IIC_0_SCL_O,
      I2C0_SCL_T => processing_system7_1_IIC_0_SCL_T,
      I2C0_SDA_I => processing_system7_1_IIC_0_SDA_I,
      I2C0_SDA_O => processing_system7_1_IIC_0_SDA_O,
      I2C0_SDA_T => processing_system7_1_IIC_0_SDA_T,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb
    );
xlconstant_0: component system_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
end STRUCTURE;
