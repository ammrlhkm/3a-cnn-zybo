--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Mon Sep 29 09:51:47 2025
--Host        : ocaepc42 running 64-bit Ubuntu 20.04.6 LTS
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
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    hdmi_TMDS_Clk_n : out STD_LOGIC;
    hdmi_TMDS_Clk_p : out STD_LOGIC;
    hdmi_TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system : entity is "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=5,da_ps7_cnt=2,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of system : entity is "system.hwdef";
end system;

architecture STRUCTURE of system is
  component system_clk_wiz_0_1 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_vga : out STD_LOGIC;
    clk_hdmi : out STD_LOGIC;
    clk_camera : out STD_LOGIC
  );
  end component system_clk_wiz_0_1;
  component system_HDMI_proc_0_2 is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_display : in STD_LOGIC;
    clk_hdmi : in STD_LOGIC;
    hdmi_TMDS_Clk_p : out STD_LOGIC;
    hdmi_TMDS_Clk_n : out STD_LOGIC;
    hdmi_TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component system_HDMI_proc_0_2;
  signal HDMI_proc_0_hdmi_TMDS_Clk_n : STD_LOGIC;
  signal HDMI_proc_0_hdmi_TMDS_Clk_p : STD_LOGIC;
  signal HDMI_proc_0_hdmi_TMDS_Data_n : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal HDMI_proc_0_hdmi_TMDS_Data_p : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal HDMI_proc_0_led : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal btn_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_in1_1 : STD_LOGIC;
  signal clk_wiz_0_clk_hdmi : STD_LOGIC;
  signal clk_wiz_0_clk_vga : STD_LOGIC;
  signal sw_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_clk_wiz_0_clk_camera_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of hdmi_TMDS_Clk_n : signal is "xilinx.com:signal:clock:1.0 CLK.HDMI_TMDS_CLK_N CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of hdmi_TMDS_Clk_n : signal is "XIL_INTERFACENAME CLK.HDMI_TMDS_CLK_N, CLK_DOMAIN system_HDMI_proc_0_2_hdmi_TMDS_Clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of hdmi_TMDS_Clk_p : signal is "xilinx.com:signal:clock:1.0 CLK.HDMI_TMDS_CLK_P CLK";
  attribute X_INTERFACE_PARAMETER of hdmi_TMDS_Clk_p : signal is "XIL_INTERFACENAME CLK.HDMI_TMDS_CLK_P, CLK_DOMAIN system_HDMI_proc_0_2_hdmi_TMDS_Clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of pl_clk : signal is "xilinx.com:signal:clock:1.0 CLK.PL_CLK CLK";
  attribute X_INTERFACE_PARAMETER of pl_clk : signal is "XIL_INTERFACENAME CLK.PL_CLK, CLK_DOMAIN system_clk_in1, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
begin
  btn_1(3 downto 0) <= btn(3 downto 0);
  clk_in1_1 <= pl_clk;
  hdmi_TMDS_Clk_n <= HDMI_proc_0_hdmi_TMDS_Clk_n;
  hdmi_TMDS_Clk_p <= HDMI_proc_0_hdmi_TMDS_Clk_p;
  hdmi_TMDS_Data_n(2 downto 0) <= HDMI_proc_0_hdmi_TMDS_Data_n(2 downto 0);
  hdmi_TMDS_Data_p(2 downto 0) <= HDMI_proc_0_hdmi_TMDS_Data_p(2 downto 0);
  led(3 downto 0) <= HDMI_proc_0_led(3 downto 0);
  sw_1(3 downto 0) <= sw(3 downto 0);
HDMI_proc_0: component system_HDMI_proc_0_2
     port map (
      btn(3 downto 0) => btn_1(3 downto 0),
      clk_display => clk_wiz_0_clk_vga,
      clk_hdmi => clk_wiz_0_clk_hdmi,
      hdmi_TMDS_Clk_n => HDMI_proc_0_hdmi_TMDS_Clk_n,
      hdmi_TMDS_Clk_p => HDMI_proc_0_hdmi_TMDS_Clk_p,
      hdmi_TMDS_Data_n(2 downto 0) => HDMI_proc_0_hdmi_TMDS_Data_n(2 downto 0),
      hdmi_TMDS_Data_p(2 downto 0) => HDMI_proc_0_hdmi_TMDS_Data_p(2 downto 0),
      led(3 downto 0) => HDMI_proc_0_led(3 downto 0),
      sw(3 downto 0) => sw_1(3 downto 0)
    );
clk_wiz_0: component system_clk_wiz_0_1
     port map (
      clk_camera => NLW_clk_wiz_0_clk_camera_UNCONNECTED,
      clk_hdmi => clk_wiz_0_clk_hdmi,
      clk_in1 => clk_in1_1,
      clk_vga => clk_wiz_0_clk_vga
    );
end STRUCTURE;
