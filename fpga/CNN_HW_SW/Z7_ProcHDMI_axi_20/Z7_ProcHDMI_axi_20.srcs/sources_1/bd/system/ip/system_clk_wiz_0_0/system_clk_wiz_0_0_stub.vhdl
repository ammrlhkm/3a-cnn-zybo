-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Wed Dec 24 16:00:56 2025
-- Host        : cimeld23.cime.inpg.fr running 64-bit Red Hat Enterprise Linux Server release 7.9 (Maipo)
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_clk_wiz_0_0 -prefix
--               system_clk_wiz_0_0_ system_clk_wiz_0_0_stub.vhdl
-- Design      : system_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_clk_wiz_0_0 is
  Port ( 
    clk_vga : out STD_LOGIC;
    clk_camera : out STD_LOGIC;
    clk_hdmi : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end system_clk_wiz_0_0;

architecture stub of system_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_vga,clk_camera,clk_hdmi,reset,locked,clk_in1";
begin
end;
