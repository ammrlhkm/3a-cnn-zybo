// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (lin64) Build 1846317 Fri Apr 14 18:54:47 MDT 2017
// Date        : Mon Sep 23 16:04:43 2019
// Host        : meleze running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/mancini/Stage_2019/projet_archive/repertoire_TIMA/VHDL/RAM/synth/artix/mem2p_307200_24/mem2p_307200_24_stub.v
// Design      : mem2p_307200_24
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.1" *)
module mem2p_307200_24(clka, ena, wea, addra, dina, douta, clkb, enb, web, addrb, 
  dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[3:0],dina[23:0],douta[23:0],clkb,enb,web[0:0],addrb[3:0],dinb[23:0],doutb[23:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [3:0]addra;
  input [23:0]dina;
  output [23:0]douta;
  input clkb;
  input enb;
  input [0:0]web;
  input [3:0]addrb;
  input [23:0]dinb;
  output [23:0]doutb;
endmodule
