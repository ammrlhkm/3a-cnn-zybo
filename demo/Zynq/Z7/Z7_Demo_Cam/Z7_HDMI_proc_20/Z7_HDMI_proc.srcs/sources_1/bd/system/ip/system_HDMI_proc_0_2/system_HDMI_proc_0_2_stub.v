// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Sep 29 09:52:38 2025
// Host        : ocaepc42 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /tima/smancini/Zynq/Z7/Z7_Demo_Cam/Z7_HDMI_proc_20/Z7_HDMI_proc.srcs/sources_1/bd/system/ip/system_HDMI_proc_0_2/system_HDMI_proc_0_2_stub.v
// Design      : system_HDMI_proc_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "HDMI_proc,Vivado 2020.2" *)
module system_HDMI_proc_0_2(led, btn, sw, clk_display, clk_hdmi, 
  hdmi_TMDS_Clk_p, hdmi_TMDS_Clk_n, hdmi_TMDS_Data_p, hdmi_TMDS_Data_n)
/* synthesis syn_black_box black_box_pad_pin="led[3:0],btn[3:0],sw[3:0],clk_display,clk_hdmi,hdmi_TMDS_Clk_p,hdmi_TMDS_Clk_n,hdmi_TMDS_Data_p[2:0],hdmi_TMDS_Data_n[2:0]" */;
  output [3:0]led;
  input [3:0]btn;
  input [3:0]sw;
  input clk_display;
  input clk_hdmi;
  output hdmi_TMDS_Clk_p;
  output hdmi_TMDS_Clk_n;
  output [2:0]hdmi_TMDS_Data_p;
  output [2:0]hdmi_TMDS_Data_n;
endmodule
