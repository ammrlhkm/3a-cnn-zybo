// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Dec 24 16:00:56 2025
// Host        : cimeld23.cime.inpg.fr running 64-bit Red Hat Enterprise Linux Server release 7.9 (Maipo)
// Command     : write_verilog -force -mode synth_stub -rename_top system_clk_wiz_0_0 -prefix
//               system_clk_wiz_0_0_ system_clk_wiz_0_0_stub.v
// Design      : system_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module system_clk_wiz_0_0(clk_vga, clk_camera, clk_hdmi, reset, locked, 
  clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_vga,clk_camera,clk_hdmi,reset,locked,clk_in1" */;
  output clk_vga;
  output clk_camera;
  output clk_hdmi;
  input reset;
  output locked;
  input clk_in1;
endmodule
