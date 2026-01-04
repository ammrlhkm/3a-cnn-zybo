// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Jan  4 23:54:38 2026
// Host        : ammar running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ammrlhkm/3a-cnn-zybo/fpga/CNN_HW_SW/Z7_ProcHDMI_axi_20/Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_stub.v
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
