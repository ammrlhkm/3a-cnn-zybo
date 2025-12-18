--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
--Date        : Mon Sep 11 11:01:14 2017
--Host        : WK115 running 64-bit major release  (build 9200)
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
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    
    cam_scl : inout STD_LOGIC;
    cam_sda : inout STD_LOGIC;
    
    
    
    hdmi_TMDS_Clk_p : out std_logic;
    hdmi_TMDS_Clk_n : out std_logic;
    hdmi_TMDS_Data_p : out std_logic_vector(2 downto 0);
    hdmi_TMDS_Data_n : out std_logic_vector(2 downto 0);
    
        

  btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
  sw : in STD_LOGIC_VECTOR ( 3 downto 0 );


  led : out STD_LOGIC_VECTOR ( 3 downto 0 );
 
  pl_clk : in STD_LOGIC;


   d_phy_clk_n : in std_logic;
   d_phy_clk_p: in std_logic;
   d_phy_data_n:  in std_logic_vector(0 to 1);
   d_phy_data_p:  in std_logic_vector(0 to 1);
      
      
     d_phy_lp_clk_n : in std_logic;
     d_phy_lp_clk_p: in std_logic;
     d_phy_lp_data_n:  in std_logic_vector(0 to 1);
     d_phy_lp_data_p:  in std_logic_vector(0 to 1);
     
      cam_clk : out STD_LOGIC;
      cam_gpio : out STD_LOGIC

    
    
    
  );
end system_wrapper;

architecture STRUCTURE of system_wrapper is
  component system is
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
      FIXED_IO_ddr_vrn : inout STD_LOGIC;
      FIXED_IO_ddr_vrp : inout STD_LOGIC;
      FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
      FIXED_IO_ps_clk : inout STD_LOGIC;
      FIXED_IO_ps_porb : inout STD_LOGIC;
      FIXED_IO_ps_srstb : inout STD_LOGIC;
      IIC_0_scl_i : in STD_LOGIC;
      IIC_0_scl_o : out STD_LOGIC;
      IIC_0_scl_t : out STD_LOGIC;
      IIC_0_sda_i : in STD_LOGIC;
      IIC_0_sda_o : out STD_LOGIC;
      IIC_0_sda_t : out STD_LOGIC
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
  signal iic_scl_i : STD_LOGIC;
  signal iic_scl_o : STD_LOGIC;
  signal iic_scl_t : STD_LOGIC;
  signal iic_sda_i : STD_LOGIC;
  signal iic_sda_o : STD_LOGIC;
  signal iic_sda_t : STD_LOGIC;
  
  component MC_HDMI_proc is
    port (
      led : out STD_LOGIC_VECTOR ( 3 downto 0 );
      push : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
end component MC_HDMI_proc;
  

      
      
signal clk_25 : std_logic; 
signal clk_180 : std_logic; 
signal clk_hdmi : std_logic;

  component clk_wiz_0 
    port (
      clk_out1 : out  STD_LOGIC;
      clk_out2 : out STD_LOGIC; 
      clk_out3 : out STD_LOGIC; 

      clk_in1: in  std_logic
      );
  end component clk_wiz_0;
  
  
  
begin
iic_scl_iobuf: component IOBUF
     port map (
      I => iic_scl_o,
      IO => cam_scl,
      O => iic_scl_i,
      T => iic_scl_t
    );
iic_sda_iobuf: component IOBUF
     port map (
      I => iic_sda_o,
      IO => cam_sda,
      O => iic_sda_i,
      T => iic_sda_t
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
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      IIC_0_scl_i => iic_scl_i,
      IIC_0_scl_o => iic_scl_o,
      IIC_0_scl_t => iic_scl_t,
      IIC_0_sda_i => iic_sda_i,
      IIC_0_sda_o => iic_sda_o,
      IIC_0_sda_t => iic_sda_t
    );
    
    
    ck : clk_wiz_0 
        port map(
          clk_out1 => clk_25,
          clk_out2 => clk_hdmi,
          clk_out3 => clk_180,
    
          clk_in1 => pl_clk
          );
           cam_clk <= '1';
           cam_gpio <= '1';

              
  cam:   MC_HDMI_proc
      port map (
        led => led,
        push => btn,
        sw => sw,
        
        clk_display => clk_25,
        clk_camera => clk_180,
        clk_hdmi => clk_hdmi,

        hdmi_TMDS_Clk_p => hdmi_TMDS_Clk_p,
        hdmi_TMDS_Clk_n => hdmi_TMDS_Clk_n,
        hdmi_TMDS_Data_p =>  hdmi_TMDS_Data_p,
        hdmi_TMDS_Data_n => hdmi_TMDS_Data_n,
            
         D_PHY_CLK_N => D_PHY_CLK_N ,
         D_PHY_CLK_P => D_PHY_CLK_P ,
         D_PHY_DATA_N=> D_PHY_DATA_N,
         D_PHY_DATA_P=> D_PHY_DATA_P,
         
               D_PHY_LP_CLK_N => D_PHY_LP_CLK_N ,
           D_PHY_LP_CLK_P => D_PHY_LP_CLK_P ,
            D_PHY_LP_DATA_N=> D_PHY_LP_DATA_N,
            D_PHY_LP_DATA_P=> D_PHY_LP_DATA_P
            
        );
   
end STRUCTURE;
