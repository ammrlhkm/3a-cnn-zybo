--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Thu Dec 18 20:24:29 2025
--Host        : ammar running 64-bit Ubuntu 22.04.5 LTS
--Command     : generate_target system_wrapper.bd
--Design      : system_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_wrapper is
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
    cam_iic_scl_io : inout STD_LOGIC;
    cam_iic_sda_io : inout STD_LOGIC;
    hdmi_TMDS_Clk_n : out STD_LOGIC;
    hdmi_TMDS_Clk_p : out STD_LOGIC;
    hdmi_TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
  port (
    pl_clk : in STD_LOGIC;
    D_PHY_CLK_N : in STD_LOGIC;
    D_PHY_CLK_P : in STD_LOGIC;
    D_PHY_DATA_N : in STD_LOGIC_VECTOR ( 0 to 1 );
    D_PHY_DATA_P : in STD_LOGIC_VECTOR ( 0 to 1 );
    D_PHY_LP_CLK_N : in STD_LOGIC;
    D_PHY_LP_CLK_P : in STD_LOGIC;
    D_PHY_LP_DATA_N : in STD_LOGIC_VECTOR ( 0 to 1 );
    D_PHY_LP_DATA_P : in STD_LOGIC_VECTOR ( 0 to 1 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hdmi_TMDS_Clk_p : out STD_LOGIC;
    hdmi_TMDS_Clk_n : out STD_LOGIC;
    hdmi_TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cam_clk : out STD_LOGIC_VECTOR ( 0 to 0 );
    cam_gpio : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    cam_iic_sda_i : in STD_LOGIC;
    cam_iic_sda_o : out STD_LOGIC;
    cam_iic_sda_t : out STD_LOGIC;
    cam_iic_scl_i : in STD_LOGIC;
    cam_iic_scl_o : out STD_LOGIC;
    cam_iic_scl_t : out STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC
  );
  end component system;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal cam_iic_scl_i : STD_LOGIC;
  signal cam_iic_scl_o : STD_LOGIC;
  signal cam_iic_scl_t : STD_LOGIC;
  signal cam_iic_sda_i : STD_LOGIC;
  signal cam_iic_sda_o : STD_LOGIC;
  signal cam_iic_sda_t : STD_LOGIC;
begin
cam_iic_scl_iobuf: component IOBUF
     port map (
      I => cam_iic_scl_o,
      IO => cam_iic_scl_io,
      O => cam_iic_scl_i,
      T => cam_iic_scl_t
    );
cam_iic_sda_iobuf: component IOBUF
     port map (
      I => cam_iic_sda_o,
      IO => cam_iic_sda_io,
      O => cam_iic_sda_i,
      T => cam_iic_sda_t
    );
system_i: component system
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      D_PHY_CLK_N => D_PHY_CLK_N,
      D_PHY_CLK_P => D_PHY_CLK_P,
      D_PHY_DATA_N(0 to 1) => D_PHY_DATA_N(0 to 1),
      D_PHY_DATA_P(0 to 1) => D_PHY_DATA_P(0 to 1),
      D_PHY_LP_CLK_N => D_PHY_LP_CLK_N,
      D_PHY_LP_CLK_P => D_PHY_LP_CLK_P,
      D_PHY_LP_DATA_N(0 to 1) => D_PHY_LP_DATA_N(0 to 1),
      D_PHY_LP_DATA_P(0 to 1) => D_PHY_LP_DATA_P(0 to 1),
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      btn(3 downto 0) => btn(3 downto 0),
      cam_clk(0) => cam_clk(0),
      cam_gpio(0) => cam_gpio(0),
      cam_iic_scl_i => cam_iic_scl_i,
      cam_iic_scl_o => cam_iic_scl_o,
      cam_iic_scl_t => cam_iic_scl_t,
      cam_iic_sda_i => cam_iic_sda_i,
      cam_iic_sda_o => cam_iic_sda_o,
      cam_iic_sda_t => cam_iic_sda_t,
      hdmi_TMDS_Clk_n => hdmi_TMDS_Clk_n,
      hdmi_TMDS_Clk_p => hdmi_TMDS_Clk_p,
      hdmi_TMDS_Data_n(2 downto 0) => hdmi_TMDS_Data_n(2 downto 0),
      hdmi_TMDS_Data_p(2 downto 0) => hdmi_TMDS_Data_p(2 downto 0),
      led(3 downto 0) => led(3 downto 0),
      pl_clk => pl_clk,
      sw(3 downto 0) => sw(3 downto 0)
    );
end STRUCTURE;
