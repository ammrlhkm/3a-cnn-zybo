-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Mon Sep 29 09:52:38 2025
-- Host        : ocaepc42 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /tima/smancini/Zynq/Z7/Z7_Demo_Cam/Z7_HDMI_proc_20/Z7_HDMI_proc.srcs/sources_1/bd/system/ip/system_HDMI_proc_0_2/system_HDMI_proc_0_2_stub.vhdl
-- Design      : system_HDMI_proc_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_HDMI_proc_0_2 is
  Port ( 
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

end system_HDMI_proc_0_2;

architecture stub of system_HDMI_proc_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "led[3:0],btn[3:0],sw[3:0],clk_display,clk_hdmi,hdmi_TMDS_Clk_p,hdmi_TMDS_Clk_n,hdmi_TMDS_Data_p[2:0],hdmi_TMDS_Data_n[2:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "HDMI_proc,Vivado 2020.2";
begin
end;
