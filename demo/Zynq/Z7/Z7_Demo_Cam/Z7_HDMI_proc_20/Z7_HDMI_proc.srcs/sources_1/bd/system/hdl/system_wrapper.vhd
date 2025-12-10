--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Mon Sep 29 09:51:47 2025
--Host        : ocaepc42 running 64-bit Ubuntu 20.04.6 LTS
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
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    hdmi_TMDS_Clk_p : out STD_LOGIC;
    hdmi_TMDS_Clk_n : out STD_LOGIC;
    hdmi_TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component system;
begin
system_i: component system
     port map (
      btn(3 downto 0) => btn(3 downto 0),
      hdmi_TMDS_Clk_n => hdmi_TMDS_Clk_n,
      hdmi_TMDS_Clk_p => hdmi_TMDS_Clk_p,
      hdmi_TMDS_Data_n(2 downto 0) => hdmi_TMDS_Data_n(2 downto 0),
      hdmi_TMDS_Data_p(2 downto 0) => hdmi_TMDS_Data_p(2 downto 0),
      led(3 downto 0) => led(3 downto 0),
      pl_clk => pl_clk,
      sw(3 downto 0) => sw(3 downto 0)
    );
end STRUCTURE;
