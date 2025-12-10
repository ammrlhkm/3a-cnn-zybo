// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Sep 29 09:52:38 2025
// Host        : ocaepc42 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /tima/smancini/Zynq/Z7/Z7_Demo_Cam/Z7_HDMI_proc_20/Z7_HDMI_proc.srcs/sources_1/bd/system/ip/system_HDMI_proc_0_2/system_HDMI_proc_0_2_sim_netlist.v
// Design      : system_HDMI_proc_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_HDMI_proc_0_2,HDMI_proc,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "HDMI_proc,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module system_HDMI_proc_0_2
   (led,
    btn,
    sw,
    clk_display,
    clk_hdmi,
    hdmi_TMDS_Clk_p,
    hdmi_TMDS_Clk_n,
    hdmi_TMDS_Data_p,
    hdmi_TMDS_Data_n);
  output [3:0]led;
  input [3:0]btn;
  input [3:0]sw;
  input clk_display;
  input clk_hdmi;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 hdmi_TMDS_Clk_p CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME hdmi_TMDS_Clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_HDMI_proc_0_2_hdmi_TMDS_Clk_p, INSERT_VIP 0" *) output hdmi_TMDS_Clk_p;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 hdmi_TMDS_Clk_n CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME hdmi_TMDS_Clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_HDMI_proc_0_2_hdmi_TMDS_Clk_n, INSERT_VIP 0" *) output hdmi_TMDS_Clk_n;
  output [2:0]hdmi_TMDS_Data_p;
  output [2:0]hdmi_TMDS_Data_n;

  wire [3:0]btn;
  wire clk_display;
  wire clk_hdmi;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire hdmi_TMDS_Clk_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire hdmi_TMDS_Clk_p;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]hdmi_TMDS_Data_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]hdmi_TMDS_Data_p;
  wire [3:0]led;
  wire [3:0]sw;

  system_HDMI_proc_0_2_HDMI_proc U0
       (.btn(btn),
        .clk_display(clk_display),
        .clk_hdmi(clk_hdmi),
        .hdmi_TMDS_Clk_n(hdmi_TMDS_Clk_n),
        .hdmi_TMDS_Clk_p(hdmi_TMDS_Clk_p),
        .hdmi_TMDS_Data_n(hdmi_TMDS_Data_n),
        .hdmi_TMDS_Data_p(hdmi_TMDS_Data_p),
        .led(led),
        .sw(sw));
endmodule

(* DESIGN_IS_RTL = "NO" *) (* ORIG_REF_NAME = "DispProcTest" *) 
module system_HDMI_proc_0_2_DispProcTest
   (clk,
    rst,
    img_out_rsc_wadr,
    img_out_rsc_d,
    img_out_rsc_we,
    img_out_triosy_lz);
  input clk;
  input rst;
  output [16:0]img_out_rsc_wadr;
  output [7:0]img_out_rsc_d;
  output img_out_rsc_we;
  output img_out_triosy_lz;

  wire clk;
  wire [7:0]img_out_rsc_d;
  wire [16:0]img_out_rsc_wadr;
  wire img_out_rsc_we;
  wire img_out_triosy_lz;
  wire rst;

  system_HDMI_proc_0_2_DispProcTest_core_0 DispProcTest_core_inst
       (.p_clk(clk),
        .p_img_out_rsc_we(img_out_rsc_we),
        .p_img_out_triosy_lz(img_out_triosy_lz),
        .p_nbus_img_out_rsc_d(img_out_rsc_d),
        .p_nbus_img_out_rsc_wadr({img_out_rsc_wadr[7:6],img_out_rsc_wadr[16:8],img_out_rsc_wadr[5:0]}),
        .p_rst(rst),
        .px246(1'b0));
endmodule

(* ORIG_REF_NAME = "DispProcTest_core_0" *) 
module system_HDMI_proc_0_2_DispProcTest_core_0
   (p_nbus_img_out_rsc_wadr,
    p_nbus_img_out_rsc_d,
    p_img_out_rsc_we,
    p_img_out_triosy_lz,
    p_rst,
    p_clk,
    px246);
  output [16:0]p_nbus_img_out_rsc_wadr;
  output [7:0]p_nbus_img_out_rsc_d;
  output p_img_out_rsc_we;
  output p_img_out_triosy_lz;
  input p_rst;
  input p_clk;
  input px246;

  wire DispProcTest_core_core_fsm_inst_ly_C_1_tr0;
  wire clk;
  wire [3:0]fsm_output;
  wire [7:0]img_out_rsc_d;
  wire [16:0]img_out_rsc_wadr;
  wire img_out_rsc_we;
  wire img_out_triosy_lz;
  wire [8:6]lx_x_8_0_sva;
  wire [9:0]ly_acc_2_psp_sva_1;
  wire nx1576z1;
  wire nx2573z1;
  wire nx28245z1;
  wire nx29242z1;
  wire nx29242z2;
  wire nx30239z1;
  wire nx30239z2;
  wire nx31236z1;
  wire nx31236z2;
  wire nx32233z1;
  wire nx32233z2;
  wire nx33230z1;
  wire nx33230z2;
  wire nx33230z3;
  wire nx34227z1;
  wire nx34227z2;
  wire nx34227z3;
  wire nx35224z1;
  wire nx35224z2;
  wire nx35224z3;
  wire nx35224z4;
  wire nx35224z5;
  wire nx3570z1;
  wire nx3954z1;
  wire nx3954z2;
  wire nx40632z1;
  wire nx41629z1;
  wire nx42626z1;
  wire nx44620z1;
  wire nx44620z2;
  wire nx4567z1;
  wire nx47744z1;
  wire nx47744z2;
  wire nx47745z1;
  wire nx47745z2;
  wire nx47746z1;
  wire nx47746z2;
  wire nx47747z1;
  wire nx47747z2;
  wire nx47748z1;
  wire nx47748z2;
  wire nx47749z1;
  wire nx47749z2;
  wire nx47750z1;
  wire nx47750z2;
  wire nx47751z1;
  wire nx47751z2;
  wire nx47752z1;
  wire nx5564z1;
  wire nx63748z1;
  wire nx63749z1;
  wire nx63750z1;
  wire nx63750z2;
  wire nx63750z3;
  wire nx63751z1;
  wire nx63751z2;
  wire nx63751z3;
  wire nx63752z1;
  wire nx63752z2;
  wire nx63752z3;
  wire nx63753z1;
  wire nx63753z2;
  wire nx63753z3;
  wire nx63754z1;
  wire nx63754z2;
  wire nx63754z3;
  wire nx63754z4;
  wire nx63755z1;
  wire nx63755z2;
  wire nx6561z1;
  wire nx6561z2;
  wire nx7558z1;
  wire nx7558z2;
  wire nx8555z1;
  wire nx8555z2;
  wire nx9552z1;
  wire rst;
  wire xlnx_opt__15;
  wire [3:1]NLW_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_CARRY4_O_UNCONNECTED;
  wire [3:1]NLW_CARRY4_S_UNCONNECTED;
  wire [3:1]NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_DI_UNCONNECTED;
  wire [3:1]NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_O_UNCONNECTED;
  wire [3:1]NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_S_UNCONNECTED;

  assign clk = p_clk;
  assign nx47744z1 = px246;
  assign p_img_out_rsc_we = img_out_rsc_we;
  assign p_img_out_triosy_lz = img_out_triosy_lz;
  assign p_nbus_img_out_rsc_d[7:0] = img_out_rsc_d;
  assign p_nbus_img_out_rsc_wadr[16:15] = img_out_rsc_wadr[7:6];
  assign p_nbus_img_out_rsc_wadr[14:6] = img_out_rsc_wadr[16:8];
  assign p_nbus_img_out_rsc_wadr[5:0] = img_out_rsc_wadr[5:0];
  assign rst = p_rst;
  (* OPT_MODIFIED = "MLO" *) 
  CARRY4 CARRY4
       (.CI(xlnx_opt__15),
        .CO({NLW_CARRY4_CO_UNCONNECTED[3:1],img_out_rsc_wadr[16]}),
        .CYINIT(1'b0),
        .DI({NLW_CARRY4_DI_UNCONNECTED[3:1],1'b0}),
        .O(NLW_CARRY4_O_UNCONNECTED[3:0]),
        .S({NLW_CARRY4_S_UNCONNECTED[3:1],1'b1}));
  FDRE \DispProcTest_core_core_fsm_inst_reg_state_var(0) 
       (.C(clk),
        .CE(1'b1),
        .D(nx44620z1),
        .Q(img_out_rsc_we),
        .R(rst));
  FDRE \DispProcTest_core_core_fsm_inst_reg_state_var(1) 
       (.C(clk),
        .CE(1'b1),
        .D(img_out_rsc_we),
        .Q(fsm_output[2]),
        .R(rst));
  FDRE \DispProcTest_core_core_fsm_inst_reg_state_var(2) 
       (.C(clk),
        .CE(1'b1),
        .D(nx42626z1),
        .Q(fsm_output[3]),
        .R(rst));
  FDRE \DispProcTest_core_core_fsm_inst_reg_state_var(3) 
       (.C(clk),
        .CE(1'b1),
        .D(nx41629z1),
        .Q(img_out_triosy_lz),
        .R(rst));
  FDRE \DispProcTest_core_core_fsm_inst_reg_state_var(4) 
       (.C(clk),
        .CE(1'b1),
        .D(nx40632z1),
        .Q(fsm_output[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 img_out_rsci_wadr_d_add8_6_muxcy_0_CARRY4
       (.CI(1'b0),
        .CO({nx63751z1,nx63752z1,nx63753z1,nx63754z1}),
        .CYINIT(nx47744z1),
        .DI({nx63752z2,nx63753z2,nx63754z2,nx63755z1}),
        .O(img_out_rsc_wadr[11:8]),
        .S({nx63752z3,nx63753z3,nx63754z4,nx63755z2}));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 img_out_rsci_wadr_d_add8_6_muxcy_4_CARRY4
       (.CI(nx63751z1),
        .CO({xlnx_opt__15,nx63748z1,nx63749z1,nx63750z1}),
        .CYINIT(1'b0),
        .DI({nx3954z2,nx35224z5,nx63750z2,nx63751z2}),
        .O(img_out_rsc_wadr[15:12]),
        .S({nx3954z2,nx35224z5,nx63750z3,nx63751z3}));
  (* HLUTNM = "LUT62_1_8" *) 
  LUT2 #(
    .INIT(4'h4)) 
    ix1576z1318
       (.I0(img_out_rsc_wadr[0]),
        .I1(fsm_output[3]),
        .O(nx1576z1));
  (* HLUTNM = "LUT62_1_7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    ix24302z1320
       (.I0(lx_x_8_0_sva[6]),
        .I1(nx29242z2),
        .O(img_out_rsc_wadr[6]));
  (* HLUTNM = "LUT62_1_5" *) 
  LUT4 #(
    .INIT(16'h965A)) 
    ix25299z39804
       (.I0(lx_x_8_0_sva[7]),
        .I1(lx_x_8_0_sva[6]),
        .I2(nx30239z2),
        .I3(nx29242z2),
        .O(img_out_rsc_wadr[7]));
  (* HLUTNM = "LUT62_1_6" *) 
  LUT3 #(
    .INIT(8'h60)) 
    ix2573z1410
       (.I0(img_out_rsc_wadr[1]),
        .I1(img_out_rsc_wadr[0]),
        .I2(fsm_output[3]),
        .O(nx2573z1));
  (* HLUTNM = "LUT62_1_3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    ix28245z1315
       (.I0(fsm_output[3]),
        .I1(fsm_output[0]),
        .I2(nx29242z2),
        .O(nx28245z1));
  (* HLUTNM = "LUT62_1_3" *) 
  LUT5 #(
    .INIT(32'hCC01CD00)) 
    ix29242z53794
       (.I0(fsm_output[3]),
        .I1(fsm_output[2]),
        .I2(fsm_output[0]),
        .I3(nx30239z2),
        .I4(nx29242z2),
        .O(nx29242z1));
  LUT6 #(
    .INIT(64'hCC01CD00CD00CD00)) 
    ix30239z53794
       (.I0(fsm_output[3]),
        .I1(fsm_output[2]),
        .I2(fsm_output[0]),
        .I3(nx35224z3),
        .I4(nx30239z2),
        .I5(nx29242z2),
        .O(nx30239z1));
  (* HLUTNM = "LUT62_1_9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    ix31236z1316
       (.I0(fsm_output[3]),
        .I1(fsm_output[0]),
        .O(nx31236z2));
  LUT6 #(
    .INIT(64'h9CCCCCCC88888888)) 
    ix31236z36266
       (.I0(fsm_output[2]),
        .I1(nx32233z2),
        .I2(nx35224z3),
        .I3(nx30239z2),
        .I4(nx29242z2),
        .I5(nx31236z2),
        .O(nx31236z1));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    ix32233z1314
       (.I0(nx33230z2),
        .I1(nx32233z2),
        .I2(nx35224z3),
        .I3(nx30239z2),
        .I4(nx29242z2),
        .I5(nx31236z2),
        .O(nx32233z1));
  (* HLUTNM = "LUT62_1_5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ix33230z1443
       (.I0(nx35224z3),
        .I1(nx30239z2),
        .I2(nx29242z2),
        .O(nx33230z3));
  LUT6 #(
    .INIT(64'h0110101010101010)) 
    ix33230z5426
       (.I0(fsm_output[3]),
        .I1(fsm_output[0]),
        .I2(nx34227z2),
        .I3(nx33230z2),
        .I4(nx32233z2),
        .I5(nx33230z3),
        .O(nx33230z1));
  (* HLUTNM = "LUT62_1_7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    ix34227z34083
       (.I0(nx32233z2),
        .I1(nx35224z3),
        .I2(nx30239z2),
        .I3(nx29242z2),
        .O(nx34227z3));
  LUT6 #(
    .INIT(64'h0110101010101010)) 
    ix34227z5426
       (.I0(fsm_output[3]),
        .I1(fsm_output[0]),
        .I2(nx35224z5),
        .I3(nx34227z2),
        .I4(nx33230z2),
        .I5(nx34227z3),
        .O(nx34227z1));
  (* XILINX_LEGACY_PRIM = "INV" *) 
  (* XILINX_TRANSFORM_PINMAP = "I:I0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    ix35224z1315
       (.I0(fsm_output[2]),
        .O(nx35224z1));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    ix35224z1319
       (.I0(nx3954z2),
        .I1(nx35224z3),
        .I2(nx30239z2),
        .I3(nx29242z2),
        .I4(nx35224z4),
        .I5(nx31236z2),
        .O(nx35224z2));
  LUT4 #(
    .INIT(16'h8000)) 
    ix35224z34085
       (.I0(nx35224z5),
        .I1(nx34227z2),
        .I2(nx33230z2),
        .I3(nx32233z2),
        .O(nx35224z4));
  (* HLUTNM = "LUT62_1_2" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    ix3570z28450
       (.I0(img_out_rsc_wadr[2]),
        .I1(img_out_rsc_wadr[1]),
        .I2(img_out_rsc_wadr[0]),
        .I3(fsm_output[3]),
        .O(nx3570z1));
  LUT6 #(
    .INIT(64'hAAAAEAAAEAAAAAAA)) 
    ix3954z45004
       (.I0(rst),
        .I1(nx3954z2),
        .I2(nx35224z5),
        .I3(nx34227z2),
        .I4(nx33230z2),
        .I5(nx34227z3),
        .O(nx3954z1));
  (* HLUTNM = "LUT62_1_9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ix40632z1328
       (.I0(rst),
        .I1(img_out_triosy_lz),
        .O(nx40632z1));
  (* HLUTNM = "LUT62_1_1" *) 
  LUT5 #(
    .INIT(32'h08888880)) 
    ix41629z36258
       (.I0(fsm_output[3]),
        .I1(lx_x_8_0_sva[8]),
        .I2(lx_x_8_0_sva[7]),
        .I3(lx_x_8_0_sva[6]),
        .I4(nx7558z2),
        .O(nx41629z1));
  (* HLUTNM = "LUT62_1_10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ix42626z1322
       (.I0(fsm_output[2]),
        .I1(DispProcTest_core_core_fsm_inst_ly_C_1_tr0),
        .O(nx42626z1));
  LUT6 #(
    .INIT(64'hA222222AFFFFFFFF)) 
    ix44620z1313
       (.I0(fsm_output[3]),
        .I1(lx_x_8_0_sva[8]),
        .I2(lx_x_8_0_sva[7]),
        .I3(lx_x_8_0_sva[6]),
        .I4(nx7558z2),
        .I5(nx44620z2),
        .O(nx44620z1));
  (* HLUTNM = "LUT62_1_8" *) 
  LUT3 #(
    .INIT(8'h31)) 
    ix44620z1364
       (.I0(fsm_output[2]),
        .I1(fsm_output[0]),
        .I2(DispProcTest_core_core_fsm_inst_ly_C_1_tr0),
        .O(nx44620z2));
  LUT3 #(
    .INIT(8'hFE)) 
    ix45142z1568
       (.I0(ly_acc_2_psp_sva_1[9]),
        .I1(ly_acc_2_psp_sva_1[8]),
        .I2(ly_acc_2_psp_sva_1[0]),
        .O(img_out_rsc_d[0]));
  (* HLUTNM = "LUT62_1_2" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    ix4567z1314
       (.I0(img_out_rsc_wadr[3]),
        .I1(img_out_rsc_wadr[2]),
        .I2(img_out_rsc_wadr[1]),
        .I3(img_out_rsc_wadr[0]),
        .I4(fsm_output[3]),
        .O(nx4567z1));
  LUT3 #(
    .INIT(8'hFE)) 
    ix46139z1568
       (.I0(ly_acc_2_psp_sva_1[9]),
        .I1(ly_acc_2_psp_sva_1[8]),
        .I2(ly_acc_2_psp_sva_1[1]),
        .O(img_out_rsc_d[1]));
  LUT3 #(
    .INIT(8'hFE)) 
    ix47136z1568
       (.I0(ly_acc_2_psp_sva_1[9]),
        .I1(ly_acc_2_psp_sva_1[8]),
        .I2(ly_acc_2_psp_sva_1[2]),
        .O(img_out_rsc_d[2]));
  LUT2 #(
    .INIT(4'h6)) 
    ix47744z1320
       (.I0(img_out_rsc_wadr[0]),
        .I1(nx29242z2),
        .O(nx47744z2));
  LUT2 #(
    .INIT(4'h6)) 
    ix47745z1320
       (.I0(img_out_rsc_wadr[1]),
        .I1(nx30239z2),
        .O(nx47745z2));
  LUT2 #(
    .INIT(4'h6)) 
    ix47746z1320
       (.I0(img_out_rsc_wadr[2]),
        .I1(nx35224z3),
        .O(nx47746z2));
  LUT2 #(
    .INIT(4'h6)) 
    ix47747z1320
       (.I0(img_out_rsc_wadr[3]),
        .I1(nx32233z2),
        .O(nx47747z2));
  LUT2 #(
    .INIT(4'h6)) 
    ix47748z1320
       (.I0(img_out_rsc_wadr[4]),
        .I1(nx33230z2),
        .O(nx47748z2));
  LUT2 #(
    .INIT(4'h6)) 
    ix47749z1320
       (.I0(img_out_rsc_wadr[5]),
        .I1(nx34227z2),
        .O(nx47749z2));
  LUT2 #(
    .INIT(4'h6)) 
    ix47750z1320
       (.I0(lx_x_8_0_sva[6]),
        .I1(nx35224z5),
        .O(nx47750z2));
  LUT2 #(
    .INIT(4'h6)) 
    ix47751z1320
       (.I0(lx_x_8_0_sva[7]),
        .I1(nx3954z2),
        .O(nx47751z2));
  LUT3 #(
    .INIT(8'hFE)) 
    ix48133z1568
       (.I0(ly_acc_2_psp_sva_1[9]),
        .I1(ly_acc_2_psp_sva_1[8]),
        .I2(ly_acc_2_psp_sva_1[3]),
        .O(img_out_rsc_d[3]));
  LUT3 #(
    .INIT(8'hFE)) 
    ix49130z1568
       (.I0(ly_acc_2_psp_sva_1[9]),
        .I1(ly_acc_2_psp_sva_1[8]),
        .I2(ly_acc_2_psp_sva_1[4]),
        .O(img_out_rsc_d[4]));
  LUT3 #(
    .INIT(8'hFE)) 
    ix50127z1568
       (.I0(ly_acc_2_psp_sva_1[9]),
        .I1(ly_acc_2_psp_sva_1[8]),
        .I2(ly_acc_2_psp_sva_1[5]),
        .O(img_out_rsc_d[5]));
  LUT3 #(
    .INIT(8'hFE)) 
    ix51124z1568
       (.I0(ly_acc_2_psp_sva_1[9]),
        .I1(ly_acc_2_psp_sva_1[8]),
        .I2(ly_acc_2_psp_sva_1[6]),
        .O(img_out_rsc_d[6]));
  LUT3 #(
    .INIT(8'hFE)) 
    ix52121z1568
       (.I0(ly_acc_2_psp_sva_1[9]),
        .I1(ly_acc_2_psp_sva_1[8]),
        .I2(ly_acc_2_psp_sva_1[7]),
        .O(img_out_rsc_d[7]));
  LUT6 #(
    .INIT(64'h6AAAAAAA00000000)) 
    ix5564z1314
       (.I0(img_out_rsc_wadr[4]),
        .I1(img_out_rsc_wadr[3]),
        .I2(img_out_rsc_wadr[2]),
        .I3(img_out_rsc_wadr[1]),
        .I4(img_out_rsc_wadr[0]),
        .I5(fsm_output[3]),
        .O(nx5564z1));
  LUT6 #(
    .INIT(64'h5A5A5A5A9A5A5A5A)) 
    ix63750z24445
       (.I0(nx3954z2),
        .I1(nx35224z5),
        .I2(nx34227z2),
        .I3(nx33230z2),
        .I4(nx32233z2),
        .I5(nx63754z3),
        .O(nx63750z3));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    ix63750z45004
       (.I0(nx3954z2),
        .I1(nx35224z5),
        .I2(nx34227z2),
        .I3(nx33230z2),
        .I4(nx32233z2),
        .I5(nx63754z3),
        .O(nx63750z2));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    ix63751z28620
       (.I0(nx35224z5),
        .I1(nx34227z2),
        .I2(nx33230z2),
        .I3(nx32233z2),
        .I4(nx63754z3),
        .O(nx63751z2));
  LUT5 #(
    .INIT(32'h5A5A9A5A)) 
    ix63751z40829
       (.I0(nx35224z5),
        .I1(nx34227z2),
        .I2(nx33230z2),
        .I3(nx32233z2),
        .I4(nx63754z3),
        .O(nx63751z3));
  LUT4 #(
    .INIT(16'h5A9A)) 
    ix63752z24509
       (.I0(nx34227z2),
        .I1(nx33230z2),
        .I2(nx32233z2),
        .I3(nx63754z3),
        .O(nx63752z3));
  LUT4 #(
    .INIT(16'hAA6A)) 
    ix63752z44940
       (.I0(nx34227z2),
        .I1(nx33230z2),
        .I2(nx32233z2),
        .I3(nx63754z3),
        .O(nx63752z2));
  LUT3 #(
    .INIT(8'hA6)) 
    ix63753z1480
       (.I0(nx33230z2),
        .I1(nx32233z2),
        .I2(nx63754z3),
        .O(nx63753z2));
  LUT4 #(
    .INIT(16'h5A96)) 
    ix63753z24505
       (.I0(nx33230z2),
        .I1(nx32233z2),
        .I2(nx35224z3),
        .I3(nx63754z3),
        .O(nx63753z3));
  LUT2 #(
    .INIT(4'h9)) 
    ix63754z1323
       (.I0(nx32233z2),
        .I1(nx63754z3),
        .O(nx63754z2));
  LUT3 #(
    .INIT(8'h69)) 
    ix63754z1421
       (.I0(nx32233z2),
        .I1(nx30239z2),
        .I2(nx63754z3),
        .O(nx63754z4));
  LUT6 #(
    .INIT(64'h0157157F117755FF)) 
    ix63754z23330
       (.I0(lx_x_8_0_sva[8]),
        .I1(lx_x_8_0_sva[7]),
        .I2(lx_x_8_0_sva[6]),
        .I3(nx35224z3),
        .I4(nx30239z2),
        .I5(nx29242z2),
        .O(nx63754z3));
  LUT6 #(
    .INIT(64'hA956956A996655AA)) 
    ix63755z23244
       (.I0(lx_x_8_0_sva[8]),
        .I1(lx_x_8_0_sva[7]),
        .I2(lx_x_8_0_sva[6]),
        .I3(nx35224z3),
        .I4(nx30239z2),
        .I5(nx29242z2),
        .O(nx63755z1));
  LUT6 #(
    .INIT(64'h4B692DA5B496D25A)) 
    ix63755z55165
       (.I0(nx29242z2),
        .I1(nx30239z2),
        .I2(nx35224z3),
        .I3(lx_x_8_0_sva[6]),
        .I4(lx_x_8_0_sva[7]),
        .I5(lx_x_8_0_sva[8]),
        .O(nx63755z2));
  (* HLUTNM = "LUT62_1_6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ix6561z1443
       (.I0(img_out_rsc_wadr[2]),
        .I1(img_out_rsc_wadr[1]),
        .I2(img_out_rsc_wadr[0]),
        .O(nx6561z2));
  LUT5 #(
    .INIT(32'h6A00AA00)) 
    ix6561z44834
       (.I0(img_out_rsc_wadr[5]),
        .I1(img_out_rsc_wadr[4]),
        .I2(img_out_rsc_wadr[3]),
        .I3(fsm_output[3]),
        .I4(nx6561z2),
        .O(nx6561z1));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    ix7558z1315
       (.I0(img_out_rsc_wadr[5]),
        .I1(img_out_rsc_wadr[4]),
        .I2(img_out_rsc_wadr[3]),
        .I3(img_out_rsc_wadr[2]),
        .I4(img_out_rsc_wadr[1]),
        .I5(img_out_rsc_wadr[0]),
        .O(nx7558z2));
  (* HLUTNM = "LUT62_1_4" *) 
  LUT3 #(
    .INIT(8'h28)) 
    ix7558z1354
       (.I0(fsm_output[3]),
        .I1(lx_x_8_0_sva[6]),
        .I2(nx7558z2),
        .O(nx7558z1));
  (* HLUTNM = "LUT62_1_4" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    ix8555z11691
       (.I0(fsm_output[3]),
        .I1(lx_x_8_0_sva[7]),
        .I2(lx_x_8_0_sva[6]),
        .I3(nx7558z2),
        .O(nx8555z2));
  (* HLUTNM = "LUT62_1_10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ix8555z1328
       (.I0(fsm_output[3]),
        .I1(fsm_output[0]),
        .O(nx8555z1));
  (* HLUTNM = "LUT62_1_1" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    ix9552z36266
       (.I0(fsm_output[3]),
        .I1(lx_x_8_0_sva[8]),
        .I2(lx_x_8_0_sva[7]),
        .I3(lx_x_8_0_sva[6]),
        .I4(nx7558z2),
        .O(nx9552z1));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 ly_acc_2_psp_sva_1_add9_5_muxcy_0_CARRY4
       (.CI(1'b0),
        .CO({nx47748z1,nx47747z1,nx47746z1,nx47745z1}),
        .CYINIT(nx47744z1),
        .DI(img_out_rsc_wadr[3:0]),
        .O(ly_acc_2_psp_sva_1[3:0]),
        .S({nx47747z2,nx47746z2,nx47745z2,nx47744z2}));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 ly_acc_2_psp_sva_1_add9_5_muxcy_4_CARRY4
       (.CI(nx47748z1),
        .CO({nx47752z1,nx47751z1,nx47750z1,nx47749z1}),
        .CYINIT(1'b0),
        .DI({lx_x_8_0_sva[7:6],img_out_rsc_wadr[5:4]}),
        .O(ly_acc_2_psp_sva_1[7:4]),
        .S({nx47751z2,nx47750z2,nx47749z2,nx47748z2}));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  CARRY4 ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4
       (.CI(nx47752z1),
        .CO({NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_CO_UNCONNECTED[3:1],ly_acc_2_psp_sva_1[9]}),
        .CYINIT(1'b0),
        .DI({NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_DI_UNCONNECTED[3:1],lx_x_8_0_sva[8]}),
        .O({NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_O_UNCONNECTED[3:1],ly_acc_2_psp_sva_1[8]}),
        .S({NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_S_UNCONNECTED[3:1],lx_x_8_0_sva[8]}));
  FDRE reg_DispProcTest_core_core_fsm_inst_ly_C_1_tr0
       (.C(clk),
        .CE(1'b1),
        .D(nx3954z1),
        .Q(DispProcTest_core_core_fsm_inst_ly_C_1_tr0),
        .R(1'b0));
  FDRE \reg_lx_x_8_0_sva(0) 
       (.C(clk),
        .CE(nx8555z1),
        .D(nx1576z1),
        .Q(img_out_rsc_wadr[0]),
        .R(rst));
  FDRE \reg_lx_x_8_0_sva(1) 
       (.C(clk),
        .CE(nx8555z1),
        .D(nx2573z1),
        .Q(img_out_rsc_wadr[1]),
        .R(rst));
  FDRE \reg_lx_x_8_0_sva(2) 
       (.C(clk),
        .CE(nx8555z1),
        .D(nx3570z1),
        .Q(img_out_rsc_wadr[2]),
        .R(rst));
  FDRE \reg_lx_x_8_0_sva(3) 
       (.C(clk),
        .CE(nx8555z1),
        .D(nx4567z1),
        .Q(img_out_rsc_wadr[3]),
        .R(rst));
  FDRE \reg_lx_x_8_0_sva(4) 
       (.C(clk),
        .CE(nx8555z1),
        .D(nx5564z1),
        .Q(img_out_rsc_wadr[4]),
        .R(rst));
  FDRE \reg_lx_x_8_0_sva(5) 
       (.C(clk),
        .CE(nx8555z1),
        .D(nx6561z1),
        .Q(img_out_rsc_wadr[5]),
        .R(rst));
  FDRE \reg_lx_x_8_0_sva(6) 
       (.C(clk),
        .CE(nx8555z1),
        .D(nx7558z1),
        .Q(lx_x_8_0_sva[6]),
        .R(rst));
  FDRE \reg_lx_x_8_0_sva(7) 
       (.C(clk),
        .CE(nx8555z1),
        .D(nx8555z2),
        .Q(lx_x_8_0_sva[7]),
        .R(rst));
  FDRE \reg_lx_x_8_0_sva(8) 
       (.C(clk),
        .CE(nx8555z1),
        .D(nx9552z1),
        .Q(lx_x_8_0_sva[8]),
        .R(rst));
  FDRE \reg_ly_y_7_0_sva(0) 
       (.C(clk),
        .CE(nx35224z1),
        .D(nx28245z1),
        .Q(nx29242z2),
        .R(rst));
  FDRE \reg_ly_y_7_0_sva(1) 
       (.C(clk),
        .CE(1'b1),
        .D(nx29242z1),
        .Q(nx30239z2),
        .R(rst));
  FDRE \reg_ly_y_7_0_sva(2) 
       (.C(clk),
        .CE(1'b1),
        .D(nx30239z1),
        .Q(nx35224z3),
        .R(rst));
  FDRE \reg_ly_y_7_0_sva(3) 
       (.C(clk),
        .CE(1'b1),
        .D(nx31236z1),
        .Q(nx32233z2),
        .R(rst));
  FDRE \reg_ly_y_7_0_sva(4) 
       (.C(clk),
        .CE(nx35224z1),
        .D(nx32233z1),
        .Q(nx33230z2),
        .R(rst));
  FDRE \reg_ly_y_7_0_sva(5) 
       (.C(clk),
        .CE(nx35224z1),
        .D(nx33230z1),
        .Q(nx34227z2),
        .R(rst));
  FDRE \reg_ly_y_7_0_sva(6) 
       (.C(clk),
        .CE(nx35224z1),
        .D(nx34227z1),
        .Q(nx35224z5),
        .R(rst));
  FDRE \reg_ly_y_7_0_sva(7) 
       (.C(clk),
        .CE(nx35224z1),
        .D(nx35224z2),
        .Q(nx3954z2),
        .R(rst));
endmodule

(* ORIG_REF_NAME = "HDMI_RAM" *) (* display_canal_n = "1" *) (* display_data_n = "8" *) 
(* display_image_size = "64'b0000000000000000000000010100000000000000000000000000000011110000" *) 
module system_HDMI_proc_0_2_HDMI_RAM
   (clk_display,
    clk_hdmi,
    clk_proc,
    hdmi_TMDS_Clk_n,
    hdmi_TMDS_Clk_p,
    \proc_display_mem_ctl[en] ,
    \proc_display_mem_ctl[we] ,
    hdmi_TMDS_Data_n,
    hdmi_TMDS_Data_p,
    led,
    \proc_display_mem_ctl[addr] ,
    proc_display_mem_data,
    push,
    sw);
  input clk_display;
  input clk_hdmi;
  output clk_proc;
  output hdmi_TMDS_Clk_n;
  output hdmi_TMDS_Clk_p;
  input \proc_display_mem_ctl[en] ;
  input \proc_display_mem_ctl[we] ;
  output [2:0]hdmi_TMDS_Data_n;
  output [2:0]hdmi_TMDS_Data_p;
  output [3:0]led;
  input [21:0]\proc_display_mem_ctl[addr] ;
  input [7:0]proc_display_mem_data;
  input [3:0]push;
  input [3:0]sw;

  wire \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_0 ;
  wire \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_1 ;
  wire \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_2 ;
  wire \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_3 ;
  wire \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_4 ;
  wire \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_5 ;
  wire \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_6 ;
  wire \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_7 ;
  wire [5:3]\VGA_r/n_reg ;
  wire [2:0]\VGA_r/n_reg_n_0_ ;
  wire \VGA_r/rst ;
  wire \VGA_r/rst0_n_0 ;
  wire [7:0]\VGA_r/vga_mem_data ;
  wire [1:0]\VGA_r/vga_mem_rd/C_Sync/andv ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_1 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_2 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_1 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_2 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_1 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_2 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_1 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_2 ;
  wire \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_1 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_2 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_1 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_2 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_n_2 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_1 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_2 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_4 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_5 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_6 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_7 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_1 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_2 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_4 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_5 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_6 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_7 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_1 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_2 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_4 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_5 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_6 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_7 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_6 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_7 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_1 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_2 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_4 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_5 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_6 ;
  wire \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_7 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ok1 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_1 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_2 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_n_1 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_n_2 ;
  wire \VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_n_3 ;
  wire \VGA_r/vga_mem_rd/C_Sync/p_0_in ;
  wire \VGA_r/vga_mem_rd/C_Sync/p_0_in2_in ;
  wire \VGA_r/vga_mem_rd/C_Sync/p_0_in8_in ;
  wire \VGA_r/vga_mem_rd/C_Sync/p_1_in3_in ;
  wire \VGA_r/vga_mem_rd/C_Sync/p_1_in9_in ;
  wire [10:1]\VGA_r/vga_mem_rd/C_Sync/plusOp[0] ;
  wire [10:1]\VGA_r/vga_mem_rd/C_Sync/plusOp[1] ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep_n_0 ;
  wire [9:0]\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] ;
  wire [9:0]\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[active]0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[active_n_0_] ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep_n_0 ;
  wire \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep_n_0 ;
  wire [9:0]\VGA_r/vga_mem_rd/C_Sync/v[0] ;
  wire [9:0]\VGA_r/vga_mem_rd/C_Sync/v[1] ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_0 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_1 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_2 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_3 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_0 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_1 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_2 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_3 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_1 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_2 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_3 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry_n_0 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry_n_1 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry_n_2 ;
  wire \VGA_r/vga_mem_rd/divOp[0]3_carry_n_3 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_0 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_1 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_2 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_3 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_0 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_1 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_2 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_3 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_1 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_2 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_3 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry_n_0 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry_n_1 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry_n_2 ;
  wire \VGA_r/vga_mem_rd/divOp[1]3_carry_n_3 ;
  wire \VGA_r/vga_mem_rd/index0__23_carry_n_2 ;
  wire \VGA_r/vga_mem_rd/index0__23_carry_n_3 ;
  wire \VGA_r/vga_mem_rd/index0__23_carry_n_5 ;
  wire \VGA_r/vga_mem_rd/index0__23_carry_n_6 ;
  wire \VGA_r/vga_mem_rd/index0__23_carry_n_7 ;
  wire \VGA_r/vga_mem_rd/index0_carry__0_n_0 ;
  wire \VGA_r/vga_mem_rd/index0_carry__0_n_1 ;
  wire \VGA_r/vga_mem_rd/index0_carry__0_n_2 ;
  wire \VGA_r/vga_mem_rd/index0_carry__0_n_3 ;
  wire \VGA_r/vga_mem_rd/index0_carry__0_n_4 ;
  wire \VGA_r/vga_mem_rd/index0_carry__0_n_5 ;
  wire \VGA_r/vga_mem_rd/index0_carry__0_n_6 ;
  wire \VGA_r/vga_mem_rd/index0_carry__0_n_7 ;
  wire \VGA_r/vga_mem_rd/index0_carry__1_n_3 ;
  wire \VGA_r/vga_mem_rd/index0_carry__1_n_6 ;
  wire \VGA_r/vga_mem_rd/index0_carry__1_n_7 ;
  wire \VGA_r/vga_mem_rd/index0_carry_n_0 ;
  wire \VGA_r/vga_mem_rd/index0_carry_n_1 ;
  wire \VGA_r/vga_mem_rd/index0_carry_n_2 ;
  wire \VGA_r/vga_mem_rd/index0_carry_n_3 ;
  wire \VGA_r/vga_mem_rd/index0_carry_n_4 ;
  wire \VGA_r/vga_mem_rd/index0_carry_n_5 ;
  wire \VGA_r/vga_mem_rd/index0_carry_n_6 ;
  wire \VGA_r/vga_mem_rd/index0_carry_n_7 ;
  wire \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_20_n_0 ;
  wire \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_21_n_0 ;
  wire \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_22_n_0 ;
  wire \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_4_n_0 ;
  wire \VGA_r/vga_mem_rd/sync[Hsync] ;
  wire \VGA_r/vga_mem_rd/sync[Vsync] ;
  wire [31:0]\VGA_r/vga_mem_rd/sync[c][0] ;
  wire [31:0]\VGA_r/vga_mem_rd/sync[c][1] ;
  wire [5:1]\VGA_r/vga_mem_rd/v[0] ;
  wire [6:6]\VGA_r/vga_mem_rd/v[0]__0 ;
  wire [7:1]\VGA_r/vga_mem_rd/v[1] ;
  wire \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0 ;
  wire \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1_n_0 ;
  wire \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0 ;
  wire [7:0]\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] ;
  wire \VGA_r/vga_mem_rd/vga_q_q_reg[sync][active_n_0_] ;
  wire \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][0]_srl2_n_0 ;
  wire \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][1]_srl2_n_0 ;
  wire \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][2]_srl2_n_0 ;
  wire \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][3]_srl2_n_0 ;
  wire \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][4]_srl2_n_0 ;
  wire \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][0]_srl2_n_0 ;
  wire \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][1]_srl2_n_0 ;
  wire \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][2]_srl2_n_0 ;
  wire \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][3]_srl2_n_0 ;
  wire \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][4]_srl2_n_0 ;
  wire \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][5]_srl2_n_0 ;
  wire \VGA_r/vga_mem_rd/vga_q_reg[sync][active_n_0_] ;
  wire clk_display;
  wire clk_hdmi;
  wire \cnt_t_3[2]_i_1__1_n_0 ;
  wire \cnt_t_3[2]_i_2__0_n_0 ;
  wire \cnt_t_3[2]_i_2__1_n_0 ;
  wire \cnt_t_3[2]_i_2_n_0 ;
  wire \cnt_t_3[2]_i_3__0_n_0 ;
  wire \cnt_t_3[2]_i_3__1_n_0 ;
  wire \cnt_t_3[2]_i_3_n_0 ;
  wire \cnt_t_3[2]_i_4__0_n_0 ;
  wire \cnt_t_3[2]_i_4__1_n_0 ;
  wire \cnt_t_3[2]_i_4_n_0 ;
  wire \cnt_t_3[3]_i_2__0_n_0 ;
  wire \cnt_t_3[3]_i_2__1_n_0 ;
  wire \cnt_t_3[3]_i_2_n_0 ;
  wire \cnt_t_3[3]_i_3__0_n_0 ;
  wire \cnt_t_3[3]_i_3__1_n_0 ;
  wire \cnt_t_3[3]_i_3_n_0 ;
  wire \cnt_t_3[3]_i_4__0_n_0 ;
  wire \cnt_t_3[3]_i_4__1_n_0 ;
  wire \cnt_t_3[3]_i_4_n_0 ;
  wire \cnt_t_3[3]_i_5__0_n_0 ;
  wire \cnt_t_3[3]_i_5__1_n_0 ;
  wire \cnt_t_3[3]_i_5_n_0 ;
  wire \cnt_t_3[3]_i_6__0_n_0 ;
  wire \cnt_t_3[3]_i_6__1_n_0 ;
  wire \cnt_t_3[3]_i_6_n_0 ;
  wire \cnt_t_3[3]_i_7__0_n_0 ;
  wire \cnt_t_3[3]_i_7__1_n_0 ;
  wire \cnt_t_3[3]_i_7_n_0 ;
  wire \cnt_t_3[4]_i_10__0_n_0 ;
  wire \cnt_t_3[4]_i_10__1_n_0 ;
  wire \cnt_t_3[4]_i_10_n_0 ;
  wire \cnt_t_3[4]_i_11__0_n_0 ;
  wire \cnt_t_3[4]_i_11__1_n_0 ;
  wire \cnt_t_3[4]_i_11_n_0 ;
  wire \cnt_t_3[4]_i_12__0_n_0 ;
  wire \cnt_t_3[4]_i_12__1_n_0 ;
  wire \cnt_t_3[4]_i_12_n_0 ;
  wire \cnt_t_3[4]_i_13_n_0 ;
  wire \cnt_t_3[4]_i_1_n_0 ;
  wire \cnt_t_3[4]_i_2__0_n_0 ;
  wire \cnt_t_3[4]_i_2_n_0 ;
  wire \cnt_t_3[4]_i_3__0_n_0 ;
  wire \cnt_t_3[4]_i_3__1_n_0 ;
  wire \cnt_t_3[4]_i_3_n_0 ;
  wire \cnt_t_3[4]_i_4__0_n_0 ;
  wire \cnt_t_3[4]_i_4__1_n_0 ;
  wire \cnt_t_3[4]_i_4_n_0 ;
  wire \cnt_t_3[4]_i_5__0_n_0 ;
  wire \cnt_t_3[4]_i_5__1_n_0 ;
  wire \cnt_t_3[4]_i_5_n_0 ;
  wire \cnt_t_3[4]_i_6__0_n_0 ;
  wire \cnt_t_3[4]_i_6__1_n_0 ;
  wire \cnt_t_3[4]_i_6_n_0 ;
  wire \cnt_t_3[4]_i_7__0_n_0 ;
  wire \cnt_t_3[4]_i_7__1_n_0 ;
  wire \cnt_t_3[4]_i_7_n_0 ;
  wire \cnt_t_3[4]_i_8__0_n_0 ;
  wire \cnt_t_3[4]_i_8__1_n_0 ;
  wire \cnt_t_3[4]_i_8_n_0 ;
  wire \cnt_t_3[4]_i_9__0_n_0 ;
  wire \cnt_t_3[4]_i_9__1_n_0 ;
  wire \cnt_t_3[4]_i_9_n_0 ;
  wire \divOp[0]3_carry__0_i_1_n_0 ;
  wire \divOp[0]3_carry__0_i_2_n_0 ;
  wire \divOp[0]3_carry__0_i_3_n_0 ;
  wire \divOp[0]3_carry__0_i_4_n_0 ;
  wire \divOp[0]3_carry__0_i_5_n_0 ;
  wire \divOp[0]3_carry__1_i_1_n_0 ;
  wire \divOp[0]3_carry__1_i_2_n_0 ;
  wire \divOp[0]3_carry__1_i_3_n_0 ;
  wire \divOp[0]3_carry__1_i_4_n_0 ;
  wire \divOp[0]3_carry__2_i_1_n_0 ;
  wire \divOp[0]3_carry__2_i_2_n_0 ;
  wire \divOp[0]3_carry__2_i_3_n_0 ;
  wire \divOp[0]3_carry__2_i_4_n_0 ;
  wire \divOp[0]3_carry_i_1_n_0 ;
  wire \divOp[0]3_carry_i_2_n_0 ;
  wire \divOp[0]3_carry_i_3_n_0 ;
  wire \divOp[0]3_carry_i_4_n_0 ;
  wire \divOp[0]3_carry_i_5_n_0 ;
  wire \divOp[0]3_carry_i_6_n_0 ;
  wire \divOp[0]3_carry_i_7_n_0 ;
  wire \divOp[0]3_carry_i_8_n_0 ;
  wire \divOp[1]3_carry__0_i_1_n_0 ;
  wire \divOp[1]3_carry__0_i_2_n_0 ;
  wire \divOp[1]3_carry__0_i_3_n_0 ;
  wire \divOp[1]3_carry__0_i_4_n_0 ;
  wire \divOp[1]3_carry__0_i_5_n_0 ;
  wire \divOp[1]3_carry__1_i_1_n_0 ;
  wire \divOp[1]3_carry__1_i_2_n_0 ;
  wire \divOp[1]3_carry__1_i_3_n_0 ;
  wire \divOp[1]3_carry__1_i_4_n_0 ;
  wire \divOp[1]3_carry__2_i_1_n_0 ;
  wire \divOp[1]3_carry__2_i_2_n_0 ;
  wire \divOp[1]3_carry__2_i_3_n_0 ;
  wire \divOp[1]3_carry__2_i_4_n_0 ;
  wire \divOp[1]3_carry_i_1_n_0 ;
  wire \divOp[1]3_carry_i_2_n_0 ;
  wire \divOp[1]3_carry_i_3_n_0 ;
  wire \divOp[1]3_carry_i_4_n_0 ;
  wire \divOp[1]3_carry_i_5_n_0 ;
  wire \divOp[1]3_carry_i_6_n_0 ;
  wire \divOp[1]3_carry_i_7_n_0 ;
  wire \divOp[1]3_carry_i_8_n_0 ;
  wire geqOp0_carry__0_i_1_n_0;
  wire geqOp0_carry__0_i_2_n_0;
  wire geqOp0_carry_i_1_n_0;
  wire geqOp0_carry_i_2_n_0;
  wire geqOp0_carry_i_3_n_0;
  wire geqOp0_carry_i_4_n_0;
  wire geqOp0_carry_i_5_n_0;
  wire geqOp0_carry_i_6_n_0;
  wire geqOp0_carry_i_7_n_0;
  wire geqOp0_carry_i_8_n_0;
  wire \hdmi/ClockSerializer/I ;
  wire \hdmi/ClockSerializer/SHIFTIN1 ;
  wire \hdmi/ClockSerializer/SHIFTIN2 ;
  wire [4:1]\hdmi/DataEncoders[0].DataEncoder/cnt_t_2 ;
  wire [4:1]\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ ;
  wire [3:1]\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 ;
  wire \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ;
  wire \hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_2_n_0 ;
  wire \hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_3_n_0 ;
  wire \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_2_n_0 ;
  wire \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_3_n_0 ;
  wire \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4_n_0 ;
  wire [3:0]\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ ;
  wire [3:1]\hdmi/DataEncoders[0].DataEncoder/n1q_m_1 ;
  wire \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ;
  wire [3:0]\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ ;
  wire \hdmi/DataEncoders[0].DataEncoder/pC0_1_reg_srl6_n_0 ;
  wire \hdmi/DataEncoders[0].DataEncoder/pC0_2 ;
  wire \hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep_n_0 ;
  wire \hdmi/DataEncoders[0].DataEncoder/pC1_1_reg_srl6_n_0 ;
  wire \hdmi/DataEncoders[0].DataEncoder/pC1_2 ;
  wire \hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep_n_0 ;
  wire \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ;
  wire \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ;
  wire \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ;
  wire \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ;
  wire \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ;
  wire [1:0]\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ ;
  wire \hdmi/DataEncoders[0].DataEncoder/p_0_in ;
  wire \hdmi/DataEncoders[0].DataEncoder/p_0_in0_in ;
  wire \hdmi/DataEncoders[0].DataEncoder/p_0_in10_in ;
  wire \hdmi/DataEncoders[0].DataEncoder/p_0_in2_in ;
  wire \hdmi/DataEncoders[0].DataEncoder/p_0_in4_in ;
  wire \hdmi/DataEncoders[0].DataEncoder/p_0_in5_in ;
  wire \hdmi/DataEncoders[0].DataEncoder/p_0_in6_in ;
  wire \hdmi/DataEncoders[0].DataEncoder/p_0_in7_in ;
  wire \hdmi/DataEncoders[0].DataEncoder/p_0_in8_in ;
  wire \hdmi/DataEncoders[0].DataEncoder/p_0_in9_in ;
  wire \hdmi/DataEncoders[0].DataEncoder/p_1_in12_in ;
  wire [7:0]\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ ;
  wire [9:2]\hdmi/DataEncoders[0].DataEncoder/q_out_2 ;
  wire [3:0]\hdmi/DataEncoders[0].DataEncoder/sum_bits__0 ;
  wire \hdmi/DataEncoders[0].DataSerializer/I ;
  wire \hdmi/DataEncoders[0].DataSerializer/SHIFTIN1 ;
  wire \hdmi/DataEncoders[0].DataSerializer/SHIFTIN2 ;
  wire [4:1]\hdmi/DataEncoders[1].DataEncoder/cnt_t_2 ;
  wire [4:1]\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ ;
  wire [3:1]\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 ;
  wire \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ;
  wire \hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_2_n_0 ;
  wire \hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_3_n_0 ;
  wire \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_2_n_0 ;
  wire \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_3_n_0 ;
  wire \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4_n_0 ;
  wire [3:0]\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ ;
  wire [3:1]\hdmi/DataEncoders[1].DataEncoder/n1q_m_1 ;
  wire \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ;
  wire [3:0]\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ ;
  wire \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ;
  wire \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ;
  wire \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ;
  wire \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ;
  wire \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ;
  wire [1:0]\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ ;
  wire \hdmi/DataEncoders[1].DataEncoder/p_0_in ;
  wire \hdmi/DataEncoders[1].DataEncoder/p_0_in0_in ;
  wire \hdmi/DataEncoders[1].DataEncoder/p_0_in10_in ;
  wire \hdmi/DataEncoders[1].DataEncoder/p_0_in2_in ;
  wire \hdmi/DataEncoders[1].DataEncoder/p_0_in4_in ;
  wire \hdmi/DataEncoders[1].DataEncoder/p_0_in5_in ;
  wire \hdmi/DataEncoders[1].DataEncoder/p_0_in6_in ;
  wire \hdmi/DataEncoders[1].DataEncoder/p_0_in7_in ;
  wire \hdmi/DataEncoders[1].DataEncoder/p_0_in8_in ;
  wire \hdmi/DataEncoders[1].DataEncoder/p_0_in9_in ;
  wire \hdmi/DataEncoders[1].DataEncoder/p_1_in12_in ;
  wire [7:0]\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ ;
  wire [8:2]\hdmi/DataEncoders[1].DataEncoder/q_out_2 ;
  wire [3:0]\hdmi/DataEncoders[1].DataEncoder/sum_bits__0 ;
  wire \hdmi/DataEncoders[1].DataSerializer/I ;
  wire \hdmi/DataEncoders[1].DataSerializer/SHIFTIN1 ;
  wire \hdmi/DataEncoders[1].DataSerializer/SHIFTIN2 ;
  wire [4:1]\hdmi/DataEncoders[2].DataEncoder/cnt_t_2 ;
  wire [4:1]\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ ;
  wire [3:1]\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 ;
  wire \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ;
  wire \hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_2_n_0 ;
  wire \hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_3_n_0 ;
  wire \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_2_n_0 ;
  wire \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_3_n_0 ;
  wire \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4_n_0 ;
  wire [3:0]\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ ;
  wire [3:1]\hdmi/DataEncoders[2].DataEncoder/n1q_m_1 ;
  wire \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ;
  wire [3:0]\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ ;
  wire \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ;
  wire \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ;
  wire \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ;
  wire \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ;
  wire \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ;
  wire [1:0]\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ ;
  wire \hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3_n_0 ;
  wire \hdmi/DataEncoders[2].DataEncoder/pVde_2 ;
  wire \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0 ;
  wire \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0 ;
  wire \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2_n_0 ;
  wire \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0 ;
  wire \hdmi/DataEncoders[2].DataEncoder/p_0_in ;
  wire \hdmi/DataEncoders[2].DataEncoder/p_0_in0_in ;
  wire \hdmi/DataEncoders[2].DataEncoder/p_0_in10_in ;
  wire \hdmi/DataEncoders[2].DataEncoder/p_0_in2_in ;
  wire \hdmi/DataEncoders[2].DataEncoder/p_0_in4_in ;
  wire \hdmi/DataEncoders[2].DataEncoder/p_0_in5_in ;
  wire \hdmi/DataEncoders[2].DataEncoder/p_0_in6_in ;
  wire \hdmi/DataEncoders[2].DataEncoder/p_0_in7_in ;
  wire \hdmi/DataEncoders[2].DataEncoder/p_0_in8_in ;
  wire \hdmi/DataEncoders[2].DataEncoder/p_0_in9_in ;
  wire \hdmi/DataEncoders[2].DataEncoder/p_1_in12_in ;
  wire [7:0]\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ ;
  wire [8:2]\hdmi/DataEncoders[2].DataEncoder/q_out_2 ;
  wire [3:0]\hdmi/DataEncoders[2].DataEncoder/sum_bits__0 ;
  wire \hdmi/DataEncoders[2].DataSerializer/I ;
  wire \hdmi/DataEncoders[2].DataSerializer/SHIFTIN1 ;
  wire \hdmi/DataEncoders[2].DataSerializer/SHIFTIN2 ;
  (* async_reg = "true" *) wire [1:0]\hdmi/LockLostReset/SyncAsyncx/oSyncStages ;
  (* RTL_KEEP = "true" *) wire \hdmi/LockLostReset/aRst_int ;
  wire [9:0]\hdmi/pDataOutRaw[0] ;
  wire [9:0]\hdmi/pDataOutRaw[1] ;
  wire [9:0]\hdmi/pDataOutRaw[2] ;
  wire hdmi_TMDS_Clk_n;
  wire hdmi_TMDS_Clk_p;
  wire [2:0]hdmi_TMDS_Data_n;
  wire [2:0]hdmi_TMDS_Data_p;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3__2_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_3__4_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4__2_n_0;
  wire i__carry_i_4__3_n_0;
  wire i__carry_i_4__4_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5__2_n_0;
  wire i__carry_i_5__3_n_0;
  wire i__carry_i_5__4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6__2_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7_n_0;
  wire index0__23_carry_i_1_n_0;
  wire index0__23_carry_i_2_n_0;
  wire index0__23_carry_i_3_n_0;
  wire index0_carry__0_i_10_n_0;
  wire index0_carry__0_i_11_n_0;
  wire index0_carry__0_i_12_n_0;
  wire index0_carry__0_i_13_n_0;
  wire index0_carry__0_i_14_n_1;
  wire index0_carry__0_i_14_n_2;
  wire index0_carry__0_i_14_n_3;
  wire index0_carry__0_i_14_n_4;
  wire index0_carry__0_i_14_n_5;
  wire index0_carry__0_i_14_n_6;
  wire index0_carry__0_i_14_n_7;
  wire index0_carry__0_i_15_n_0;
  wire index0_carry__0_i_16_n_0;
  wire index0_carry__0_i_17_n_0;
  wire index0_carry__0_i_18_n_0;
  wire index0_carry__0_i_19_n_0;
  wire index0_carry__0_i_20_n_0;
  wire index0_carry__0_i_21_n_0;
  wire index0_carry__0_i_22_n_0;
  wire index0_carry__0_i_23_n_0;
  wire index0_carry__0_i_4_n_0;
  wire index0_carry__0_i_5_n_0;
  wire index0_carry__0_i_6_n_0;
  wire index0_carry__0_i_7_n_0;
  wire index0_carry__0_i_8_n_0;
  wire index0_carry__0_i_9_n_0;
  wire index0_carry__1_i_1_n_0;
  wire index0_carry__1_i_2_n_0;
  wire index0_carry_i_10_n_0;
  wire index0_carry_i_11_n_0;
  wire index0_carry_i_12_n_0;
  wire index0_carry_i_1_n_0;
  wire index0_carry_i_4_n_0;
  wire index0_carry_i_5_n_0;
  wire index0_carry_i_6_n_0;
  wire index0_carry_i_7_n_0;
  wire index0_carry_i_8_n_0;
  wire index0_carry_i_9_n_0;
  wire ltOp0_carry_i_1_n_0;
  wire ltOp0_carry_i_2_n_0;
  wire ltOp0_carry_i_3_n_0;
  wire ltOp0_carry_i_4_n_0;
  wire ltOp0_carry_i_5_n_0;
  wire ltOp0_carry_i_6_n_0;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_10_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_11_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_12_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_13_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_14_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_15_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_16_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_17_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_19_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_2 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_3 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_5 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_6 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_7 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_1 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_2 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_3 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_4 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_24_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_25_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_26_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_27_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_28_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_29_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_1 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_2 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_3 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_4 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_5 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_6 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_7 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_30_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_31_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_1 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_2 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_3 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_4 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_33_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_34_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_35_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_1 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_2 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_3 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_4 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_5 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_6 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_7 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_37_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_38_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_39_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_1 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_2 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_3 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_4 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_5 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_6 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_40_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_41_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_42_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_43_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_44_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_45_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_46_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_47_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_48_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_49_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_50_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_51_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_52_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_53_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_54_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_55_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_56_n_0 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_57_n_7 ;
  wire \mem2p_76800_8_g.mem2p_76800_8_i_i_58_n_0 ;
  wire \minusOp[0]_carry__0_i_1_n_0 ;
  wire \minusOp[0]_carry__0_i_2_n_0 ;
  wire \minusOp[0]_carry__0_i_3_n_0 ;
  wire \minusOp[0]_carry_i_1_n_0 ;
  wire \minusOp[0]_carry_i_2_n_0 ;
  wire \minusOp[0]_carry_i_3_n_0 ;
  wire \minusOp[0]_carry_i_4_n_0 ;
  wire \minusOp[1]_carry__0_i_1_n_0 ;
  wire \minusOp[1]_carry__0_i_2_n_0 ;
  wire \minusOp[1]_carry__0_i_3_n_0 ;
  wire \minusOp[1]_carry__0_i_4_n_0 ;
  wire \minusOp[1]_carry__1_i_1_n_0 ;
  wire \minusOp[1]_carry_i_1_n_0 ;
  wire \minusOp[1]_carry_i_2_n_0 ;
  wire \minusOp[1]_carry_i_3_n_0 ;
  wire \minusOp[1]_carry_i_4_n_0 ;
  wire \n0q_m_2[1]_i_1__0_n_0 ;
  wire \n0q_m_2[1]_i_1__1_n_0 ;
  wire \n0q_m_2[1]_i_1_n_0 ;
  wire \n0q_m_2[1]_i_2__0_n_0 ;
  wire \n0q_m_2[1]_i_2__1_n_0 ;
  wire \n0q_m_2[1]_i_2_n_0 ;
  wire \n0q_m_2[1]_i_3__0_n_0 ;
  wire \n0q_m_2[1]_i_3__1_n_0 ;
  wire \n0q_m_2[1]_i_3_n_0 ;
  wire \n0q_m_2[1]_i_4__0_n_0 ;
  wire \n0q_m_2[1]_i_4__1_n_0 ;
  wire \n0q_m_2[1]_i_4_n_0 ;
  wire \n0q_m_2[2]_i_1__0_n_0 ;
  wire \n0q_m_2[2]_i_1__1_n_0 ;
  wire \n0q_m_2[2]_i_1_n_0 ;
  wire \n0q_m_2[3]_i_1__0_n_0 ;
  wire \n0q_m_2[3]_i_1__1_n_0 ;
  wire \n0q_m_2[3]_i_1_n_0 ;
  wire \n0q_m_2[3]_i_2__0_n_0 ;
  wire \n0q_m_2[3]_i_2__1_n_0 ;
  wire \n0q_m_2[3]_i_2_n_0 ;
  wire \n0q_m_2[3]_i_3__0_n_0 ;
  wire \n0q_m_2[3]_i_3__1_n_0 ;
  wire \n0q_m_2[3]_i_3_n_0 ;
  wire \n0q_m_2[3]_i_4__0_n_0 ;
  wire \n0q_m_2[3]_i_4__1_n_0 ;
  wire \n0q_m_2[3]_i_4_n_0 ;
  wire \n0q_m_2[3]_i_5__0_n_0 ;
  wire \n0q_m_2[3]_i_5__1_n_0 ;
  wire \n0q_m_2[3]_i_5_n_0 ;
  wire \n1q_m_2[0]_i_1__0_n_0 ;
  wire \n1q_m_2[0]_i_1__1_n_0 ;
  wire \n1q_m_2[0]_i_1_n_0 ;
  wire \n1q_m_2[1]_i_2__0_n_0 ;
  wire \n1q_m_2[1]_i_2__1_n_0 ;
  wire \n1q_m_2[1]_i_2_n_0 ;
  wire \n1q_m_2[1]_i_3__0_n_0 ;
  wire \n1q_m_2[1]_i_3__1_n_0 ;
  wire \n1q_m_2[1]_i_3_n_0 ;
  wire \n1q_m_2[1]_i_4__0_n_0 ;
  wire \n1q_m_2[1]_i_4__1_n_0 ;
  wire \n1q_m_2[1]_i_4_n_0 ;
  wire \n1q_m_2[1]_rep_i_1__0_n_0 ;
  wire \n1q_m_2[1]_rep_i_1__1_n_0 ;
  wire \n1q_m_2[1]_rep_i_1_n_0 ;
  wire \n1q_m_2[3]_i_2__0_n_0 ;
  wire \n1q_m_2[3]_i_2__1_n_0 ;
  wire \n1q_m_2[3]_i_2_n_0 ;
  wire \n1q_m_2[3]_i_3__0_n_0 ;
  wire \n1q_m_2[3]_i_3__1_n_0 ;
  wire \n1q_m_2[3]_i_3_n_0 ;
  wire \n[0]_i_1_n_0 ;
  wire \n[1]_i_1_n_0 ;
  wire \n[2]_i_1_n_0 ;
  wire \n[3]_i_1_n_0 ;
  wire \n[4]_i_1_n_0 ;
  wire \n[5]_i_1_n_0 ;
  wire ok1_carry__0_i_1_n_0;
  wire ok1_carry_i_1_n_0;
  wire ok1_carry_i_2_n_0;
  wire ok1_carry_i_3_n_0;
  wire ok1_carry_i_4_n_0;
  wire ok1_carry_i_5_n_0;
  wire ok1_carry_i_6_n_0;
  wire \pDataOutRaw[0]_i_1__0_n_0 ;
  wire \pDataOutRaw[0]_i_1__1_n_0 ;
  wire \pDataOutRaw[0]_i_1_n_0 ;
  wire \pDataOutRaw[1]_i_1__0_n_0 ;
  wire \pDataOutRaw[1]_i_1__1_n_0 ;
  wire \pDataOutRaw[1]_i_1_n_0 ;
  wire \pDataOutRaw[3]_i_1__0_n_0 ;
  wire \pDataOutRaw[3]_i_1__1_n_0 ;
  wire \pDataOutRaw[3]_i_1_n_0 ;
  wire \pDataOutRaw[5]_i_1__0_n_0 ;
  wire \pDataOutRaw[5]_i_1__1_n_0 ;
  wire \pDataOutRaw[5]_i_1_n_0 ;
  wire \pDataOutRaw[6]_i_2_n_0 ;
  wire \pDataOutRaw[7]_i_1__0_n_0 ;
  wire \pDataOutRaw[7]_i_1__1_n_0 ;
  wire \pDataOutRaw[7]_i_1_n_0 ;
  wire \pDataOutRaw[7]_i_2_n_0 ;
  wire \pDataOutRaw[9]_i_1__0_n_0 ;
  wire \pDataOutRaw[9]_i_1__1_n_0 ;
  wire \pDataOutRaw[9]_i_1_n_0 ;
  wire \pDataOutRaw[9]_i_2__1_n_0 ;
  wire \pDataOutRaw[9]_i_2_n_0 ;
  wire \pDataOutRaw[9]_i_3_n_0 ;
  wire [21:0]\proc_display_mem_ctl[addr] ;
  wire \proc_display_mem_ctl[en] ;
  wire \proc_display_mem_ctl[we] ;
  wire [7:0]proc_display_mem_data;
  wire \q_m_2[1]_i_1__0_n_0 ;
  wire \q_m_2[1]_i_1__1_n_0 ;
  wire \q_m_2[1]_i_1_n_0 ;
  wire \q_m_2[3]_i_1__0_n_0 ;
  wire \q_m_2[3]_i_1__1_n_0 ;
  wire \q_m_2[3]_i_1_n_0 ;
  wire \q_m_2[5]_i_1__0_n_0 ;
  wire \q_m_2[5]_i_1__1_n_0 ;
  wire \q_m_2[5]_i_1_n_0 ;
  wire \q_m_2[5]_i_2__0_n_0 ;
  wire \q_m_2[5]_i_2__1_n_0 ;
  wire \q_m_2[5]_i_2_n_0 ;
  wire \q_m_2[8]_i_1__0_n_0 ;
  wire \q_m_2[8]_i_1__1_n_0 ;
  wire \q_m_2[8]_i_1_n_0 ;
  wire [3:0]sw;
  wire \sync[Hsync]_i_1_n_0 ;
  wire \sync[Hsync]_i_4_n_0 ;
  wire \sync[Hsync]_i_5_n_0 ;
  wire \sync[Hsync]_i_6_n_0 ;
  wire \sync[Hsync]_i_7_n_0 ;
  wire \sync[Hsync]_i_8_n_0 ;
  wire \sync[c][1][0]_i_1_n_0 ;
  wire \sync_c_q[0][4]_i_3_n_0 ;
  wire \sync_c_q[0][4]_i_4_n_0 ;
  wire \sync_c_q[0][4]_i_5_n_0 ;
  wire \sync_c_q[0][4]_i_6_n_0 ;
  wire \sync_c_q[0][5]_rep_i_1__0_n_0 ;
  wire \sync_c_q[0][5]_rep_i_1_n_0 ;
  wire \sync_c_q[0][8]_i_3_n_0 ;
  wire \sync_c_q[0][8]_i_4_n_0 ;
  wire \sync_c_q[0][8]_i_5_n_0 ;
  wire \sync_c_q[0][8]_i_6_n_0 ;
  wire \sync_c_q[0][8]_rep_i_1__0_n_0 ;
  wire \sync_c_q[0][8]_rep_i_1_n_0 ;
  wire \sync_c_q[0][9]_i_3_n_0 ;
  wire \sync_c_q[0][9]_rep_i_1__0_n_0 ;
  wire \sync_c_q[0][9]_rep_i_1_n_0 ;
  wire \sync_c_q[1][4]_i_3_n_0 ;
  wire \sync_c_q[1][4]_i_4_n_0 ;
  wire \sync_c_q[1][4]_i_5_n_0 ;
  wire \sync_c_q[1][4]_i_6_n_0 ;
  wire \sync_c_q[1][8]_i_3_n_0 ;
  wire \sync_c_q[1][8]_i_4_n_0 ;
  wire \sync_c_q[1][8]_i_5_n_0 ;
  wire \sync_c_q[1][8]_i_6_n_0 ;
  wire \sync_c_q[1][9]_i_3_n_0 ;
  wire \sync_c_q_reg[0][4]_i_2_n_0 ;
  wire \sync_c_q_reg[0][4]_i_2_n_1 ;
  wire \sync_c_q_reg[0][4]_i_2_n_2 ;
  wire \sync_c_q_reg[0][4]_i_2_n_3 ;
  wire \sync_c_q_reg[0][8]_i_2_n_0 ;
  wire \sync_c_q_reg[0][8]_i_2_n_1 ;
  wire \sync_c_q_reg[0][8]_i_2_n_2 ;
  wire \sync_c_q_reg[0][8]_i_2_n_3 ;
  wire \sync_c_q_reg[0][9]_i_2_n_6 ;
  wire \sync_c_q_reg[1][4]_i_2_n_0 ;
  wire \sync_c_q_reg[1][4]_i_2_n_1 ;
  wire \sync_c_q_reg[1][4]_i_2_n_2 ;
  wire \sync_c_q_reg[1][4]_i_2_n_3 ;
  wire \sync_c_q_reg[1][8]_i_2_n_0 ;
  wire \sync_c_q_reg[1][8]_i_2_n_1 ;
  wire \sync_c_q_reg[1][8]_i_2_n_2 ;
  wire \sync_c_q_reg[1][8]_i_2_n_3 ;
  wire \sync_c_q_reg[1][9]_i_2_n_6 ;
  wire \sync_reg[Hsync]_i_3_n_2 ;
  wire \sync_reg[Hsync]_i_3_n_3 ;
  wire \vga_dbg[data][0][7]_i_2_n_0 ;
  wire \vga_dbg[data][0][7]_i_3_n_0 ;
  wire \vga_dbg[data][1][7]_i_2_n_0 ;
  wire \vga_dbg[data][1][7]_i_3_n_0 ;
  wire [7:0]\vga_dbg_reg[data_n_0_][0] ;
  wire [7:0]\vga_dbg_reg[data_n_0_][1] ;
  wire [7:0]\vga_dbg_reg[data_n_0_][2] ;
  wire [7:0]\vga_mire_data[0] ;
  wire [7:0]\vga_mire_data[1] ;
  wire [7:0]\vga_mire_data[2] ;
  wire [7:0]\vga_out[data][2] ;
  wire \vga_out[sync][active] ;
  wire [4:0]\vga_out[sync][c][0] ;
  wire [5:0]\vga_out[sync][c][1] ;
  wire \vga_q_q[data][0][7]_i_1_n_0 ;
  wire [23:0]vid_pData;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:3]\NLW_VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/ok1_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_VGA_r/vga_mem_rd/C_Sync/ok1_carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/ok1_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/divOp[0]3_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/divOp[0]3_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/divOp[0]3_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/divOp[0]3_carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/divOp[1]3_carry_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/divOp[1]3_carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/divOp[1]3_carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_VGA_r/vga_mem_rd/divOp[1]3_carry__2_O_UNCONNECTED ;
  wire [3:2]\NLW_VGA_r/vga_mem_rd/index0__23_carry_CO_UNCONNECTED ;
  wire [3:3]\NLW_VGA_r/vga_mem_rd/index0__23_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_VGA_r/vga_mem_rd/index0_carry__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_VGA_r/vga_mem_rd/index0_carry__1_O_UNCONNECTED ;
  wire \NLW_hdmi/ClockSerializer/SerializerMaster_OFB_UNCONNECTED ;
  wire \NLW_hdmi/ClockSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_hdmi/ClockSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_hdmi/ClockSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED ;
  wire \NLW_hdmi/ClockSerializer/SerializerMaster_TFB_UNCONNECTED ;
  wire \NLW_hdmi/ClockSerializer/SerializerMaster_TQ_UNCONNECTED ;
  wire \NLW_hdmi/ClockSerializer/SerializerSlave_OFB_UNCONNECTED ;
  wire \NLW_hdmi/ClockSerializer/SerializerSlave_OQ_UNCONNECTED ;
  wire \NLW_hdmi/ClockSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED ;
  wire \NLW_hdmi/ClockSerializer/SerializerSlave_TFB_UNCONNECTED ;
  wire \NLW_hdmi/ClockSerializer/SerializerSlave_TQ_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_OFB_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_TFB_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_TQ_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_OFB_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_OQ_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_TFB_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_TQ_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_OFB_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_TFB_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_TQ_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_OFB_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_OQ_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_TFB_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_TQ_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_OFB_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_TFB_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_TQ_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_OFB_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_OQ_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_TFB_UNCONNECTED ;
  wire \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_TQ_UNCONNECTED ;
  wire [3:3]NLW_index0_carry__0_i_14_CO_UNCONNECTED;
  wire [3:2]\NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_1_O_UNCONNECTED ;
  wire [0:0]\NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_57_CO_UNCONNECTED ;
  wire [3:1]\NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_57_O_UNCONNECTED ;
  wire [3:1]\NLW_sync_c_q_reg[0][9]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_sync_c_q_reg[0][9]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_sync_c_q_reg[1][9]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_sync_c_q_reg[1][9]_i_2_O_UNCONNECTED ;
  wire [3:3]\NLW_sync_reg[Hsync]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_sync_reg[Hsync]_i_3_O_UNCONNECTED ;

  assign clk_proc = clk_display;
  LUT1 #(
    .INIT(2'h2)) 
    LockLostReseti_0
       (.I0(1'b0),
        .O(\hdmi/LockLostReset/aRst_int ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_BLUE_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][2] [0]),
        .Q(vid_pData[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_BLUE_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][2] [1]),
        .Q(vid_pData[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_BLUE_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][2] [2]),
        .Q(vid_pData[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_BLUE_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][2] [3]),
        .Q(vid_pData[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_BLUE_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][2] [4]),
        .Q(vid_pData[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_BLUE_reg[5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][2] [5]),
        .Q(vid_pData[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_BLUE_reg[6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][2] [6]),
        .Q(vid_pData[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_BLUE_reg[7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][2] [7]),
        .Q(vid_pData[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_GREEN_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][1] [0]),
        .Q(vid_pData[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_GREEN_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][1] [1]),
        .Q(vid_pData[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_GREEN_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][1] [2]),
        .Q(vid_pData[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_GREEN_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][1] [3]),
        .Q(vid_pData[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_GREEN_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][1] [4]),
        .Q(vid_pData[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_GREEN_reg[5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][1] [5]),
        .Q(vid_pData[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_GREEN_reg[6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][1] [6]),
        .Q(vid_pData[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_GREEN_reg[7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][1] [7]),
        .Q(vid_pData[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_RED_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][0] [0]),
        .Q(vid_pData[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_RED_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][0] [1]),
        .Q(vid_pData[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_RED_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][0] [2]),
        .Q(vid_pData[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_RED_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][0] [3]),
        .Q(vid_pData[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_RED_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][0] [4]),
        .Q(vid_pData[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_RED_reg[5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][0] [5]),
        .Q(vid_pData[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_RED_reg[6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][0] [6]),
        .Q(vid_pData[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_RED_reg[7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_dbg_reg[data_n_0_][0] [7]),
        .Q(vid_pData[23]),
        .R(1'b0));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.1" *) 
  system_HDMI_proc_0_2_mem2p_76800_8 \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i 
       (.addra(\proc_display_mem_ctl[addr] [16:0]),
        .addrb({\mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_5 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_6 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_7 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_4 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_5 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_6 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_7 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_4 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_5 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_6 ,\VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_4_n_0 ,\VGA_r/vga_mem_rd/v[0] ,\mem2p_76800_8_g.mem2p_76800_8_i_i_10_n_0 }),
        .clka(clk_display),
        .clkb(clk_display),
        .dina(proc_display_mem_data),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta({\VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_0 ,\VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_1 ,\VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_2 ,\VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_3 ,\VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_4 ,\VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_5 ,\VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_6 ,\VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_7 }),
        .doutb(\VGA_r/vga_mem_data ),
        .ena(\proc_display_mem_ctl[en] ),
        .enb(\VGA_r/vga_mem_rd/C_Sync/sync_reg[active_n_0_] ),
        .wea(\proc_display_mem_ctl[we] ),
        .web(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/n_reg[0] 
       (.C(clk_display),
        .CE(\VGA_r/rst0_n_0 ),
        .D(\n[0]_i_1_n_0 ),
        .Q(\VGA_r/n_reg_n_0_ [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/n_reg[1] 
       (.C(clk_display),
        .CE(\VGA_r/rst0_n_0 ),
        .D(\n[1]_i_1_n_0 ),
        .Q(\VGA_r/n_reg_n_0_ [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/n_reg[2] 
       (.C(clk_display),
        .CE(\VGA_r/rst0_n_0 ),
        .D(\n[2]_i_1_n_0 ),
        .Q(\VGA_r/n_reg_n_0_ [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/n_reg[3] 
       (.C(clk_display),
        .CE(\VGA_r/rst0_n_0 ),
        .D(\n[3]_i_1_n_0 ),
        .Q(\VGA_r/n_reg [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/n_reg[4] 
       (.C(clk_display),
        .CE(\VGA_r/rst0_n_0 ),
        .D(\n[4]_i_1_n_0 ),
        .Q(\VGA_r/n_reg [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/n_reg[5] 
       (.C(clk_display),
        .CE(\VGA_r/rst0_n_0 ),
        .D(\n[5]_i_1_n_0 ),
        .Q(\VGA_r/n_reg [5]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h57)) 
    \VGA_r/rst0 
       (.I0(\VGA_r/n_reg [5]),
        .I1(\VGA_r/n_reg [4]),
        .I2(\VGA_r/n_reg [3]),
        .O(\VGA_r/rst0_n_0 ));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry 
       (.CI(1'b0),
        .CO({\VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_0 ,\VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_1 ,\VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_2 ,\VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({geqOp0_carry_i_1_n_0,geqOp0_carry_i_2_n_0,geqOp0_carry_i_3_n_0,geqOp0_carry_i_4_n_0}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_O_UNCONNECTED [3:0]),
        .S({geqOp0_carry_i_5_n_0,geqOp0_carry_i_6_n_0,geqOp0_carry_i_7_n_0,geqOp0_carry_i_8_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0 
       (.CI(\VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_0 ),
        .CO({\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0_CO_UNCONNECTED [3:1],\VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,geqOp0_carry__0_i_1_n_0}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,geqOp0_carry__0_i_2_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_0 ,\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_1 ,\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_2 ,\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [7],i__carry_i_1_n_0,i__carry_i_2__2_n_0,i__carry_i_3__2_n_0}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_4__1_n_0,i__carry_i_5__2_n_0,i__carry_i_6__2_n_0,i__carry_i_7__1_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry__0 
       (.CI(\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_0 ),
        .CO({\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],\VGA_r/vga_mem_rd/C_Sync/p_1_in9_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__0_i_1__1_n_0}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_2__2_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_0 ,\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_1 ,\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_2 ,\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__0_n_0,i__carry_i_3_n_0,\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [1]}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_4__0_n_0,i__carry_i_5__0_n_0,i__carry_i_6__0_n_0,i__carry_i_7_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0 
       (.CI(\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_0 ),
        .CO({\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0_CO_UNCONNECTED [3:1],\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__0_i_1_n_0}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_2__0_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_0 ,\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_1 ,\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_2 ,\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1__0_n_0,\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [5],i__carry_i_2__1_n_0,i__carry_i_3__1_n_0}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_4__3_n_0,i__carry_i_5__1_n_0,i__carry_i_6__1_n_0,i__carry_i_7__0_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry__0 
       (.CI(\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_0 ),
        .CO({\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry__0_CO_UNCONNECTED [3:1],\VGA_r/vga_mem_rd/C_Sync/p_1_in3_in }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__0_i_1__0_n_0}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_2__1_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/ltOp0_carry 
       (.CI(1'b0),
        .CO({\VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_0 ,\VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_1 ,\VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_2 ,\VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({ltOp0_carry_i_1_n_0,1'b0,1'b0,ltOp0_carry_i_2_n_0}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_O_UNCONNECTED [3:0]),
        .S({ltOp0_carry_i_3_n_0,ltOp0_carry_i_4_n_0,ltOp0_carry_i_5_n_0,ltOp0_carry_i_6_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_0 ,\VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_1 ,\VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_2 ,\VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry_i_1__3_n_0}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_2__4_n_0,i__carry_i_3__3_n_0,i__carry_i_4__4_n_0,i__carry_i_5__3_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0 
       (.CI(\VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_0 ),
        .CO({\NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0_CO_UNCONNECTED [3:1],\VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,i__carry__0_i_1__2_n_0}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_2_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_CO_UNCONNECTED [3],\VGA_r/vga_mem_rd/C_Sync/p_0_in2_in ,\VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_n_2 ,\VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__4_n_0,1'b0,i__carry_i_2__3_n_0}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry_i_3__0_n_0,i__carry_i_4__2_n_0,i__carry_i_5__4_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry 
       (.CI(1'b0),
        .CO({\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_0 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_1 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_2 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [6:4],1'b0}),
        .O({\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_4 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_5 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_6 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_7 }),
        .S({\minusOp[0]_carry_i_1_n_0 ,\minusOp[0]_carry_i_2_n_0 ,\minusOp[0]_carry_i_3_n_0 ,\minusOp[0]_carry_i_4_n_0 }));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0 
       (.CI(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_0 ),
        .CO({\NLW_VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_CO_UNCONNECTED [3],\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_1 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_2 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [9:8],1'b0}),
        .O({\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_4 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_5 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_6 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_7 }),
        .S({1'b1,\minusOp[0]_carry__0_i_1_n_0 ,\minusOp[0]_carry__0_i_2_n_0 ,\minusOp[0]_carry__0_i_3_n_0 }));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry 
       (.CI(1'b0),
        .CO({\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_0 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_1 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_2 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_3 }),
        .CYINIT(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [0]),
        .DI(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [4:1]),
        .O({\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_4 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_5 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_6 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_7 }),
        .S({\minusOp[1]_carry_i_1_n_0 ,\minusOp[1]_carry_i_2_n_0 ,\minusOp[1]_carry_i_3_n_0 ,\minusOp[1]_carry_i_4_n_0 }));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0 
       (.CI(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_0 ),
        .CO({\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_0 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_1 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_2 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [8:6],1'b0}),
        .O({\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_4 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_5 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_6 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_7 }),
        .S({\minusOp[1]_carry__0_i_1_n_0 ,\minusOp[1]_carry__0_i_2_n_0 ,\minusOp[1]_carry__0_i_3_n_0 ,\minusOp[1]_carry__0_i_4_n_0 }));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1 
       (.CI(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_0 ),
        .CO({\NLW_VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_CO_UNCONNECTED [3:1],\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [9]}),
        .O({\NLW_VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_O_UNCONNECTED [3:2],\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_6 ,\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_7 }),
        .S({1'b0,1'b0,1'b1,\minusOp[1]_carry__1_i_1_n_0 }));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/ok1_carry 
       (.CI(1'b0),
        .CO({\VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_0 ,\VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_1 ,\VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_2 ,\VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({ok1_carry_i_1_n_0,1'b0,1'b0,ok1_carry_i_2_n_0}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/ok1_carry_O_UNCONNECTED [3:0]),
        .S({ok1_carry_i_3_n_0,ok1_carry_i_4_n_0,ok1_carry_i_5_n_0,ok1_carry_i_6_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/ok1_carry__0 
       (.CI(\VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_0 ),
        .CO({\NLW_VGA_r/vga_mem_rd/C_Sync/ok1_carry__0_CO_UNCONNECTED [3:1],\VGA_r/vga_mem_rd/C_Sync/ok1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/ok1_carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,ok1_carry__0_i_1_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\VGA_r/vga_mem_rd/C_Sync/p_0_in ,\VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_n_1 ,\VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_n_2 ,\VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__2_n_0,1'b0,i__carry_i_2_n_0}),
        .O(\NLW_VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_3__4_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0}));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[0] [0]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [0]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[0] [1]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [1]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[0] [2]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [2]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[0] [3]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [3]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[0] [4]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [4]),
        .R(\VGA_r/rst ));
  (* ORIG_CELL_NAME = "sync_c_q_reg[0][5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[0] [5]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [5]),
        .R(\VGA_r/rst ));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_c_q_reg[0][5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(\sync_c_q[0][5]_rep_i_1_n_0 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep_n_0 ),
        .R(\VGA_r/rst ));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_c_q_reg[0][5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0 
       (.C(clk_display),
        .CE(1'b1),
        .D(\sync_c_q[0][5]_rep_i_1__0_n_0 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0_n_0 ),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[0] [6]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [6]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[0] [7]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [7]),
        .R(\VGA_r/rst ));
  (* ORIG_CELL_NAME = "sync_c_q_reg[0][8]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[0] [8]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [8]),
        .R(\VGA_r/rst ));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_c_q_reg[0][8]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(\sync_c_q[0][8]_rep_i_1_n_0 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep_n_0 ),
        .R(\VGA_r/rst ));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_c_q_reg[0][8]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0 
       (.C(clk_display),
        .CE(1'b1),
        .D(\sync_c_q[0][8]_rep_i_1__0_n_0 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0_n_0 ),
        .R(\VGA_r/rst ));
  (* ORIG_CELL_NAME = "sync_c_q_reg[0][9]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[0] [9]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [9]),
        .R(\VGA_r/rst ));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_c_q_reg[0][9]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(\sync_c_q[0][9]_rep_i_1_n_0 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep_n_0 ),
        .R(\VGA_r/rst ));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_c_q_reg[0][9]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0 
       (.C(clk_display),
        .CE(1'b1),
        .D(\sync_c_q[0][9]_rep_i_1__0_n_0 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0_n_0 ),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[1] [0]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [0]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[1] [1]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [1]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[1] [2]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [2]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[1] [3]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [3]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[1] [4]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [4]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[1] [5]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [5]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[1] [6]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [6]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[1] [7]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [7]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][8] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[1] [8]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [8]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][9] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/v[1] [9]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [9]),
        .R(\VGA_r/rst ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[Hsync] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/andv [0]),
        .Q(\VGA_r/vga_mem_rd/sync[Hsync] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[Vsync] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/andv [1]),
        .Q(\VGA_r/vga_mem_rd/sync[Vsync] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[active] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_reg[active]0 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[active_n_0_] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][0] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [0]),
        .Q(\VGA_r/vga_mem_rd/sync[c][0] [0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "sync_reg[c][0][1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [1]),
        .Q(\VGA_r/vga_mem_rd/sync[c][0] [1]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][0][1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [1]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "sync_reg[c][0][2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [2]),
        .Q(\VGA_r/vga_mem_rd/sync[c][0] [2]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][0][2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [2]),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "sync_reg[c][0][31]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_4 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][0] [31]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][0][31]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_4 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][0][31]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_4 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][0][31]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_4 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][0][31]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_4 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "sync_reg[c][0][3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_7 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][0] [3]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][0][3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_7 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "sync_reg[c][0][4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_6 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][0] [4]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][0][4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_6 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][5] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_5 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][0] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][6] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_4 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][0] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][7] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_7 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][0] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][8] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_6 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][0] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][9] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_5 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][0] [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][0] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\sync[c][1][0]_i_1_n_0 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][1] [0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "sync_reg[c][1][1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_7 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][1] [1]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][1][1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_7 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][1][1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_7 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "sync_reg[c][1][2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_6 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][1] [2]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][1][2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_6 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "sync_reg[c][1][31]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_6 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][1] [31]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][1][31]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_6 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][1][31]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_6 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][1][31]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_6 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][1][31]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_6 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "sync_reg[c][1][3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_5 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][1] [3]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][1][3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_5 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "sync_reg[c][1][4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_4 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][1] [4]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][1][4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_4 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "sync_reg[c][1][5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_7 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][1] [5]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][1][5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_7 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "sync_reg[c][1][6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_6 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][1] [6]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "sync_reg[c][1][6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_6 ),
        .Q(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][7] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_5 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][1] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][8] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_4 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][1] [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][9] 
       (.C(clk_display),
        .CE(\sync[Hsync]_i_1_n_0 ),
        .D(\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_7 ),
        .Q(\VGA_r/vga_mem_rd/sync[c][1] [9]),
        .R(1'b0));
  CARRY4 \VGA_r/vga_mem_rd/divOp[0]3_carry 
       (.CI(1'b0),
        .CO({\VGA_r/vga_mem_rd/divOp[0]3_carry_n_0 ,\VGA_r/vga_mem_rd/divOp[0]3_carry_n_1 ,\VGA_r/vga_mem_rd/divOp[0]3_carry_n_2 ,\VGA_r/vga_mem_rd/divOp[0]3_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\divOp[0]3_carry_i_1_n_0 ,\divOp[0]3_carry_i_2_n_0 ,\divOp[0]3_carry_i_3_n_0 ,\divOp[0]3_carry_i_4_n_0 }),
        .O(\NLW_VGA_r/vga_mem_rd/divOp[0]3_carry_O_UNCONNECTED [3:0]),
        .S({\divOp[0]3_carry_i_5_n_0 ,\divOp[0]3_carry_i_6_n_0 ,\divOp[0]3_carry_i_7_n_0 ,\divOp[0]3_carry_i_8_n_0 }));
  CARRY4 \VGA_r/vga_mem_rd/divOp[0]3_carry__0 
       (.CI(\VGA_r/vga_mem_rd/divOp[0]3_carry_n_0 ),
        .CO({\VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_0 ,\VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_1 ,\VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_2 ,\VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\VGA_r/vga_mem_rd/sync[c][0] [31],\VGA_r/vga_mem_rd/sync[c][0] [31],\VGA_r/vga_mem_rd/sync[c][0] [31],\divOp[0]3_carry__0_i_1_n_0 }),
        .O(\NLW_VGA_r/vga_mem_rd/divOp[0]3_carry__0_O_UNCONNECTED [3:0]),
        .S({\divOp[0]3_carry__0_i_2_n_0 ,\divOp[0]3_carry__0_i_3_n_0 ,\divOp[0]3_carry__0_i_4_n_0 ,\divOp[0]3_carry__0_i_5_n_0 }));
  CARRY4 \VGA_r/vga_mem_rd/divOp[0]3_carry__1 
       (.CI(\VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_0 ),
        .CO({\VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_0 ,\VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_1 ,\VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_2 ,\VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\VGA_r/vga_mem_rd/sync[c][0] [31],\VGA_r/vga_mem_rd/sync[c][0] [31],\VGA_r/vga_mem_rd/sync[c][0] [31],\VGA_r/vga_mem_rd/sync[c][0] [31]}),
        .O(\NLW_VGA_r/vga_mem_rd/divOp[0]3_carry__1_O_UNCONNECTED [3:0]),
        .S({\divOp[0]3_carry__1_i_1_n_0 ,\divOp[0]3_carry__1_i_2_n_0 ,\divOp[0]3_carry__1_i_3_n_0 ,\divOp[0]3_carry__1_i_4_n_0 }));
  CARRY4 \VGA_r/vga_mem_rd/divOp[0]3_carry__2 
       (.CI(\VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_0 ),
        .CO({\VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0 ,\VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_1 ,\VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_2 ,\VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\VGA_r/vga_mem_rd/sync[c][0] [31],\VGA_r/vga_mem_rd/sync[c][0] [31],\VGA_r/vga_mem_rd/sync[c][0] [31]}),
        .O(\NLW_VGA_r/vga_mem_rd/divOp[0]3_carry__2_O_UNCONNECTED [3:0]),
        .S({\divOp[0]3_carry__2_i_1_n_0 ,\divOp[0]3_carry__2_i_2_n_0 ,\divOp[0]3_carry__2_i_3_n_0 ,\divOp[0]3_carry__2_i_4_n_0 }));
  CARRY4 \VGA_r/vga_mem_rd/divOp[1]3_carry 
       (.CI(1'b0),
        .CO({\VGA_r/vga_mem_rd/divOp[1]3_carry_n_0 ,\VGA_r/vga_mem_rd/divOp[1]3_carry_n_1 ,\VGA_r/vga_mem_rd/divOp[1]3_carry_n_2 ,\VGA_r/vga_mem_rd/divOp[1]3_carry_n_3 }),
        .CYINIT(1'b1),
        .DI({\divOp[1]3_carry_i_1_n_0 ,\divOp[1]3_carry_i_2_n_0 ,\divOp[1]3_carry_i_3_n_0 ,\divOp[1]3_carry_i_4_n_0 }),
        .O(\NLW_VGA_r/vga_mem_rd/divOp[1]3_carry_O_UNCONNECTED [3:0]),
        .S({\divOp[1]3_carry_i_5_n_0 ,\divOp[1]3_carry_i_6_n_0 ,\divOp[1]3_carry_i_7_n_0 ,\divOp[1]3_carry_i_8_n_0 }));
  CARRY4 \VGA_r/vga_mem_rd/divOp[1]3_carry__0 
       (.CI(\VGA_r/vga_mem_rd/divOp[1]3_carry_n_0 ),
        .CO({\VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_0 ,\VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_1 ,\VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_2 ,\VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\VGA_r/vga_mem_rd/sync[c][1] [31],\VGA_r/vga_mem_rd/sync[c][1] [31],\VGA_r/vga_mem_rd/sync[c][1] [31],\divOp[1]3_carry__0_i_1_n_0 }),
        .O(\NLW_VGA_r/vga_mem_rd/divOp[1]3_carry__0_O_UNCONNECTED [3:0]),
        .S({\divOp[1]3_carry__0_i_2_n_0 ,\divOp[1]3_carry__0_i_3_n_0 ,\divOp[1]3_carry__0_i_4_n_0 ,\divOp[1]3_carry__0_i_5_n_0 }));
  CARRY4 \VGA_r/vga_mem_rd/divOp[1]3_carry__1 
       (.CI(\VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_0 ),
        .CO({\VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_0 ,\VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_1 ,\VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_2 ,\VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\VGA_r/vga_mem_rd/sync[c][1] [31],\VGA_r/vga_mem_rd/sync[c][1] [31],\VGA_r/vga_mem_rd/sync[c][1] [31],\VGA_r/vga_mem_rd/sync[c][1] [31]}),
        .O(\NLW_VGA_r/vga_mem_rd/divOp[1]3_carry__1_O_UNCONNECTED [3:0]),
        .S({\divOp[1]3_carry__1_i_1_n_0 ,\divOp[1]3_carry__1_i_2_n_0 ,\divOp[1]3_carry__1_i_3_n_0 ,\divOp[1]3_carry__1_i_4_n_0 }));
  CARRY4 \VGA_r/vga_mem_rd/divOp[1]3_carry__2 
       (.CI(\VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_0 ),
        .CO({\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ,\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_1 ,\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_2 ,\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\VGA_r/vga_mem_rd/sync[c][1] [31],\VGA_r/vga_mem_rd/sync[c][1] [31],\VGA_r/vga_mem_rd/sync[c][1] [31]}),
        .O(\NLW_VGA_r/vga_mem_rd/divOp[1]3_carry__2_O_UNCONNECTED [3:0]),
        .S({\divOp[1]3_carry__2_i_1_n_0 ,\divOp[1]3_carry__2_i_2_n_0 ,\divOp[1]3_carry__2_i_3_n_0 ,\divOp[1]3_carry__2_i_4_n_0 }));
  CARRY4 \VGA_r/vga_mem_rd/index0__23_carry 
       (.CI(1'b0),
        .CO({\NLW_VGA_r/vga_mem_rd/index0__23_carry_CO_UNCONNECTED [3:2],\VGA_r/vga_mem_rd/index0__23_carry_n_2 ,\VGA_r/vga_mem_rd/index0__23_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\VGA_r/vga_mem_rd/index0_carry__1_n_7 ,1'b0}),
        .O({\NLW_VGA_r/vga_mem_rd/index0__23_carry_O_UNCONNECTED [3],\VGA_r/vga_mem_rd/index0__23_carry_n_5 ,\VGA_r/vga_mem_rd/index0__23_carry_n_6 ,\VGA_r/vga_mem_rd/index0__23_carry_n_7 }),
        .S({1'b0,index0__23_carry_i_1_n_0,index0__23_carry_i_2_n_0,index0__23_carry_i_3_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/index0_carry 
       (.CI(1'b0),
        .CO({\VGA_r/vga_mem_rd/index0_carry_n_0 ,\VGA_r/vga_mem_rd/index0_carry_n_1 ,\VGA_r/vga_mem_rd/index0_carry_n_2 ,\VGA_r/vga_mem_rd/index0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({index0_carry_i_1_n_0,\VGA_r/vga_mem_rd/v[1] [3:2],1'b0}),
        .O({\VGA_r/vga_mem_rd/index0_carry_n_4 ,\VGA_r/vga_mem_rd/index0_carry_n_5 ,\VGA_r/vga_mem_rd/index0_carry_n_6 ,\VGA_r/vga_mem_rd/index0_carry_n_7 }),
        .S({index0_carry_i_4_n_0,index0_carry_i_5_n_0,index0_carry_i_6_n_0,index0_carry_i_7_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/index0_carry__0 
       (.CI(\VGA_r/vga_mem_rd/index0_carry_n_0 ),
        .CO({\VGA_r/vga_mem_rd/index0_carry__0_n_0 ,\VGA_r/vga_mem_rd/index0_carry__0_n_1 ,\VGA_r/vga_mem_rd/index0_carry__0_n_2 ,\VGA_r/vga_mem_rd/index0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\VGA_r/vga_mem_rd/v[1] [7:5]}),
        .O({\VGA_r/vga_mem_rd/index0_carry__0_n_4 ,\VGA_r/vga_mem_rd/index0_carry__0_n_5 ,\VGA_r/vga_mem_rd/index0_carry__0_n_6 ,\VGA_r/vga_mem_rd/index0_carry__0_n_7 }),
        .S({index0_carry__0_i_4_n_0,index0_carry__0_i_5_n_0,index0_carry__0_i_6_n_0,index0_carry__0_i_7_n_0}));
  CARRY4 \VGA_r/vga_mem_rd/index0_carry__1 
       (.CI(\VGA_r/vga_mem_rd/index0_carry__0_n_0 ),
        .CO({\NLW_VGA_r/vga_mem_rd/index0_carry__1_CO_UNCONNECTED [3:1],\VGA_r/vga_mem_rd/index0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\VGA_r/vga_mem_rd/v[1] [7]}),
        .O({\NLW_VGA_r/vga_mem_rd/index0_carry__1_O_UNCONNECTED [3:2],\VGA_r/vga_mem_rd/index0_carry__1_n_6 ,\VGA_r/vga_mem_rd/index0_carry__1_n_7 }),
        .S({1'b0,1'b0,1'b1,index0_carry__1_i_1_n_0}));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_20 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_37_n_0 ),
        .I1(\VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_38_n_0 ),
        .I3(\VGA_r/vga_mem_rd/index0_carry_n_6 ),
        .O(\VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h1DE2)) 
    \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_21 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_39_n_0 ),
        .I1(\VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_40_n_0 ),
        .I3(\VGA_r/vga_mem_rd/index0_carry_n_7 ),
        .O(\VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_22 
       (.I0(\VGA_r/vga_mem_rd/v[0]__0 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7 ),
        .I2(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I3(\VGA_r/vga_mem_rd/sync[c][1] [1]),
        .O(\VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_4 
       (.I0(\VGA_r/vga_mem_rd/v[0]__0 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7 ),
        .I2(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0_n_0 ),
        .O(\VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[data][0][0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [0]),
        .Q(\vga_out[data][2] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[data][0][1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [1]),
        .Q(\vga_out[data][2] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[data][0][2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [2]),
        .Q(\vga_out[data][2] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[data][0][3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [3]),
        .Q(\vga_out[data][2] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[data][0][4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [4]),
        .Q(\vga_out[data][2] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[data][0][5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [5]),
        .Q(\vga_out[data][2] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[data][0][6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [6]),
        .Q(\vga_out[data][2] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[data][0][7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [7]),
        .Q(\vga_out[data][2] [7]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "vga_out_reg[sync][active]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][active] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][active_n_0_] ),
        .Q(\vga_out[sync][active] ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "vga_out_reg[sync][active]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][active_n_0_] ),
        .Q(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "vga_out_reg[sync][active]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][active_n_0_] ),
        .Q(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "vga_out_reg[sync][active]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][active_n_0_] ),
        .Q(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][c][0][0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][0]_srl2_n_0 ),
        .Q(\vga_out[sync][c][0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][c][0][1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][1]_srl2_n_0 ),
        .Q(\vga_out[sync][c][0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][c][0][2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][2]_srl2_n_0 ),
        .Q(\vga_out[sync][c][0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][c][0][3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][3]_srl2_n_0 ),
        .Q(\vga_out[sync][c][0] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][c][0][4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][4]_srl2_n_0 ),
        .Q(\vga_out[sync][c][0] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][c][1][0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][0]_srl2_n_0 ),
        .Q(\vga_out[sync][c][1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][c][1][1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][1]_srl2_n_0 ),
        .Q(\vga_out[sync][c][1] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][c][1][2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][2]_srl2_n_0 ),
        .Q(\vga_out[sync][c][1] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][c][1][3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][3]_srl2_n_0 ),
        .Q(\vga_out[sync][c][1] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][c][1][4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][4]_srl2_n_0 ),
        .Q(\vga_out[sync][c][1] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_out_reg[sync][c][1][5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][5]_srl2_n_0 ),
        .Q(\vga_out[sync][c][1] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[data][0][0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_data [0]),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [0]),
        .R(\vga_q_q[data][0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[data][0][1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_data [1]),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [1]),
        .R(\vga_q_q[data][0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[data][0][2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_data [2]),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [2]),
        .R(\vga_q_q[data][0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[data][0][3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_data [3]),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [3]),
        .R(\vga_q_q[data][0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[data][0][4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_data [4]),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [4]),
        .R(\vga_q_q[data][0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[data][0][5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_data [5]),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [5]),
        .R(\vga_q_q[data][0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[data][0][6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_data [6]),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [6]),
        .R(\vga_q_q[data][0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[data][0][7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_data [7]),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0] [7]),
        .R(\vga_q_q[data][0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[sync][active] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/vga_q_reg[sync][active_n_0_] ),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][active_n_0_] ),
        .R(1'b0));
  (* srl_bus_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0] " *) 
  (* srl_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_display),
        .D(\VGA_r/vga_mem_rd/sync[c][0] [0]),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][0]_srl2_n_0 ));
  (* srl_bus_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0] " *) 
  (* srl_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_display),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep_n_0 ),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][1]_srl2_n_0 ));
  (* srl_bus_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0] " *) 
  (* srl_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_display),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep_n_0 ),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][2]_srl2_n_0 ));
  (* srl_bus_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0] " *) 
  (* srl_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][3]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_display),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep_n_0 ),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][3]_srl2_n_0 ));
  (* srl_bus_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0] " *) 
  (* srl_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][4]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_display),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep_n_0 ),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][4]_srl2_n_0 ));
  (* srl_bus_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1] " *) 
  (* srl_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_display),
        .D(\VGA_r/vga_mem_rd/sync[c][1] [0]),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][0]_srl2_n_0 ));
  (* srl_bus_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1] " *) 
  (* srl_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][1]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_display),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0_n_0 ),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][1]_srl2_n_0 ));
  (* srl_bus_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1] " *) 
  (* srl_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][2]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_display),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0 ),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][2]_srl2_n_0 ));
  (* srl_bus_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1] " *) 
  (* srl_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][3]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_display),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep_n_0 ),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][3]_srl2_n_0 ));
  (* srl_bus_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1] " *) 
  (* srl_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][4]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_display),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep_n_0 ),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][4]_srl2_n_0 ));
  (* srl_bus_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1] " *) 
  (* srl_name = "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][5]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_display),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep_n_0 ),
        .Q(\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][5]_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_mem_rd/vga_q_reg[sync][active] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/vga_mem_rd/C_Sync/sync_reg[active_n_0_] ),
        .Q(\VGA_r/vga_mem_rd/vga_q_reg[sync][active_n_0_] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_r/vga_rst_reg 
       (.C(clk_display),
        .CE(1'b1),
        .D(\VGA_r/rst0_n_0 ),
        .Q(\VGA_r/rst ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEB1414EB14EBEB14)) 
    \cnt_t_3[1]_i_1 
       (.I0(\cnt_t_3[4]_i_3_n_0 ),
        .I1(\cnt_t_3[2]_i_4__1_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/p_0_in ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I5(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .O(\hdmi/DataEncoders[0].DataEncoder/cnt_t_2 [1]));
  LUT6 #(
    .INIT(64'hEB1414EB14EBEB14)) 
    \cnt_t_3[1]_i_1__0 
       (.I0(\cnt_t_3[4]_i_2_n_0 ),
        .I1(\cnt_t_3[2]_i_4_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/p_0_in ),
        .I3(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I4(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I5(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .O(\hdmi/DataEncoders[1].DataEncoder/cnt_t_2 [1]));
  LUT6 #(
    .INIT(64'hEB1414EB14EBEB14)) 
    \cnt_t_3[1]_i_1__1 
       (.I0(\cnt_t_3[4]_i_2__0_n_0 ),
        .I1(\cnt_t_3[2]_i_4__0_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/p_0_in ),
        .I3(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I4(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I5(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .O(\hdmi/DataEncoders[2].DataEncoder/cnt_t_2 [1]));
  LUT6 #(
    .INIT(64'h65AA99A9559A9AAA)) 
    \cnt_t_3[2]_i_1 
       (.I0(\cnt_t_3[2]_i_2__1_n_0 ),
        .I1(\cnt_t_3[4]_i_2_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/p_0_in ),
        .I3(\cnt_t_3[2]_i_3__1_n_0 ),
        .I4(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I5(\cnt_t_3[2]_i_4_n_0 ),
        .O(\hdmi/DataEncoders[1].DataEncoder/cnt_t_2 [2]));
  LUT6 #(
    .INIT(64'h65AA99A9559A9AAA)) 
    \cnt_t_3[2]_i_1__0 
       (.I0(\cnt_t_3[2]_i_2__0_n_0 ),
        .I1(\cnt_t_3[4]_i_2__0_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/p_0_in ),
        .I3(\cnt_t_3[2]_i_3_n_0 ),
        .I4(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I5(\cnt_t_3[2]_i_4__0_n_0 ),
        .O(\hdmi/DataEncoders[2].DataEncoder/cnt_t_2 [2]));
  LUT6 #(
    .INIT(64'h9595959565A6A995)) 
    \cnt_t_3[2]_i_1__1 
       (.I0(\cnt_t_3[2]_i_2_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I2(\cnt_t_3[2]_i_3__0_n_0 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/p_0_in ),
        .I4(\cnt_t_3[2]_i_4__1_n_0 ),
        .I5(\cnt_t_3[4]_i_3_n_0 ),
        .O(\cnt_t_3[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    \cnt_t_3[2]_i_2 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [2]),
        .I3(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .O(\cnt_t_3[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h96699696)) 
    \cnt_t_3[2]_i_2__0 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [2]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I4(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .O(\cnt_t_3[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h96699696)) 
    \cnt_t_3[2]_i_2__1 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [2]),
        .I3(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I4(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .O(\cnt_t_3[2]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_t_3[2]_i_3 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [1]),
        .O(\cnt_t_3[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_t_3[2]_i_3__0 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [1]),
        .O(\cnt_t_3[2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_t_3[2]_i_3__1 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [1]),
        .O(\cnt_t_3[2]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00F0F0F1FF)) 
    \cnt_t_3[2]_i_4 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [0]),
        .I2(\cnt_t_3[4]_i_6__1_n_0 ),
        .I3(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I4(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .I5(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .O(\cnt_t_3[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00F0F0F1FF)) 
    \cnt_t_3[2]_i_4__0 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [0]),
        .I2(\cnt_t_3[4]_i_6__0_n_0 ),
        .I3(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I4(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .I5(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .O(\cnt_t_3[2]_i_4__0_n_0 ));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  LUT6 #(
    .INIT(64'hFFFFFF00F0F0F1FF)) 
    \cnt_t_3[2]_i_4__1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [0]),
        .I2(\cnt_t_3[4]_i_7__1_n_0 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I4(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .I5(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .O(\cnt_t_3[2]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h0F3C8787B4B4C3F0)) 
    \cnt_t_3[3]_i_2 
       (.I0(\cnt_t_3[3]_i_4_n_0 ),
        .I1(\pDataOutRaw[7]_i_2_n_0 ),
        .I2(\cnt_t_3[3]_i_5_n_0 ),
        .I3(\cnt_t_3[3]_i_6_n_0 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I5(\cnt_t_3[3]_i_7__0_n_0 ),
        .O(\cnt_t_3[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3C0F8787B4B4F0C3)) 
    \cnt_t_3[3]_i_2__0 
       (.I0(\cnt_t_3[3]_i_4__1_n_0 ),
        .I1(\cnt_t_3[2]_i_4_n_0 ),
        .I2(\cnt_t_3[3]_i_5__1_n_0 ),
        .I3(\cnt_t_3[3]_i_6__1_n_0 ),
        .I4(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I5(\cnt_t_3[3]_i_7__1_n_0 ),
        .O(\cnt_t_3[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h3C0F8787B4B4F0C3)) 
    \cnt_t_3[3]_i_2__1 
       (.I0(\cnt_t_3[3]_i_4__0_n_0 ),
        .I1(\cnt_t_3[2]_i_4__0_n_0 ),
        .I2(\cnt_t_3[3]_i_5__0_n_0 ),
        .I3(\cnt_t_3[3]_i_6__0_n_0 ),
        .I4(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I5(\cnt_t_3[3]_i_7_n_0 ),
        .O(\cnt_t_3[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h65A6A66565656565)) 
    \cnt_t_3[3]_i_3 
       (.I0(\cnt_t_3[3]_i_5_n_0 ),
        .I1(\cnt_t_3[3]_i_7__0_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I3(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I5(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .O(\cnt_t_3[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h65A6A66565656565)) 
    \cnt_t_3[3]_i_3__0 
       (.I0(\cnt_t_3[3]_i_5__1_n_0 ),
        .I1(\cnt_t_3[3]_i_7__1_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I3(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I4(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I5(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .O(\cnt_t_3[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h65A6A66565656565)) 
    \cnt_t_3[3]_i_3__1 
       (.I0(\cnt_t_3[3]_i_5__0_n_0 ),
        .I1(\cnt_t_3[3]_i_7_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I4(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I5(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .O(\cnt_t_3[3]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h147D)) 
    \cnt_t_3[3]_i_4 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/p_0_in ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [1]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .I3(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .O(\cnt_t_3[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h147D)) 
    \cnt_t_3[3]_i_4__0 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/p_0_in ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [1]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .O(\cnt_t_3[3]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h147D)) 
    \cnt_t_3[3]_i_4__1 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [1]),
        .I3(\hdmi/DataEncoders[1].DataEncoder/p_0_in ),
        .O(\cnt_t_3[3]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_t_3[3]_i_5 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .I1(\cnt_t_3[4]_i_10_n_0 ),
        .O(\cnt_t_3[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_t_3[3]_i_5__0 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .I1(\cnt_t_3[4]_i_10__1_n_0 ),
        .O(\cnt_t_3[3]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_t_3[3]_i_5__1 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .I1(\cnt_t_3[4]_i_8__0_n_0 ),
        .O(\cnt_t_3[3]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h41D7)) 
    \cnt_t_3[3]_i_6 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/p_0_in ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [1]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .I3(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .O(\cnt_t_3[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hBE28)) 
    \cnt_t_3[3]_i_6__0 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/p_0_in ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [1]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .O(\cnt_t_3[3]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hBE28)) 
    \cnt_t_3[3]_i_6__1 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [1]),
        .I3(\hdmi/DataEncoders[1].DataEncoder/p_0_in ),
        .O(\cnt_t_3[3]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hD22D)) 
    \cnt_t_3[3]_i_7 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [1]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [2]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .O(\cnt_t_3[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hD22D)) 
    \cnt_t_3[3]_i_7__0 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [1]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [2]),
        .I3(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .O(\cnt_t_3[3]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hD22D)) 
    \cnt_t_3[3]_i_7__1 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [1]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [2]),
        .I3(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .O(\cnt_t_3[3]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_t_3[4]_i_1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2_n_0 ),
        .O(\cnt_t_3[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22B2DD4DDD4D22B2)) 
    \cnt_t_3[4]_i_10 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [2]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [3]),
        .I5(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .O(\cnt_t_3[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF222B2BBB)) 
    \cnt_t_3[4]_i_10__0 
       (.I0(\cnt_t_3[3]_i_7__1_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/p_0_in ),
        .I3(\cnt_t_3[2]_i_3__1_n_0 ),
        .I4(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I5(\cnt_t_3[3]_i_5__1_n_0 ),
        .O(\cnt_t_3[4]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'h22B2DD4DDD4D22B2)) 
    \cnt_t_3[4]_i_10__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [2]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I3(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I4(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [3]),
        .I5(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .O(\cnt_t_3[4]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF222B2BBB)) 
    \cnt_t_3[4]_i_11 
       (.I0(\cnt_t_3[3]_i_7__0_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I3(\cnt_t_3[2]_i_3__0_n_0 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/p_0_in ),
        .I5(\cnt_t_3[3]_i_5_n_0 ),
        .O(\cnt_t_3[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hD4DD)) 
    \cnt_t_3[4]_i_11__0 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [2]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I3(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .O(\cnt_t_3[4]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hD4DD)) 
    \cnt_t_3[4]_i_11__1 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [2]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I3(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .O(\cnt_t_3[4]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'hC7DF10F710F7C7DF)) 
    \cnt_t_3[4]_i_12 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I3(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I4(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I5(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [2]),
        .O(\cnt_t_3[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hC7DF10F710F7C7DF)) 
    \cnt_t_3[4]_i_12__0 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I3(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I4(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I5(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [2]),
        .O(\cnt_t_3[4]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hD4DD)) 
    \cnt_t_3[4]_i_12__1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [2]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .O(\cnt_t_3[4]_i_12__1_n_0 ));
  LUT6 #(
    .INIT(64'hC7DF10F710F7C7DF)) 
    \cnt_t_3[4]_i_13 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I4(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I5(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [2]),
        .O(\cnt_t_3[4]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h04550404)) 
    \cnt_t_3[4]_i_2 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/p_0_in ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I2(\cnt_t_3[4]_i_5__0_n_0 ),
        .I3(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .I4(\cnt_t_3[4]_i_6__1_n_0 ),
        .O(\cnt_t_3[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04550404)) 
    \cnt_t_3[4]_i_2__0 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/p_0_in ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I2(\cnt_t_3[4]_i_5__1_n_0 ),
        .I3(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .I4(\cnt_t_3[4]_i_6__0_n_0 ),
        .O(\cnt_t_3[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h04550404)) 
    \cnt_t_3[4]_i_3 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/p_0_in ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I2(\cnt_t_3[4]_i_6_n_0 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .I4(\cnt_t_3[4]_i_7__1_n_0 ),
        .O(\cnt_t_3[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4B77B488784487BB)) 
    \cnt_t_3[4]_i_3__0 
       (.I0(\cnt_t_3[4]_i_7_n_0 ),
        .I1(\cnt_t_3[2]_i_4_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .I3(\cnt_t_3[4]_i_8__0_n_0 ),
        .I4(\cnt_t_3[4]_i_9__0_n_0 ),
        .I5(\cnt_t_3[4]_i_10__0_n_0 ),
        .O(\cnt_t_3[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h47B8B847748B748B)) 
    \cnt_t_3[4]_i_3__1 
       (.I0(\cnt_t_3[4]_i_7__0_n_0 ),
        .I1(\cnt_t_3[2]_i_4__0_n_0 ),
        .I2(\cnt_t_3[4]_i_8__1_n_0 ),
        .I3(\cnt_t_3[4]_i_9__1_n_0 ),
        .I4(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .I5(\cnt_t_3[4]_i_10__1_n_0 ),
        .O(\cnt_t_3[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h4BB4787878874B4B)) 
    \cnt_t_3[4]_i_4 
       (.I0(\cnt_t_3[4]_i_8_n_0 ),
        .I1(\pDataOutRaw[7]_i_2_n_0 ),
        .I2(\cnt_t_3[4]_i_9_n_0 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .I4(\cnt_t_3[4]_i_10_n_0 ),
        .I5(\cnt_t_3[4]_i_11_n_0 ),
        .O(\cnt_t_3[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA69A9A5965A6A69A)) 
    \cnt_t_3[4]_i_4__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .I1(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .I3(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [3]),
        .I4(\cnt_t_3[4]_i_11__1_n_0 ),
        .I5(\cnt_t_3[4]_i_12_n_0 ),
        .O(\cnt_t_3[4]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hA69A9A5965A6A69A)) 
    \cnt_t_3[4]_i_4__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .I1(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [3]),
        .I4(\cnt_t_3[4]_i_11__0_n_0 ),
        .I5(\cnt_t_3[4]_i_12__0_n_0 ),
        .O(\cnt_t_3[4]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hA69A9A5965A6A69A)) 
    \cnt_t_3[4]_i_5 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .I1(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .I3(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [3]),
        .I4(\cnt_t_3[4]_i_12__1_n_0 ),
        .I5(\cnt_t_3[4]_i_13_n_0 ),
        .O(\cnt_t_3[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_t_3[4]_i_5__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .O(\cnt_t_3[4]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_t_3[4]_i_5__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .O(\cnt_t_3[4]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_t_3[4]_i_6 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .O(\cnt_t_3[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \cnt_t_3[4]_i_6__0 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .I1(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .O(\cnt_t_3[4]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \cnt_t_3[4]_i_6__1 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .I1(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .O(\cnt_t_3[4]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h022A02022A2A022A)) 
    \cnt_t_3[4]_i_7 
       (.I0(\cnt_t_3[3]_i_5__1_n_0 ),
        .I1(\cnt_t_3[3]_i_7__1_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I3(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I4(\cnt_t_3[2]_i_3__1_n_0 ),
        .I5(\hdmi/DataEncoders[1].DataEncoder/p_0_in ),
        .O(\cnt_t_3[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h022A02022A2A022A)) 
    \cnt_t_3[4]_i_7__0 
       (.I0(\cnt_t_3[3]_i_5__0_n_0 ),
        .I1(\cnt_t_3[3]_i_7_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I4(\cnt_t_3[2]_i_3_n_0 ),
        .I5(\hdmi/DataEncoders[2].DataEncoder/p_0_in ),
        .O(\cnt_t_3[4]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \cnt_t_3[4]_i_7__1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .I1(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .O(\cnt_t_3[4]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h022A02022A2A022A)) 
    \cnt_t_3[4]_i_8 
       (.I0(\cnt_t_3[3]_i_5_n_0 ),
        .I1(\cnt_t_3[3]_i_7__0_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I3(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I4(\cnt_t_3[2]_i_3__0_n_0 ),
        .I5(\hdmi/DataEncoders[0].DataEncoder/p_0_in ),
        .O(\cnt_t_3[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h22B2DD4DDD4D22B2)) 
    \cnt_t_3[4]_i_8__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [2]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I3(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .I4(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [3]),
        .I5(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .O(\cnt_t_3[4]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF222B2BBB)) 
    \cnt_t_3[4]_i_8__1 
       (.I0(\cnt_t_3[3]_i_7_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/p_0_in ),
        .I3(\cnt_t_3[2]_i_3_n_0 ),
        .I4(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .I5(\cnt_t_3[3]_i_5__0_n_0 ),
        .O(\cnt_t_3[4]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'h9A59)) 
    \cnt_t_3[4]_i_9 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [3]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .I3(\cnt_t_3[4]_i_12__1_n_0 ),
        .O(\cnt_t_3[4]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h9A59)) 
    \cnt_t_3[4]_i_9__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [3]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .I3(\cnt_t_3[4]_i_11__1_n_0 ),
        .O(\cnt_t_3[4]_i_9__0_n_0 ));
  LUT4 #(
    .INIT(16'h9A59)) 
    \cnt_t_3[4]_i_9__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [3]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .I3(\cnt_t_3[4]_i_11__0_n_0 ),
        .O(\cnt_t_3[4]_i_9__1_n_0 ));
  MUXF7 \cnt_t_3_reg[3]_i_1 
       (.I0(\cnt_t_3[3]_i_2_n_0 ),
        .I1(\cnt_t_3[3]_i_3_n_0 ),
        .O(\hdmi/DataEncoders[0].DataEncoder/cnt_t_2 [3]),
        .S(\cnt_t_3[4]_i_3_n_0 ));
  MUXF7 \cnt_t_3_reg[3]_i_1__0 
       (.I0(\cnt_t_3[3]_i_2__0_n_0 ),
        .I1(\cnt_t_3[3]_i_3__0_n_0 ),
        .O(\hdmi/DataEncoders[1].DataEncoder/cnt_t_2 [3]),
        .S(\cnt_t_3[4]_i_2_n_0 ));
  MUXF7 \cnt_t_3_reg[3]_i_1__1 
       (.I0(\cnt_t_3[3]_i_2__1_n_0 ),
        .I1(\cnt_t_3[3]_i_3__1_n_0 ),
        .O(\hdmi/DataEncoders[2].DataEncoder/cnt_t_2 [3]),
        .S(\cnt_t_3[4]_i_2__0_n_0 ));
  MUXF7 \cnt_t_3_reg[4]_i_1 
       (.I0(\cnt_t_3[4]_i_3__0_n_0 ),
        .I1(\cnt_t_3[4]_i_4__0_n_0 ),
        .O(\hdmi/DataEncoders[1].DataEncoder/cnt_t_2 [4]),
        .S(\cnt_t_3[4]_i_2_n_0 ));
  MUXF7 \cnt_t_3_reg[4]_i_1__0 
       (.I0(\cnt_t_3[4]_i_3__1_n_0 ),
        .I1(\cnt_t_3[4]_i_4__1_n_0 ),
        .O(\hdmi/DataEncoders[2].DataEncoder/cnt_t_2 [4]),
        .S(\cnt_t_3[4]_i_2__0_n_0 ));
  MUXF7 \cnt_t_3_reg[4]_i_2 
       (.I0(\cnt_t_3[4]_i_4_n_0 ),
        .I1(\cnt_t_3[4]_i_5_n_0 ),
        .O(\hdmi/DataEncoders[0].DataEncoder/cnt_t_2 [4]),
        .S(\cnt_t_3[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \divOp[0]3_carry__0_i_1 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [8]),
        .I1(\VGA_r/vga_mem_rd/sync[c][0] [9]),
        .O(\divOp[0]3_carry__0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[0]3_carry__0_i_2 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0 ),
        .O(\divOp[0]3_carry__0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[0]3_carry__0_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0 ),
        .O(\divOp[0]3_carry__0_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[0]3_carry__0_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0 ),
        .O(\divOp[0]3_carry__0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \divOp[0]3_carry__0_i_5 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [9]),
        .I1(\VGA_r/vga_mem_rd/sync[c][0] [8]),
        .O(\divOp[0]3_carry__0_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[0]3_carry__1_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0 ),
        .O(\divOp[0]3_carry__1_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[0]3_carry__1_i_2 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0 ),
        .O(\divOp[0]3_carry__1_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[0]3_carry__1_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0 ),
        .O(\divOp[0]3_carry__1_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[0]3_carry__1_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0 ),
        .O(\divOp[0]3_carry__1_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[0]3_carry__2_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2_n_0 ),
        .O(\divOp[0]3_carry__2_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[0]3_carry__2_i_2 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0 ),
        .O(\divOp[0]3_carry__2_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[0]3_carry__2_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0 ),
        .O(\divOp[0]3_carry__2_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[0]3_carry__2_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0 ),
        .O(\divOp[0]3_carry__2_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \divOp[0]3_carry_i_1 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [6]),
        .I1(\VGA_r/vga_mem_rd/sync[c][0] [7]),
        .O(\divOp[0]3_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \divOp[0]3_carry_i_2 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/sync[c][0] [5]),
        .O(\divOp[0]3_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \divOp[0]3_carry_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep_n_0 ),
        .O(\divOp[0]3_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \divOp[0]3_carry_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/sync[c][0] [0]),
        .O(\divOp[0]3_carry_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \divOp[0]3_carry_i_5 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [7]),
        .I1(\VGA_r/vga_mem_rd/sync[c][0] [6]),
        .O(\divOp[0]3_carry_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \divOp[0]3_carry_i_6 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [5]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep_n_0 ),
        .O(\divOp[0]3_carry_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \divOp[0]3_carry_i_7 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep_n_0 ),
        .O(\divOp[0]3_carry_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \divOp[0]3_carry_i_8 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [0]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep_n_0 ),
        .O(\divOp[0]3_carry_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \divOp[1]3_carry__0_i_1 
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [9]),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [8]),
        .O(\divOp[1]3_carry__0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[1]3_carry__0_i_2 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0 ),
        .O(\divOp[1]3_carry__0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[1]3_carry__0_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0 ),
        .O(\divOp[1]3_carry__0_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[1]3_carry__0_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0 ),
        .O(\divOp[1]3_carry__0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \divOp[1]3_carry__0_i_5 
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [8]),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [9]),
        .O(\divOp[1]3_carry__0_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[1]3_carry__1_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0 ),
        .O(\divOp[1]3_carry__1_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[1]3_carry__1_i_2 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0 ),
        .O(\divOp[1]3_carry__1_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[1]3_carry__1_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0 ),
        .O(\divOp[1]3_carry__1_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[1]3_carry__1_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0 ),
        .O(\divOp[1]3_carry__1_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[1]3_carry__2_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0 ),
        .O(\divOp[1]3_carry__2_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[1]3_carry__2_i_2 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0 ),
        .O(\divOp[1]3_carry__2_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[1]3_carry__2_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0 ),
        .O(\divOp[1]3_carry__2_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \divOp[1]3_carry__2_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0 ),
        .O(\divOp[1]3_carry__2_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \divOp[1]3_carry_i_1 
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [6]),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [7]),
        .O(\divOp[1]3_carry_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \divOp[1]3_carry_i_2 
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [4]),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [5]),
        .O(\divOp[1]3_carry_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \divOp[1]3_carry_i_3 
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [3]),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [2]),
        .O(\divOp[1]3_carry_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \divOp[1]3_carry_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [0]),
        .O(\divOp[1]3_carry_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \divOp[1]3_carry_i_5 
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [7]),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [6]),
        .O(\divOp[1]3_carry_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \divOp[1]3_carry_i_6 
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [5]),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [4]),
        .O(\divOp[1]3_carry_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \divOp[1]3_carry_i_7 
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [2]),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [3]),
        .O(\divOp[1]3_carry_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \divOp[1]3_carry_i_8 
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [0]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0 ),
        .O(\divOp[1]3_carry_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    geqOp0_carry__0_i_1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [8]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [9]),
        .O(geqOp0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    geqOp0_carry__0_i_2
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [8]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [9]),
        .O(geqOp0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    geqOp0_carry_i_1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [6]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [7]),
        .O(geqOp0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    geqOp0_carry_i_2
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [4]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [5]),
        .O(geqOp0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    geqOp0_carry_i_3
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [3]),
        .O(geqOp0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp0_carry_i_4
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [0]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [1]),
        .O(geqOp0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    geqOp0_carry_i_5
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [6]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [7]),
        .O(geqOp0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    geqOp0_carry_i_6
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [4]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [5]),
        .O(geqOp0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    geqOp0_carry_i_7
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [3]),
        .O(geqOp0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp0_carry_i_8
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [1]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [0]),
        .O(geqOp0_carry_i_8_n_0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS \hdmi/ClockSerializer/OutputBuffer 
       (.I(\hdmi/ClockSerializer/I ),
        .O(hdmi_TMDS_Clk_p),
        .OB(hdmi_TMDS_Clk_n));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \hdmi/ClockSerializer/SerializerMaster 
       (.CLK(clk_hdmi),
        .CLKDIV(clk_display),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b1),
        .D7(1'b1),
        .D8(1'b1),
        .OCE(1'b1),
        .OFB(\NLW_hdmi/ClockSerializer/SerializerMaster_OFB_UNCONNECTED ),
        .OQ(\hdmi/ClockSerializer/I ),
        .RST(\hdmi/LockLostReset/SyncAsyncx/oSyncStages [1]),
        .SHIFTIN1(\hdmi/ClockSerializer/SHIFTIN1 ),
        .SHIFTIN2(\hdmi/ClockSerializer/SHIFTIN2 ),
        .SHIFTOUT1(\NLW_hdmi/ClockSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_hdmi/ClockSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_hdmi/ClockSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_hdmi/ClockSerializer/SerializerMaster_TFB_UNCONNECTED ),
        .TQ(\NLW_hdmi/ClockSerializer/SerializerMaster_TQ_UNCONNECTED ));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \hdmi/ClockSerializer/SerializerSlave 
       (.CLK(clk_hdmi),
        .CLKDIV(clk_display),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b1),
        .D4(1'b1),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(\NLW_hdmi/ClockSerializer/SerializerSlave_OFB_UNCONNECTED ),
        .OQ(\NLW_hdmi/ClockSerializer/SerializerSlave_OQ_UNCONNECTED ),
        .RST(\hdmi/LockLostReset/SyncAsyncx/oSyncStages [1]),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\hdmi/ClockSerializer/SHIFTIN1 ),
        .SHIFTOUT2(\hdmi/ClockSerializer/SHIFTIN2 ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_hdmi/ClockSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_hdmi/ClockSerializer/SerializerSlave_TFB_UNCONNECTED ),
        .TQ(\NLW_hdmi/ClockSerializer/SerializerSlave_TQ_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/cnt_t_2 [1]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\cnt_t_3[2]_i_1__1_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/cnt_t_2 [3]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/cnt_t_2 [4]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "n0q_m_2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n0q_m_2[1]_i_1_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [1]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "n0q_m_2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n0q_m_2[1]_i_1_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n0q_m_2[2]_i_1_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n0q_m_2[3]_i_1_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/n0q_m_2 [3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hdmi/DataEncoders[0].DataEncoder/n1d_1[0]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4_n_0 ),
        .I1(vid_pData[12]),
        .I2(vid_pData[14]),
        .I3(vid_pData[13]),
        .O(\hdmi/DataEncoders[0].DataEncoder/sum_bits__0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7DD78228)) 
    \hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4_n_0 ),
        .I1(vid_pData[12]),
        .I2(vid_pData[14]),
        .I3(vid_pData[13]),
        .I4(\hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_2_n_0 ),
        .O(\hdmi/DataEncoders[0].DataEncoder/sum_bits__0 [1]));
  LUT6 #(
    .INIT(64'h17717117E88E8EE8)) 
    \hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_2 
       (.I0(vid_pData[8]),
        .I1(vid_pData[15]),
        .I2(vid_pData[10]),
        .I3(vid_pData[11]),
        .I4(vid_pData[9]),
        .I5(\hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_3_n_0 ),
        .O(\hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_3 
       (.I0(vid_pData[14]),
        .I1(vid_pData[13]),
        .I2(vid_pData[12]),
        .I3(vid_pData[11]),
        .I4(vid_pData[10]),
        .I5(vid_pData[9]),
        .O(\hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFEEAEAA8A880)) 
    \hdmi/DataEncoders[0].DataEncoder/n1d_1[2]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_3_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4_n_0 ),
        .I2(vid_pData[12]),
        .I3(vid_pData[13]),
        .I4(vid_pData[14]),
        .I5(\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_2_n_0 ),
        .O(\hdmi/DataEncoders[0].DataEncoder/sum_bits__0 [2]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_2_n_0 ),
        .I1(vid_pData[12]),
        .I2(vid_pData[13]),
        .I3(vid_pData[14]),
        .I4(\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_3_n_0 ),
        .I5(\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4_n_0 ),
        .O(\hdmi/DataEncoders[0].DataEncoder/sum_bits__0 [3]));
  LUT3 #(
    .INIT(8'hE8)) 
    \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_2 
       (.I0(vid_pData[9]),
        .I1(vid_pData[10]),
        .I2(vid_pData[11]),
        .O(\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_3 
       (.I0(vid_pData[10]),
        .I1(vid_pData[11]),
        .I2(vid_pData[9]),
        .I3(vid_pData[8]),
        .I4(vid_pData[15]),
        .O(\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4 
       (.I0(vid_pData[10]),
        .I1(vid_pData[11]),
        .I2(vid_pData[9]),
        .I3(vid_pData[8]),
        .I4(vid_pData[15]),
        .O(\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/sum_bits__0 [0]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/sum_bits__0 [1]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/sum_bits__0 [2]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/sum_bits__0 [3]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n1q_m_2[0]_i_1_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "n1q_m_2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/n1q_m_1 [1]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "n1q_m_2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n1q_m_2[1]_rep_i_1__1_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/n1q_m_1 [2]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/n1q_m_1 [3]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .R(1'b0));
  (* srl_bus_name = "\hdmi/DataEncoders " *) 
  (* srl_name = "\hdmi/DataEncoders[0].DataEncoder/pC0_1_reg_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi/DataEncoders[0].DataEncoder/pC0_1_reg_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_display),
        .D(\VGA_r/vga_mem_rd/sync[Hsync] ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/pC0_1_reg_srl6_n_0 ));
  (* ORIG_CELL_NAME = "pC0_2_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pC0_2_reg 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/pC0_1_reg_srl6_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/pC0_2 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pC0_2_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/pC0_1_reg_srl6_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep_n_0 ),
        .R(1'b0));
  (* srl_bus_name = "\hdmi/DataEncoders " *) 
  (* srl_name = "\hdmi/DataEncoders[0].DataEncoder/pC1_1_reg_srl6 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi/DataEncoders[0].DataEncoder/pC1_1_reg_srl6 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_display),
        .D(\VGA_r/vga_mem_rd/sync[Vsync] ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/pC1_1_reg_srl6_n_0 ));
  (* ORIG_CELL_NAME = "pC1_2_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pC1_2_reg 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/pC1_1_reg_srl6_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/pC1_2 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pC1_2_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/pC1_1_reg_srl6_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[0]_i_1_n_0 ),
        .Q(\hdmi/pDataOutRaw[0] [0]),
        .R(\pDataOutRaw[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[1]_i_1_n_0 ),
        .Q(\hdmi/pDataOutRaw[0] [1]),
        .R(\pDataOutRaw[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/q_out_2 [2]),
        .Q(\hdmi/pDataOutRaw[0] [2]),
        .S(\pDataOutRaw[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[3]_i_1_n_0 ),
        .Q(\hdmi/pDataOutRaw[0] [3]),
        .R(\pDataOutRaw[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/q_out_2 [4]),
        .Q(\hdmi/pDataOutRaw[0] [4]),
        .S(\pDataOutRaw[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[5]_i_1_n_0 ),
        .Q(\hdmi/pDataOutRaw[0] [5]),
        .R(\pDataOutRaw[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/q_out_2 [6]),
        .Q(\hdmi/pDataOutRaw[0] [6]),
        .S(\pDataOutRaw[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[7]_i_1_n_0 ),
        .Q(\hdmi/pDataOutRaw[0] [7]),
        .R(\pDataOutRaw[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[8] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/q_out_2 [8]),
        .Q(\hdmi/pDataOutRaw[0] [8]),
        .S(\pDataOutRaw[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[9] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/q_out_2 [9]),
        .Q(\hdmi/pDataOutRaw[0] [9]),
        .S(\pDataOutRaw[9]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "pDataOut_1_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[8]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[8]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[8]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pDataOut_1_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[9]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[9]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[10]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/p_0_in0_in ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pDataOut_1_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[11]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/p_0_in2_in ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[11]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[12]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/p_0_in4_in ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[13]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/p_0_in6_in ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pDataOut_1_reg[6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[14]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/p_0_in8_in ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[14]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[15]),
        .Q(\hdmi/DataEncoders[0].DataEncoder/p_0_in10_in ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\q_m_2[1]_i_1_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/p_0_in9_in ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\q_m_2[3]_i_1_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/p_0_in7_in ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\q_m_2[5]_i_1_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/p_0_in5_in ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[0].DataEncoder/p_1_in12_in ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[8] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\q_m_2[8]_i_1_n_0 ),
        .Q(\hdmi/DataEncoders[0].DataEncoder/p_0_in ),
        .R(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS \hdmi/DataEncoders[0].DataSerializer/OutputBuffer 
       (.I(\hdmi/DataEncoders[0].DataSerializer/I ),
        .O(hdmi_TMDS_Data_p[0]),
        .OB(hdmi_TMDS_Data_n[0]));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \hdmi/DataEncoders[0].DataSerializer/SerializerMaster 
       (.CLK(clk_hdmi),
        .CLKDIV(clk_display),
        .D1(\hdmi/pDataOutRaw[0] [0]),
        .D2(\hdmi/pDataOutRaw[0] [1]),
        .D3(\hdmi/pDataOutRaw[0] [2]),
        .D4(\hdmi/pDataOutRaw[0] [3]),
        .D5(\hdmi/pDataOutRaw[0] [4]),
        .D6(\hdmi/pDataOutRaw[0] [5]),
        .D7(\hdmi/pDataOutRaw[0] [6]),
        .D8(\hdmi/pDataOutRaw[0] [7]),
        .OCE(1'b1),
        .OFB(\NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_OFB_UNCONNECTED ),
        .OQ(\hdmi/DataEncoders[0].DataSerializer/I ),
        .RST(\hdmi/LockLostReset/SyncAsyncx/oSyncStages [1]),
        .SHIFTIN1(\hdmi/DataEncoders[0].DataSerializer/SHIFTIN1 ),
        .SHIFTIN2(\hdmi/DataEncoders[0].DataSerializer/SHIFTIN2 ),
        .SHIFTOUT1(\NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_TFB_UNCONNECTED ),
        .TQ(\NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_TQ_UNCONNECTED ));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \hdmi/DataEncoders[0].DataSerializer/SerializerSlave 
       (.CLK(clk_hdmi),
        .CLKDIV(clk_display),
        .D1(1'b0),
        .D2(1'b0),
        .D3(\hdmi/pDataOutRaw[0] [8]),
        .D4(\hdmi/pDataOutRaw[0] [9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(\NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_OFB_UNCONNECTED ),
        .OQ(\NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_OQ_UNCONNECTED ),
        .RST(\hdmi/LockLostReset/SyncAsyncx/oSyncStages [1]),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\hdmi/DataEncoders[0].DataSerializer/SHIFTIN1 ),
        .SHIFTOUT2(\hdmi/DataEncoders[0].DataSerializer/SHIFTIN2 ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_TFB_UNCONNECTED ),
        .TQ(\NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_TQ_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/cnt_t_2 [1]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/cnt_t_2 [2]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/cnt_t_2 [3]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/cnt_t_2 [4]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "n0q_m_2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n0q_m_2[1]_i_1__1_n_0 ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [1]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "n0q_m_2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n0q_m_2[1]_i_1__1_n_0 ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n0q_m_2[2]_i_1__0_n_0 ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n0q_m_2[3]_i_1__0_n_0 ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/n0q_m_2 [3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hdmi/DataEncoders[1].DataEncoder/n1d_1[0]_i_1 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4_n_0 ),
        .I1(vid_pData[4]),
        .I2(vid_pData[6]),
        .I3(vid_pData[5]),
        .O(\hdmi/DataEncoders[1].DataEncoder/sum_bits__0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7DD78228)) 
    \hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_1 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4_n_0 ),
        .I1(vid_pData[4]),
        .I2(vid_pData[6]),
        .I3(vid_pData[5]),
        .I4(\hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_2_n_0 ),
        .O(\hdmi/DataEncoders[1].DataEncoder/sum_bits__0 [1]));
  LUT6 #(
    .INIT(64'h17717117E88E8EE8)) 
    \hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_2 
       (.I0(vid_pData[0]),
        .I1(vid_pData[7]),
        .I2(vid_pData[2]),
        .I3(vid_pData[3]),
        .I4(vid_pData[1]),
        .I5(\hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_3_n_0 ),
        .O(\hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_3 
       (.I0(vid_pData[6]),
        .I1(vid_pData[5]),
        .I2(vid_pData[4]),
        .I3(vid_pData[3]),
        .I4(vid_pData[2]),
        .I5(vid_pData[1]),
        .O(\hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFEEAEAA8A880)) 
    \hdmi/DataEncoders[1].DataEncoder/n1d_1[2]_i_1 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_3_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4_n_0 ),
        .I2(vid_pData[4]),
        .I3(vid_pData[5]),
        .I4(vid_pData[6]),
        .I5(\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_2_n_0 ),
        .O(\hdmi/DataEncoders[1].DataEncoder/sum_bits__0 [2]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_1 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_2_n_0 ),
        .I1(vid_pData[4]),
        .I2(vid_pData[5]),
        .I3(vid_pData[6]),
        .I4(\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_3_n_0 ),
        .I5(\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4_n_0 ),
        .O(\hdmi/DataEncoders[1].DataEncoder/sum_bits__0 [3]));
  LUT3 #(
    .INIT(8'hE8)) 
    \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_2 
       (.I0(vid_pData[1]),
        .I1(vid_pData[2]),
        .I2(vid_pData[3]),
        .O(\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_3 
       (.I0(vid_pData[2]),
        .I1(vid_pData[3]),
        .I2(vid_pData[1]),
        .I3(vid_pData[0]),
        .I4(vid_pData[7]),
        .O(\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4 
       (.I0(vid_pData[2]),
        .I1(vid_pData[3]),
        .I2(vid_pData[1]),
        .I3(vid_pData[0]),
        .I4(vid_pData[7]),
        .O(\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/sum_bits__0 [0]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/sum_bits__0 [1]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/sum_bits__0 [2]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/sum_bits__0 [3]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n1q_m_2[0]_i_1__0_n_0 ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "n1q_m_2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/n1q_m_1 [1]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "n1q_m_2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n1q_m_2[1]_rep_i_1__0_n_0 ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/n1q_m_1 [2]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/n1q_m_1 [3]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[0]_i_1__1_n_0 ),
        .Q(\hdmi/pDataOutRaw[1] [0]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[1]_i_1__1_n_0 ),
        .Q(\hdmi/pDataOutRaw[1] [1]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/q_out_2 [2]),
        .Q(\hdmi/pDataOutRaw[1] [2]),
        .S(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[3]_i_1__1_n_0 ),
        .Q(\hdmi/pDataOutRaw[1] [3]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/q_out_2 [4]),
        .Q(\hdmi/pDataOutRaw[1] [4]),
        .S(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[5]_i_1__1_n_0 ),
        .Q(\hdmi/pDataOutRaw[1] [5]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/q_out_2 [6]),
        .Q(\hdmi/pDataOutRaw[1] [6]),
        .S(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[7]_i_1__1_n_0 ),
        .Q(\hdmi/pDataOutRaw[1] [7]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[8] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/q_out_2 [8]),
        .Q(\hdmi/pDataOutRaw[1] [8]),
        .S(\cnt_t_3[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[9] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[9]_i_1__0_n_0 ),
        .Q(\hdmi/pDataOutRaw[1] [9]),
        .S(\cnt_t_3[4]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "pDataOut_1_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[0]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[0]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[0]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pDataOut_1_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[1]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[1]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[2]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/p_0_in0_in ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pDataOut_1_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[3]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/p_0_in2_in ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[3]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[4]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/p_0_in4_in ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[5]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/p_0_in6_in ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pDataOut_1_reg[6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[6]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/p_0_in8_in ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[6]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[7]),
        .Q(\hdmi/DataEncoders[1].DataEncoder/p_0_in10_in ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\q_m_2[1]_i_1__0_n_0 ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/p_0_in9_in ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\q_m_2[3]_i_1__0_n_0 ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/p_0_in7_in ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\q_m_2[5]_i_1__0_n_0 ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/p_0_in5_in ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[1].DataEncoder/p_1_in12_in ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[8] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\q_m_2[8]_i_1__0_n_0 ),
        .Q(\hdmi/DataEncoders[1].DataEncoder/p_0_in ),
        .R(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS \hdmi/DataEncoders[1].DataSerializer/OutputBuffer 
       (.I(\hdmi/DataEncoders[1].DataSerializer/I ),
        .O(hdmi_TMDS_Data_p[1]),
        .OB(hdmi_TMDS_Data_n[1]));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \hdmi/DataEncoders[1].DataSerializer/SerializerMaster 
       (.CLK(clk_hdmi),
        .CLKDIV(clk_display),
        .D1(\hdmi/pDataOutRaw[1] [0]),
        .D2(\hdmi/pDataOutRaw[1] [1]),
        .D3(\hdmi/pDataOutRaw[1] [2]),
        .D4(\hdmi/pDataOutRaw[1] [3]),
        .D5(\hdmi/pDataOutRaw[1] [4]),
        .D6(\hdmi/pDataOutRaw[1] [5]),
        .D7(\hdmi/pDataOutRaw[1] [6]),
        .D8(\hdmi/pDataOutRaw[1] [7]),
        .OCE(1'b1),
        .OFB(\NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_OFB_UNCONNECTED ),
        .OQ(\hdmi/DataEncoders[1].DataSerializer/I ),
        .RST(\hdmi/LockLostReset/SyncAsyncx/oSyncStages [1]),
        .SHIFTIN1(\hdmi/DataEncoders[1].DataSerializer/SHIFTIN1 ),
        .SHIFTIN2(\hdmi/DataEncoders[1].DataSerializer/SHIFTIN2 ),
        .SHIFTOUT1(\NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_TFB_UNCONNECTED ),
        .TQ(\NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_TQ_UNCONNECTED ));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \hdmi/DataEncoders[1].DataSerializer/SerializerSlave 
       (.CLK(clk_hdmi),
        .CLKDIV(clk_display),
        .D1(1'b0),
        .D2(1'b0),
        .D3(\hdmi/pDataOutRaw[1] [8]),
        .D4(\hdmi/pDataOutRaw[1] [9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(\NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_OFB_UNCONNECTED ),
        .OQ(\NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_OQ_UNCONNECTED ),
        .RST(\hdmi/LockLostReset/SyncAsyncx/oSyncStages [1]),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\hdmi/DataEncoders[1].DataSerializer/SHIFTIN1 ),
        .SHIFTOUT2(\hdmi/DataEncoders[1].DataSerializer/SHIFTIN2 ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_TFB_UNCONNECTED ),
        .TQ(\NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_TQ_UNCONNECTED ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/cnt_t_2 [1]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [1]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/cnt_t_2 [2]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [2]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/cnt_t_2 [3]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [3]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/cnt_t_2 [4]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "n0q_m_2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n0q_m_2[1]_i_1__0_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [1]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "n0q_m_2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n0q_m_2[1]_i_1__0_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n0q_m_2[2]_i_1__1_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n0q_m_2[3]_i_1__1_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/n0q_m_2 [3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \hdmi/DataEncoders[2].DataEncoder/n1d_1[0]_i_1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4_n_0 ),
        .I1(vid_pData[20]),
        .I2(vid_pData[22]),
        .I3(vid_pData[21]),
        .O(\hdmi/DataEncoders[2].DataEncoder/sum_bits__0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7DD78228)) 
    \hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4_n_0 ),
        .I1(vid_pData[20]),
        .I2(vid_pData[22]),
        .I3(vid_pData[21]),
        .I4(\hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_2_n_0 ),
        .O(\hdmi/DataEncoders[2].DataEncoder/sum_bits__0 [1]));
  LUT6 #(
    .INIT(64'h17717117E88E8EE8)) 
    \hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_2 
       (.I0(vid_pData[16]),
        .I1(vid_pData[23]),
        .I2(vid_pData[18]),
        .I3(vid_pData[19]),
        .I4(vid_pData[17]),
        .I5(\hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_3_n_0 ),
        .O(\hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_3 
       (.I0(vid_pData[22]),
        .I1(vid_pData[21]),
        .I2(vid_pData[20]),
        .I3(vid_pData[19]),
        .I4(vid_pData[18]),
        .I5(vid_pData[17]),
        .O(\hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFEFEEAEAA8A880)) 
    \hdmi/DataEncoders[2].DataEncoder/n1d_1[2]_i_1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_3_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4_n_0 ),
        .I2(vid_pData[20]),
        .I3(vid_pData[21]),
        .I4(vid_pData[22]),
        .I5(\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_2_n_0 ),
        .O(\hdmi/DataEncoders[2].DataEncoder/sum_bits__0 [2]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_2_n_0 ),
        .I1(vid_pData[20]),
        .I2(vid_pData[21]),
        .I3(vid_pData[22]),
        .I4(\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_3_n_0 ),
        .I5(\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4_n_0 ),
        .O(\hdmi/DataEncoders[2].DataEncoder/sum_bits__0 [3]));
  LUT3 #(
    .INIT(8'hE8)) 
    \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_2 
       (.I0(vid_pData[17]),
        .I1(vid_pData[18]),
        .I2(vid_pData[19]),
        .O(\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_3 
       (.I0(vid_pData[17]),
        .I1(vid_pData[19]),
        .I2(vid_pData[18]),
        .I3(vid_pData[23]),
        .I4(vid_pData[16]),
        .O(\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4 
       (.I0(vid_pData[17]),
        .I1(vid_pData[19]),
        .I2(vid_pData[18]),
        .I3(vid_pData[23]),
        .I4(vid_pData[16]),
        .O(\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/sum_bits__0 [0]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/sum_bits__0 [1]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/sum_bits__0 [2]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/sum_bits__0 [3]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n1q_m_2[0]_i_1__1_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "n1q_m_2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/n1q_m_1 [1]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [1]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "n1q_m_2_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(\n1q_m_2[1]_rep_i_1_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/n1q_m_1 [2]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/n1q_m_1 [3]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[0]_i_1__0_n_0 ),
        .Q(\hdmi/pDataOutRaw[2] [0]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[1]_i_1__0_n_0 ),
        .Q(\hdmi/pDataOutRaw[2] [1]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/q_out_2 [2]),
        .Q(\hdmi/pDataOutRaw[2] [2]),
        .S(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[3]_i_1__0_n_0 ),
        .Q(\hdmi/pDataOutRaw[2] [3]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/q_out_2 [4]),
        .Q(\hdmi/pDataOutRaw[2] [4]),
        .S(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[5]_i_1__0_n_0 ),
        .Q(\hdmi/pDataOutRaw[2] [5]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/q_out_2 [6]),
        .Q(\hdmi/pDataOutRaw[2] [6]),
        .S(\cnt_t_3[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[7]_i_1__0_n_0 ),
        .Q(\hdmi/pDataOutRaw[2] [7]),
        .R(\cnt_t_3[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[8] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/q_out_2 [8]),
        .Q(\hdmi/pDataOutRaw[2] [8]),
        .S(\cnt_t_3[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[9] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\pDataOutRaw[9]_i_1__1_n_0 ),
        .Q(\hdmi/pDataOutRaw[2] [9]),
        .S(\cnt_t_3[4]_i_1_n_0 ));
  (* ORIG_CELL_NAME = "pDataOut_1_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[16]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[16]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[16]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pDataOut_1_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[17]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[17]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[18]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/p_0_in0_in ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pDataOut_1_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[19]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/p_0_in2_in ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[19]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[20]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/p_0_in4_in ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[21]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/p_0_in6_in ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pDataOut_1_reg[6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[22]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/p_0_in8_in ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pDataOut_1_reg[6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[22]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(vid_pData[23]),
        .Q(\hdmi/DataEncoders[2].DataEncoder/p_0_in10_in ),
        .R(1'b0));
  (* srl_bus_name = "\hdmi/DataEncoders " *) 
  (* srl_name = "\hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_display),
        .D(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3_n_0 ));
  (* ORIG_CELL_NAME = "pVde_2_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/pVde_2 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pVde_2_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pVde_2_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pVde_2_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0 ),
        .R(1'b0));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  (* ORIG_CELL_NAME = "pVde_2_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\q_m_2[1]_i_1__1_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/p_0_in9_in ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\q_m_2[3]_i_1__1_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/p_0_in7_in ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\q_m_2[5]_i_1__1_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/p_0_in5_in ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/DataEncoders[2].DataEncoder/p_1_in12_in ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[8] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\q_m_2[8]_i_1__1_n_0 ),
        .Q(\hdmi/DataEncoders[2].DataEncoder/p_0_in ),
        .R(1'b0));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS \hdmi/DataEncoders[2].DataSerializer/OutputBuffer 
       (.I(\hdmi/DataEncoders[2].DataSerializer/I ),
        .O(hdmi_TMDS_Data_p[2]),
        .OB(hdmi_TMDS_Data_n[2]));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \hdmi/DataEncoders[2].DataSerializer/SerializerMaster 
       (.CLK(clk_hdmi),
        .CLKDIV(clk_display),
        .D1(\hdmi/pDataOutRaw[2] [0]),
        .D2(\hdmi/pDataOutRaw[2] [1]),
        .D3(\hdmi/pDataOutRaw[2] [2]),
        .D4(\hdmi/pDataOutRaw[2] [3]),
        .D5(\hdmi/pDataOutRaw[2] [4]),
        .D6(\hdmi/pDataOutRaw[2] [5]),
        .D7(\hdmi/pDataOutRaw[2] [6]),
        .D8(\hdmi/pDataOutRaw[2] [7]),
        .OCE(1'b1),
        .OFB(\NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_OFB_UNCONNECTED ),
        .OQ(\hdmi/DataEncoders[2].DataSerializer/I ),
        .RST(\hdmi/LockLostReset/SyncAsyncx/oSyncStages [1]),
        .SHIFTIN1(\hdmi/DataEncoders[2].DataSerializer/SHIFTIN1 ),
        .SHIFTIN2(\hdmi/DataEncoders[2].DataSerializer/SHIFTIN2 ),
        .SHIFTOUT1(\NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_TFB_UNCONNECTED ),
        .TQ(\NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_TQ_UNCONNECTED ));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    \hdmi/DataEncoders[2].DataSerializer/SerializerSlave 
       (.CLK(clk_hdmi),
        .CLKDIV(clk_display),
        .D1(1'b0),
        .D2(1'b0),
        .D3(\hdmi/pDataOutRaw[2] [8]),
        .D4(\hdmi/pDataOutRaw[2] [9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(\NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_OFB_UNCONNECTED ),
        .OQ(\NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_OQ_UNCONNECTED ),
        .RST(\hdmi/LockLostReset/SyncAsyncx/oSyncStages [1]),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\hdmi/DataEncoders[2].DataSerializer/SHIFTIN1 ),
        .SHIFTOUT2(\hdmi/DataEncoders[2].DataSerializer/SHIFTIN2 ),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(\NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED ),
        .TCE(1'b0),
        .TFB(\NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_TFB_UNCONNECTED ),
        .TQ(\NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_TQ_UNCONNECTED ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \hdmi/LockLostReset/SyncAsyncx/oSyncStages_reg[0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\hdmi/LockLostReset/aRst_int ),
        .Q(\hdmi/LockLostReset/SyncAsyncx/oSyncStages [0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \hdmi/LockLostReset/SyncAsyncx/oSyncStages_reg[1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\hdmi/LockLostReset/SyncAsyncx/oSyncStages [0]),
        .PRE(\hdmi/LockLostReset/aRst_int ),
        .Q(\hdmi/LockLostReset/SyncAsyncx/oSyncStages [1]));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [8]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [9]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__0
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0_n_0 ),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1__1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep_n_0 ),
        .O(i__carry__0_i_1__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1__2
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [9]),
        .O(i__carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_2
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [9]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [8]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2__0
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [8]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [9]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2__1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0_n_0 ),
        .O(i__carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2__2
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep_n_0 ),
        .O(i__carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [4]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0_n_0 ),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_1__0
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [6]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [7]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1__1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [6]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [7]),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_1__2
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [8]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [9]),
        .O(i__carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1__3
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [0]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [1]),
        .O(i__carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_1__4
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0_n_0 ),
        .O(i__carry_i_1__4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_2
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [5]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_2__0
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [4]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [5]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2__1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [3]),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_2__2
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [3]),
        .O(i__carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_2__3
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [4]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0_n_0 ),
        .O(i__carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_2__4
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [6]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [7]),
        .O(i__carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [3]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_3__0
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0_n_0 ),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [0]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [1]),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3__2
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [0]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [1]),
        .O(i__carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_3__3
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [4]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [5]),
        .O(i__carry_i_3__3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_3__4
       (.I0(\sync_c_q_reg[0][9]_i_2_n_6 ),
        .O(i__carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_4
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [8]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [9]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4__0
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [6]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [7]),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [6]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [7]),
        .O(i__carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4__2
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [6]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [7]),
        .O(i__carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_4__3
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [7]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [6]),
        .O(i__carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4__4
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [3]),
        .O(i__carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [6]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [7]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5__0
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [5]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [4]),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5__1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [4]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0_n_0 ),
        .O(i__carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5__2
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [4]),
        .O(i__carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5__3
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [0]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [1]),
        .O(i__carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5__4
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [4]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep_n_0 ),
        .O(i__carry_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_6
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [5]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [4]),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6__0
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [3]),
        .O(i__carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6__1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [3]),
        .O(i__carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_6__2
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [3]),
        .O(i__carry_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_7
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [0]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [1]),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__0
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [0]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [1]),
        .O(i__carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7__1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [0]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [1]),
        .O(i__carry_i_7__1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    index0__23_carry_i_1
       (.I0(\VGA_r/vga_mem_rd/index0_carry__1_n_6 ),
        .O(index0__23_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    index0__23_carry_i_2
       (.I0(\VGA_r/vga_mem_rd/index0_carry__1_n_7 ),
        .O(index0__23_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    index0__23_carry_i_3
       (.I0(\VGA_r/vga_mem_rd/index0_carry__0_n_4 ),
        .O(index0__23_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFC0FFFFAFC00000)) 
    index0_carry__0_i_1
       (.I0(index0_carry__0_i_8_n_0),
        .I1(index0_carry__0_i_9_n_0),
        .I2(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0 ),
        .I3(\VGA_r/vga_mem_rd/sync[c][1] [8]),
        .I4(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I5(index0_carry__0_i_10_n_0),
        .O(\VGA_r/vga_mem_rd/v[1] [7]));
  LUT5 #(
    .INIT(32'h0AFFFC00)) 
    index0_carry__0_i_10
       (.I0(index0_carry__0_i_12_n_0),
        .I1(index0_carry__0_i_13_n_0),
        .I2(index0_carry__0_i_14_n_5),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0 ),
        .I4(index0_carry__0_i_14_n_4),
        .O(index0_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hACF0)) 
    index0_carry__0_i_11
       (.I0(index0_carry__0_i_18_n_0),
        .I1(index0_carry__0_i_19_n_0),
        .I2(\VGA_r/vga_mem_rd/sync[c][1] [7]),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0 ),
        .O(index0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    index0_carry__0_i_12
       (.I0(index0_carry__0_i_14_n_7),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6 ),
        .I4(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_4 ),
        .I5(index0_carry__0_i_14_n_6),
        .O(index0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    index0_carry__0_i_13
       (.I0(index0_carry__0_i_14_n_7),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7 ),
        .I4(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_4 ),
        .I5(index0_carry__0_i_14_n_6),
        .O(index0_carry__0_i_13_n_0));
  CARRY4 index0_carry__0_i_14
       (.CI(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_0 ),
        .CO({NLW_index0_carry__0_i_14_CO_UNCONNECTED[3],index0_carry__0_i_14_n_1,index0_carry__0_i_14_n_2,index0_carry__0_i_14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({index0_carry__0_i_14_n_4,index0_carry__0_i_14_n_5,index0_carry__0_i_14_n_6,index0_carry__0_i_14_n_7}),
        .S({index0_carry__0_i_20_n_0,index0_carry__0_i_21_n_0,index0_carry__0_i_22_n_0,index0_carry__0_i_23_n_0}));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    index0_carry__0_i_15
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep_n_0 ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep_n_0 ),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0 ),
        .I5(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep_n_0 ),
        .O(index0_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    index0_carry__0_i_16
       (.I0(index0_carry__0_i_14_n_6),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_4 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6 ),
        .I4(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5 ),
        .I5(index0_carry__0_i_14_n_7),
        .O(index0_carry__0_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0AFFFC00)) 
    index0_carry__0_i_17
       (.I0(index0_carry__0_i_18_n_0),
        .I1(index0_carry__0_i_19_n_0),
        .I2(\VGA_r/vga_mem_rd/sync[c][1] [7]),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0 ),
        .I4(\VGA_r/vga_mem_rd/sync[c][1] [8]),
        .O(index0_carry__0_i_17_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    index0_carry__0_i_18
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [5]),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [1]),
        .I2(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0 ),
        .I3(\VGA_r/vga_mem_rd/sync[c][1] [3]),
        .I4(\VGA_r/vga_mem_rd/sync[c][1] [4]),
        .I5(\VGA_r/vga_mem_rd/sync[c][1] [6]),
        .O(index0_carry__0_i_18_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    index0_carry__0_i_19
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [5]),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [1]),
        .I2(\VGA_r/vga_mem_rd/sync[c][1] [3]),
        .I3(\VGA_r/vga_mem_rd/sync[c][1] [2]),
        .I4(\VGA_r/vga_mem_rd/sync[c][1] [4]),
        .I5(\VGA_r/vga_mem_rd/sync[c][1] [6]),
        .O(index0_carry__0_i_19_n_0));
  LUT6 #(
    .INIT(64'hB8B8BBBBBB888888)) 
    index0_carry__0_i_2
       (.I0(index0_carry__0_i_11_n_0),
        .I1(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I2(index0_carry__0_i_12_n_0),
        .I3(index0_carry__0_i_13_n_0),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0 ),
        .I5(index0_carry__0_i_14_n_5),
        .O(\VGA_r/vga_mem_rd/v[1] [6]));
  LUT1 #(
    .INIT(2'h1)) 
    index0_carry__0_i_20
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [8]),
        .O(index0_carry__0_i_20_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    index0_carry__0_i_21
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [7]),
        .O(index0_carry__0_i_21_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    index0_carry__0_i_22
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep_n_0 ),
        .O(index0_carry__0_i_22_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    index0_carry__0_i_23
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep_n_0 ),
        .O(index0_carry__0_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    index0_carry__0_i_3
       (.I0(index0_carry__0_i_15_n_0),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep_n_0 ),
        .I2(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I3(index0_carry__0_i_16_n_0),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0 ),
        .I5(index0_carry__0_i_14_n_6),
        .O(\VGA_r/vga_mem_rd/v[1] [5]));
  LUT6 #(
    .INIT(64'hB8B8BBBBBB888888)) 
    index0_carry__0_i_4
       (.I0(index0_carry__0_i_11_n_0),
        .I1(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I2(index0_carry__0_i_12_n_0),
        .I3(index0_carry__0_i_13_n_0),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0 ),
        .I5(index0_carry__0_i_14_n_5),
        .O(index0_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h1DE2)) 
    index0_carry__0_i_5
       (.I0(index0_carry__0_i_10_n_0),
        .I1(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I2(index0_carry__0_i_17_n_0),
        .I3(\VGA_r/vga_mem_rd/v[1] [5]),
        .O(index0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h47B8)) 
    index0_carry__0_i_6
       (.I0(index0_carry_i_8_n_0),
        .I1(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I2(index0_carry_i_9_n_0),
        .I3(\VGA_r/vga_mem_rd/v[1] [6]),
        .O(index0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    index0_carry__0_i_7
       (.I0(\VGA_r/vga_mem_rd/v[1] [5]),
        .I1(\VGA_r/vga_mem_rd/v[1] [3]),
        .O(index0_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    index0_carry__0_i_8
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [4]),
        .I2(index0_carry_i_10_n_0),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0 ),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep_n_0 ),
        .I5(\VGA_r/vga_mem_rd/sync[c][1] [7]),
        .O(index0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    index0_carry__0_i_9
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [6]),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [4]),
        .I2(index0_carry_i_10_n_0),
        .I3(\VGA_r/vga_mem_rd/sync[c][1] [1]),
        .I4(\VGA_r/vga_mem_rd/sync[c][1] [5]),
        .I5(\VGA_r/vga_mem_rd/sync[c][1] [7]),
        .O(index0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hA0CFFFFFA0CF0000)) 
    index0_carry__1_i_1
       (.I0(index0_carry__0_i_9_n_0),
        .I1(index0_carry__0_i_8_n_0),
        .I2(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0 ),
        .I3(\VGA_r/vga_mem_rd/sync[c][1] [8]),
        .I4(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I5(index0_carry__1_i_2_n_0),
        .O(index0_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'hFC000AFF)) 
    index0_carry__1_i_2
       (.I0(index0_carry__0_i_12_n_0),
        .I1(index0_carry__0_i_13_n_0),
        .I2(index0_carry__0_i_14_n_5),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0 ),
        .I4(index0_carry__0_i_14_n_4),
        .O(index0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    index0_carry_i_1
       (.I0(index0_carry_i_8_n_0),
        .I1(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I2(index0_carry_i_9_n_0),
        .O(index0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    index0_carry_i_10
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [3]),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [2]),
        .O(index0_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    index0_carry_i_11
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0 ),
        .I4(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_4 ),
        .O(index0_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h1FE0)) 
    index0_carry_i_12
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0 ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep_n_0 ),
        .O(index0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h606FCFCF6F60C0C0)) 
    index0_carry_i_13
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [1]),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [2]),
        .I2(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7 ),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0 ),
        .I5(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6 ),
        .O(\VGA_r/vga_mem_rd/v[1] [1]));
  LUT6 #(
    .INIT(64'h1FE0FFFF1FE00000)) 
    index0_carry_i_2
       (.I0(index0_carry_i_10_n_0),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0 ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep_n_0 ),
        .I4(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I5(index0_carry_i_11_n_0),
        .O(\VGA_r/vga_mem_rd/v[1] [3]));
  LUT6 #(
    .INIT(64'h888BBBBBBBB88888)) 
    index0_carry_i_3
       (.I0(index0_carry_i_12_n_0),
        .I1(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6 ),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0 ),
        .I5(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5 ),
        .O(\VGA_r/vga_mem_rd/v[1] [2]));
  LUT4 #(
    .INIT(16'h47B8)) 
    index0_carry_i_4
       (.I0(index0_carry_i_8_n_0),
        .I1(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I2(index0_carry_i_9_n_0),
        .I3(\VGA_r/vga_mem_rd/v[1] [2]),
        .O(index0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    index0_carry_i_5
       (.I0(\VGA_r/vga_mem_rd/v[1] [3]),
        .I1(\VGA_r/vga_mem_rd/v[1] [1]),
        .O(index0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    index0_carry_i_6
       (.I0(\VGA_r/vga_mem_rd/v[1] [2]),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7 ),
        .I2(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0_n_0 ),
        .O(index0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h606FCFCF6F60C0C0)) 
    index0_carry_i_7
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [1]),
        .I1(\VGA_r/vga_mem_rd/sync[c][1] [2]),
        .I2(\VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7 ),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0 ),
        .I5(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6 ),
        .O(index0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    index0_carry_i_8
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep_n_0 ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep_n_0 ),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0 ),
        .I5(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep_n_0 ),
        .O(index0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    index0_carry_i_9
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_4 ),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0 ),
        .I5(index0_carry__0_i_14_n_7),
        .O(index0_carry_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ltOp0_carry_i_1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [9]),
        .O(ltOp0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp0_carry_i_2
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [3]),
        .O(ltOp0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp0_carry_i_3
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [9]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [8]),
        .O(ltOp0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp0_carry_i_4
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [6]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [7]),
        .O(ltOp0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp0_carry_i_5
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [4]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [5]),
        .O(ltOp0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp0_carry_i_6
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [3]),
        .O(ltOp0_carry_i_6_n_0));
  CARRY4 \mem2p_76800_8_g.mem2p_76800_8_i_i_1 
       (.CI(\mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_0 ),
        .CO({\NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_1_CO_UNCONNECTED [3:2],\mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_2 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_1_O_UNCONNECTED [3],\mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_5 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_6 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_7 }),
        .S({1'b0,\mem2p_76800_8_g.mem2p_76800_8_i_i_11_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_12_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_13_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_10 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [1]),
        .I1(\VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_11 
       (.I0(\VGA_r/vga_mem_rd/index0__23_carry_n_5 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_12 
       (.I0(\VGA_r/vga_mem_rd/index0__23_carry_n_6 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_13 
       (.I0(\VGA_r/vga_mem_rd/index0__23_carry_n_7 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_14 
       (.I0(\VGA_r/vga_mem_rd/index0_carry__0_n_5 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_15 
       (.I0(\VGA_r/vga_mem_rd/index0_carry__0_n_6 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_16 
       (.I0(\VGA_r/vga_mem_rd/index0_carry__0_n_7 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_17 
       (.I0(\VGA_r/vga_mem_rd/index0_carry_n_4 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8BBBBBB888888)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_18 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_33_n_0 ),
        .I1(\VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_34_n_0 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_35_n_0 ),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2_n_0 ),
        .I5(\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_5 ),
        .O(\VGA_r/vga_mem_rd/v[0]__0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_19 
       (.I0(\VGA_r/vga_mem_rd/index0_carry_n_5 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_19_n_0 ));
  CARRY4 \mem2p_76800_8_g.mem2p_76800_8_i_i_2 
       (.CI(\mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_0 ),
        .CO({\mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_1 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_2 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_4 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_5 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_6 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_7 }),
        .S({\mem2p_76800_8_g.mem2p_76800_8_i_i_14_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_15_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_16_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_17_n_0 }));
  CARRY4 \mem2p_76800_8_g.mem2p_76800_8_i_i_23 
       (.CI(1'b0),
        .CO({\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_1 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_2 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_3 }),
        .CYINIT(\mem2p_76800_8_g.mem2p_76800_8_i_i_41_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_4 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7 }),
        .S({\mem2p_76800_8_g.mem2p_76800_8_i_i_42_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_43_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_44_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_45_n_0 }));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_24 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_4 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_31_n_0 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_7 ),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0 ),
        .I5(\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_6 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_25 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [4]),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_30_n_0 ),
        .I2(\VGA_r/vga_mem_rd/sync[c][0] [3]),
        .I3(\VGA_r/vga_mem_rd/sync[c][0] [5]),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0 ),
        .I5(\VGA_r/vga_mem_rd/sync[c][0] [6]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_26 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_4 ),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0 ),
        .I5(\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_7 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFFFFFE0000)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_27 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [3]),
        .I1(\VGA_r/vga_mem_rd/sync[c][0] [1]),
        .I2(\VGA_r/vga_mem_rd/sync[c][0] [2]),
        .I3(\VGA_r/vga_mem_rd/sync[c][0] [4]),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2_n_0 ),
        .I5(\VGA_r/vga_mem_rd/sync[c][0] [5]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_28 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0 ),
        .I4(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_4 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_29 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep_n_0 ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep_n_0 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2_n_0 ),
        .I4(\VGA_r/vga_mem_rd/sync[c][0] [4]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_29_n_0 ));
  CARRY4 \mem2p_76800_8_g.mem2p_76800_8_i_i_3 
       (.CI(1'b0),
        .CO({\mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_1 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_2 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\VGA_r/vga_mem_rd/index0_carry_n_6 ,\VGA_r/vga_mem_rd/index0_carry_n_7 ,\VGA_r/vga_mem_rd/v[0]__0 }),
        .O({\mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_4 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_5 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_6 ,\NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_3_O_UNCONNECTED [0]}),
        .S({\mem2p_76800_8_g.mem2p_76800_8_i_i_19_n_0 ,\VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_20_n_0 ,\VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_21_n_0 ,\VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_22_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_30 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [1]),
        .I1(\VGA_r/vga_mem_rd/sync[c][0] [2]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_30_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_31 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_31_n_0 ));
  CARRY4 \mem2p_76800_8_g.mem2p_76800_8_i_i_32 
       (.CI(1'b0),
        .CO({\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_1 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_2 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_3 }),
        .CYINIT(\mem2p_76800_8_g.mem2p_76800_8_i_i_46_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_4 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7 }),
        .S({\mem2p_76800_8_g.mem2p_76800_8_i_i_47_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_48_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_49_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_50_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hACF0)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_33 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_51_n_0 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_52_n_0 ),
        .I2(\VGA_r/vga_mem_rd/sync[c][0] [7]),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_34 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_7 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6 ),
        .I4(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_4 ),
        .I5(\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_6 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_35 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_7 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7 ),
        .I4(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_4 ),
        .I5(\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_6 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_35_n_0 ));
  CARRY4 \mem2p_76800_8_g.mem2p_76800_8_i_i_36 
       (.CI(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_0 ),
        .CO({\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_1 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_2 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_4 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_5 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_6 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_7 }),
        .S({\mem2p_76800_8_g.mem2p_76800_8_i_i_53_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_54_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_55_n_0 ,\mem2p_76800_8_g.mem2p_76800_8_i_i_56_n_0 }));
  LUT6 #(
    .INIT(64'h0022FFFFFFFC0000)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_37 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_34_n_0 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_5 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_35_n_0 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_4 ),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0 ),
        .I5(\mem2p_76800_8_g.mem2p_76800_8_i_i_57_n_7 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h0022FFFFFFFC0000)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_38 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_51_n_0 ),
        .I1(\VGA_r/vga_mem_rd/sync[c][0] [7]),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_52_n_0 ),
        .I3(\VGA_r/vga_mem_rd/sync[c][0] [8]),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0 ),
        .I5(\VGA_r/vga_mem_rd/sync[c][0] [9]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h0AFFFC00)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_39 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_34_n_0 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_35_n_0 ),
        .I2(\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_5 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0 ),
        .I4(\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_4 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0AFFFC00)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_40 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_51_n_0 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_52_n_0 ),
        .I2(\VGA_r/vga_mem_rd/sync[c][0] [7]),
        .I3(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0 ),
        .I4(\VGA_r/vga_mem_rd/sync[c][0] [8]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_41 
       (.I0(\VGA_r/vga_mem_rd/sync[c][1] [0]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_41_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_42 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep_n_0 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_42_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_43 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep_n_0 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_43_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_44 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_45 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0_n_0 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_45_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_46 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [0]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_46_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_47 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep_n_0 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_47_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_48 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep_n_0 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_48_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_49 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep_n_0 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_49_n_0 ));
  MUXF7 \mem2p_76800_8_g.mem2p_76800_8_i_i_5 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_24_n_0 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_25_n_0 ),
        .O(\VGA_r/vga_mem_rd/v[0] [5]),
        .S(\VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_50 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep_n_0 ),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_51 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [5]),
        .I1(\VGA_r/vga_mem_rd/sync[c][0] [3]),
        .I2(\VGA_r/vga_mem_rd/sync[c][0] [2]),
        .I3(\VGA_r/vga_mem_rd/sync[c][0] [1]),
        .I4(\VGA_r/vga_mem_rd/sync[c][0] [4]),
        .I5(\VGA_r/vga_mem_rd/sync[c][0] [6]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_52 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [5]),
        .I1(\VGA_r/vga_mem_rd/sync[c][0] [3]),
        .I2(\VGA_r/vga_mem_rd/sync[c][0] [1]),
        .I3(\VGA_r/vga_mem_rd/sync[c][0] [2]),
        .I4(\VGA_r/vga_mem_rd/sync[c][0] [4]),
        .I5(\VGA_r/vga_mem_rd/sync[c][0] [6]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_52_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_53 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [8]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_53_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_54 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [7]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_54_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_55 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [6]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_56 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [5]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_56_n_0 ));
  CARRY4 \mem2p_76800_8_g.mem2p_76800_8_i_i_57 
       (.CI(\mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_0 ),
        .CO(\NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_57_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_57_O_UNCONNECTED [3:1],\mem2p_76800_8_g.mem2p_76800_8_i_i_57_n_7 }),
        .S({1'b0,1'b0,1'b0,\mem2p_76800_8_g.mem2p_76800_8_i_i_58_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_58 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [9]),
        .O(\mem2p_76800_8_g.mem2p_76800_8_i_i_58_n_0 ));
  MUXF7 \mem2p_76800_8_g.mem2p_76800_8_i_i_6 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_26_n_0 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_27_n_0 ),
        .O(\VGA_r/vga_mem_rd/v[0] [4]),
        .S(\VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0 ));
  MUXF7 \mem2p_76800_8_g.mem2p_76800_8_i_i_7 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_28_n_0 ),
        .I1(\mem2p_76800_8_g.mem2p_76800_8_i_i_29_n_0 ),
        .O(\VGA_r/vga_mem_rd/v[0] [3]),
        .S(\VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0 ));
  LUT6 #(
    .INIT(64'h606FCFCF6F60C0C0)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_8 
       (.I0(\mem2p_76800_8_g.mem2p_76800_8_i_i_30_n_0 ),
        .I1(\VGA_r/vga_mem_rd/sync[c][0] [3]),
        .I2(\VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_31_n_0 ),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0 ),
        .I5(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5 ),
        .O(\VGA_r/vga_mem_rd/v[0] [2]));
  LUT6 #(
    .INIT(64'h606FCFCF6F60C0C0)) 
    \mem2p_76800_8_g.mem2p_76800_8_i_i_9 
       (.I0(\VGA_r/vga_mem_rd/sync[c][0] [1]),
        .I1(\VGA_r/vga_mem_rd/sync[c][0] [2]),
        .I2(\VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0 ),
        .I3(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7 ),
        .I4(\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0 ),
        .I5(\mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6 ),
        .O(\VGA_r/vga_mem_rd/v[0] [1]));
  LUT1 #(
    .INIT(2'h1)) 
    \minusOp[0]_carry__0_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0_n_0 ),
        .O(\minusOp[0]_carry__0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \minusOp[0]_carry__0_i_2 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0_n_0 ),
        .O(\minusOp[0]_carry__0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \minusOp[0]_carry__0_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [7]),
        .O(\minusOp[0]_carry__0_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \minusOp[0]_carry_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [6]),
        .O(\minusOp[0]_carry_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \minusOp[0]_carry_i_2 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0_n_0 ),
        .O(\minusOp[0]_carry_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \minusOp[0]_carry_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [4]),
        .O(\minusOp[0]_carry_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \minusOp[0]_carry_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [3]),
        .O(\minusOp[0]_carry_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \minusOp[1]_carry__0_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [8]),
        .O(\minusOp[1]_carry__0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \minusOp[1]_carry__0_i_2 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [7]),
        .O(\minusOp[1]_carry__0_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \minusOp[1]_carry__0_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [6]),
        .O(\minusOp[1]_carry__0_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \minusOp[1]_carry__0_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [5]),
        .O(\minusOp[1]_carry__0_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \minusOp[1]_carry__1_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [9]),
        .O(\minusOp[1]_carry__1_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \minusOp[1]_carry_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [4]),
        .O(\minusOp[1]_carry_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \minusOp[1]_carry_i_2 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [3]),
        .O(\minusOp[1]_carry_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \minusOp[1]_carry_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [2]),
        .O(\minusOp[1]_carry_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \minusOp[1]_carry_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [1]),
        .O(\minusOp[1]_carry_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h55559669)) 
    \n0q_m_2[1]_i_1 
       (.I0(\n0q_m_2[1]_i_2_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/p_0_in7_in ),
        .I2(\q_m_2[5]_i_2_n_0 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/p_0_in8_in ),
        .I4(\n0q_m_2[1]_i_3_n_0 ),
        .O(\n0q_m_2[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h55559669)) 
    \n0q_m_2[1]_i_1__0 
       (.I0(\n0q_m_2[1]_i_2__1_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/p_0_in7_in ),
        .I2(\q_m_2[5]_i_2__1_n_0 ),
        .I3(\hdmi/DataEncoders[2].DataEncoder/p_0_in8_in ),
        .I4(\n0q_m_2[1]_i_3__1_n_0 ),
        .O(\n0q_m_2[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h55559669)) 
    \n0q_m_2[1]_i_1__1 
       (.I0(\n0q_m_2[1]_i_2__0_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/p_0_in7_in ),
        .I2(\q_m_2[5]_i_2__0_n_0 ),
        .I3(\hdmi/DataEncoders[1].DataEncoder/p_0_in8_in ),
        .I4(\n0q_m_2[1]_i_3__0_n_0 ),
        .O(\n0q_m_2[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h3AA3C55C)) 
    \n0q_m_2[1]_i_2 
       (.I0(\n1q_m_2[1]_i_2_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I4(\n1q_m_2[1]_i_3_n_0 ),
        .O(\n0q_m_2[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h3AA3C55C)) 
    \n0q_m_2[1]_i_2__0 
       (.I0(\n1q_m_2[1]_i_2__0_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .I3(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I4(\n1q_m_2[1]_i_3__0_n_0 ),
        .O(\n0q_m_2[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h3AA3C55C)) 
    \n0q_m_2[1]_i_2__1 
       (.I0(\n1q_m_2[1]_i_2__1_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .I3(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I4(\n1q_m_2[1]_i_3__1_n_0 ),
        .O(\n0q_m_2[1]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \n0q_m_2[1]_i_3 
       (.I0(\n0q_m_2[1]_i_4_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/p_0_in10_in ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .I3(\q_m_2[8]_i_1_n_0 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .O(\n0q_m_2[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \n0q_m_2[1]_i_3__0 
       (.I0(\n0q_m_2[1]_i_4__0_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/p_0_in10_in ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .I3(\q_m_2[8]_i_1__0_n_0 ),
        .I4(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .O(\n0q_m_2[1]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \n0q_m_2[1]_i_3__1 
       (.I0(\n0q_m_2[1]_i_4__1_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/p_0_in10_in ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .I3(\q_m_2[8]_i_1__1_n_0 ),
        .I4(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .O(\n0q_m_2[1]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n0q_m_2[1]_i_4 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/p_0_in8_in ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/p_0_in7_in ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/p_0_in6_in ),
        .O(\n0q_m_2[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n0q_m_2[1]_i_4__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/p_0_in8_in ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/p_0_in7_in ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/p_0_in6_in ),
        .O(\n0q_m_2[1]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n0q_m_2[1]_i_4__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/p_0_in8_in ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/p_0_in7_in ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/p_0_in6_in ),
        .O(\n0q_m_2[1]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFF771F7711000)) 
    \n0q_m_2[2]_i_1 
       (.I0(\n0q_m_2[3]_i_2_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .I2(\n1q_m_2[1]_i_2_n_0 ),
        .I3(\n0q_m_2[3]_i_3_n_0 ),
        .I4(\n0q_m_2[3]_i_4_n_0 ),
        .I5(\n0q_m_2[3]_i_5_n_0 ),
        .O(\n0q_m_2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFF771F7711000)) 
    \n0q_m_2[2]_i_1__0 
       (.I0(\n0q_m_2[3]_i_2__0_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .I2(\n1q_m_2[1]_i_2__0_n_0 ),
        .I3(\n0q_m_2[3]_i_3__0_n_0 ),
        .I4(\n0q_m_2[3]_i_4__0_n_0 ),
        .I5(\n0q_m_2[3]_i_5__0_n_0 ),
        .O(\n0q_m_2[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFF771F7711000)) 
    \n0q_m_2[2]_i_1__1 
       (.I0(\n0q_m_2[3]_i_2__1_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .I2(\n1q_m_2[1]_i_2__1_n_0 ),
        .I3(\n0q_m_2[3]_i_3__1_n_0 ),
        .I4(\n0q_m_2[3]_i_4__1_n_0 ),
        .I5(\n0q_m_2[3]_i_5__1_n_0 ),
        .O(\n0q_m_2[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \n0q_m_2[3]_i_1 
       (.I0(\n0q_m_2[3]_i_2_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .I2(\n1q_m_2[1]_i_2_n_0 ),
        .I3(\n0q_m_2[3]_i_3_n_0 ),
        .I4(\n0q_m_2[3]_i_4_n_0 ),
        .I5(\n0q_m_2[3]_i_5_n_0 ),
        .O(\n0q_m_2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \n0q_m_2[3]_i_1__0 
       (.I0(\n0q_m_2[3]_i_2__0_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .I2(\n1q_m_2[1]_i_2__0_n_0 ),
        .I3(\n0q_m_2[3]_i_3__0_n_0 ),
        .I4(\n0q_m_2[3]_i_4__0_n_0 ),
        .I5(\n0q_m_2[3]_i_5__0_n_0 ),
        .O(\n0q_m_2[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \n0q_m_2[3]_i_1__1 
       (.I0(\n0q_m_2[3]_i_2__1_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .I2(\n1q_m_2[1]_i_2__1_n_0 ),
        .I3(\n0q_m_2[3]_i_3__1_n_0 ),
        .I4(\n0q_m_2[3]_i_4__1_n_0 ),
        .I5(\n0q_m_2[3]_i_5__1_n_0 ),
        .O(\n0q_m_2[3]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n0q_m_2[3]_i_2 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .O(\n0q_m_2[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n0q_m_2[3]_i_2__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .O(\n0q_m_2[3]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n0q_m_2[3]_i_2__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .O(\n0q_m_2[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n0q_m_2[3]_i_3 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/p_0_in7_in ),
        .I1(\q_m_2[5]_i_2_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/p_0_in8_in ),
        .O(\n0q_m_2[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n0q_m_2[3]_i_3__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/p_0_in7_in ),
        .I1(\q_m_2[5]_i_2__0_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/p_0_in8_in ),
        .O(\n0q_m_2[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n0q_m_2[3]_i_3__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/p_0_in7_in ),
        .I1(\q_m_2[5]_i_2__1_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/p_0_in8_in ),
        .O(\n0q_m_2[3]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h4B2D)) 
    \n0q_m_2[3]_i_4 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .I1(\q_m_2[5]_i_2_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/p_0_in7_in ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/p_0_in6_in ),
        .O(\n0q_m_2[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h4B2D)) 
    \n0q_m_2[3]_i_4__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .I1(\q_m_2[5]_i_2__0_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/p_0_in7_in ),
        .I3(\hdmi/DataEncoders[1].DataEncoder/p_0_in6_in ),
        .O(\n0q_m_2[3]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h4B2D)) 
    \n0q_m_2[3]_i_4__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .I1(\q_m_2[5]_i_2__1_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/p_0_in7_in ),
        .I3(\hdmi/DataEncoders[2].DataEncoder/p_0_in6_in ),
        .O(\n0q_m_2[3]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hD22D4BB4)) 
    \n0q_m_2[3]_i_5 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/p_0_in0_in ),
        .I1(\q_m_2[8]_i_1_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I3(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\hdmi/DataEncoders[0].DataEncoder/p_0_in2_in ),
        .O(\n0q_m_2[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hD22D4BB4)) 
    \n0q_m_2[3]_i_5__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/p_0_in0_in ),
        .I1(\q_m_2[8]_i_1__0_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I3(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\hdmi/DataEncoders[1].DataEncoder/p_0_in2_in ),
        .O(\n0q_m_2[3]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hD22D4BB4)) 
    \n0q_m_2[3]_i_5__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/p_0_in0_in ),
        .I1(\q_m_2[8]_i_1__1_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\hdmi/DataEncoders[2].DataEncoder/p_0_in2_in ),
        .O(\n0q_m_2[3]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \n1q_m_2[0]_i_1 
       (.I0(\n0q_m_2[1]_i_3_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .I2(\q_m_2[5]_i_2_n_0 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/p_0_in7_in ),
        .O(\n1q_m_2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \n1q_m_2[0]_i_1__0 
       (.I0(\n0q_m_2[1]_i_3__0_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .I2(\q_m_2[5]_i_2__0_n_0 ),
        .I3(\hdmi/DataEncoders[1].DataEncoder/p_0_in7_in ),
        .O(\n1q_m_2[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \n1q_m_2[0]_i_1__1 
       (.I0(\n0q_m_2[1]_i_3__1_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .I2(\q_m_2[5]_i_2__1_n_0 ),
        .I3(\hdmi/DataEncoders[2].DataEncoder/p_0_in7_in ),
        .O(\n1q_m_2[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h3AA3C55CC55C3AA3)) 
    \n1q_m_2[1]_i_1 
       (.I0(\n1q_m_2[1]_i_2_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/p_0_in2_in ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\n1q_m_2[1]_i_3_n_0 ),
        .I5(\n1q_m_2[1]_i_4_n_0 ),
        .O(\hdmi/DataEncoders[0].DataEncoder/n1q_m_1 [1]));
  LUT6 #(
    .INIT(64'h3AA3C55CC55C3AA3)) 
    \n1q_m_2[1]_i_1__0 
       (.I0(\n1q_m_2[1]_i_2__0_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/p_0_in2_in ),
        .I3(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\n1q_m_2[1]_i_3__0_n_0 ),
        .I5(\n1q_m_2[1]_i_4__1_n_0 ),
        .O(\hdmi/DataEncoders[1].DataEncoder/n1q_m_1 [1]));
  LUT6 #(
    .INIT(64'h3AA3C55CC55C3AA3)) 
    \n1q_m_2[1]_i_1__1 
       (.I0(\n1q_m_2[1]_i_2__1_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/p_0_in2_in ),
        .I3(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\n1q_m_2[1]_i_3__1_n_0 ),
        .I5(\n1q_m_2[1]_i_4__0_n_0 ),
        .O(\hdmi/DataEncoders[2].DataEncoder/n1q_m_1 [1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \n1q_m_2[1]_i_2 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/p_0_in6_in ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/p_0_in7_in ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .I3(\q_m_2[8]_i_1_n_0 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/p_0_in10_in ),
        .O(\n1q_m_2[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \n1q_m_2[1]_i_2__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/p_0_in6_in ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/p_0_in7_in ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .I3(\q_m_2[8]_i_1__0_n_0 ),
        .I4(\hdmi/DataEncoders[1].DataEncoder/p_0_in10_in ),
        .O(\n1q_m_2[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \n1q_m_2[1]_i_2__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/p_0_in6_in ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/p_0_in7_in ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .I3(\q_m_2[8]_i_1__1_n_0 ),
        .I4(\hdmi/DataEncoders[2].DataEncoder/p_0_in10_in ),
        .O(\n1q_m_2[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h69C33C69963CC396)) 
    \n1q_m_2[1]_i_3 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I3(\q_m_2[8]_i_1_n_0 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/p_0_in0_in ),
        .I5(\n0q_m_2[3]_i_4_n_0 ),
        .O(\n1q_m_2[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h69C33C69963CC396)) 
    \n1q_m_2[1]_i_3__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I3(\q_m_2[8]_i_1__0_n_0 ),
        .I4(\hdmi/DataEncoders[1].DataEncoder/p_0_in0_in ),
        .I5(\n0q_m_2[3]_i_4__0_n_0 ),
        .O(\n1q_m_2[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h69C33C69963CC396)) 
    \n1q_m_2[1]_i_3__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I3(\q_m_2[8]_i_1__1_n_0 ),
        .I4(\hdmi/DataEncoders[2].DataEncoder/p_0_in0_in ),
        .I5(\n0q_m_2[3]_i_4__1_n_0 ),
        .O(\n1q_m_2[1]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h96FF)) 
    \n1q_m_2[1]_i_4 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/p_0_in7_in ),
        .I1(\q_m_2[5]_i_2_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/p_0_in8_in ),
        .I3(\n0q_m_2[1]_i_3_n_0 ),
        .O(\n1q_m_2[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h96FF)) 
    \n1q_m_2[1]_i_4__0 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/p_0_in7_in ),
        .I1(\q_m_2[5]_i_2__1_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/p_0_in8_in ),
        .I3(\n0q_m_2[1]_i_3__1_n_0 ),
        .O(\n1q_m_2[1]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h96FF)) 
    \n1q_m_2[1]_i_4__1 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/p_0_in7_in ),
        .I1(\q_m_2[5]_i_2__0_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/p_0_in8_in ),
        .I3(\n0q_m_2[1]_i_3__0_n_0 ),
        .O(\n1q_m_2[1]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h3AA3C55CC55C3AA3)) 
    \n1q_m_2[1]_rep_i_1 
       (.I0(\n1q_m_2[1]_i_2__1_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/p_0_in2_in ),
        .I3(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\n1q_m_2[1]_i_3__1_n_0 ),
        .I5(\n1q_m_2[1]_i_4__0_n_0 ),
        .O(\n1q_m_2[1]_rep_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3AA3C55CC55C3AA3)) 
    \n1q_m_2[1]_rep_i_1__0 
       (.I0(\n1q_m_2[1]_i_2__0_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/p_0_in2_in ),
        .I3(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\n1q_m_2[1]_i_3__0_n_0 ),
        .I5(\n1q_m_2[1]_i_4__1_n_0 ),
        .O(\n1q_m_2[1]_rep_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h3AA3C55CC55C3AA3)) 
    \n1q_m_2[1]_rep_i_1__1 
       (.I0(\n1q_m_2[1]_i_2_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/p_0_in2_in ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\n1q_m_2[1]_i_3_n_0 ),
        .I5(\n1q_m_2[1]_i_4_n_0 ),
        .O(\n1q_m_2[1]_rep_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \n1q_m_2[2]_i_1 
       (.I0(\n1q_m_2[3]_i_2_n_0 ),
        .I1(\n1q_m_2[3]_i_3_n_0 ),
        .O(\hdmi/DataEncoders[0].DataEncoder/n1q_m_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \n1q_m_2[2]_i_1__0 
       (.I0(\n1q_m_2[3]_i_2__0_n_0 ),
        .I1(\n1q_m_2[3]_i_3__0_n_0 ),
        .O(\hdmi/DataEncoders[1].DataEncoder/n1q_m_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \n1q_m_2[2]_i_1__1 
       (.I0(\n1q_m_2[3]_i_2__1_n_0 ),
        .I1(\n1q_m_2[3]_i_3__1_n_0 ),
        .O(\hdmi/DataEncoders[2].DataEncoder/n1q_m_1 [2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \n1q_m_2[3]_i_1 
       (.I0(\n1q_m_2[3]_i_2_n_0 ),
        .I1(\n1q_m_2[3]_i_3_n_0 ),
        .O(\hdmi/DataEncoders[0].DataEncoder/n1q_m_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \n1q_m_2[3]_i_1__0 
       (.I0(\n1q_m_2[3]_i_2__0_n_0 ),
        .I1(\n1q_m_2[3]_i_3__0_n_0 ),
        .O(\hdmi/DataEncoders[1].DataEncoder/n1q_m_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \n1q_m_2[3]_i_1__1 
       (.I0(\n1q_m_2[3]_i_2__1_n_0 ),
        .I1(\n1q_m_2[3]_i_3__1_n_0 ),
        .O(\hdmi/DataEncoders[2].DataEncoder/n1q_m_1 [3]));
  LUT6 #(
    .INIT(64'h0000000069C33C69)) 
    \n1q_m_2[3]_i_2 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .I3(\q_m_2[8]_i_1_n_0 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/p_0_in0_in ),
        .I5(\n0q_m_2[3]_i_4_n_0 ),
        .O(\n1q_m_2[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000069C33C69)) 
    \n1q_m_2[3]_i_2__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .I3(\q_m_2[8]_i_1__0_n_0 ),
        .I4(\hdmi/DataEncoders[1].DataEncoder/p_0_in0_in ),
        .I5(\n0q_m_2[3]_i_4__0_n_0 ),
        .O(\n1q_m_2[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000069C33C69)) 
    \n1q_m_2[3]_i_2__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .I3(\q_m_2[8]_i_1__1_n_0 ),
        .I4(\hdmi/DataEncoders[2].DataEncoder/p_0_in0_in ),
        .I5(\n0q_m_2[3]_i_4__1_n_0 ),
        .O(\n1q_m_2[3]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h2B02FFBF)) 
    \n1q_m_2[3]_i_3 
       (.I0(\n0q_m_2[3]_i_3_n_0 ),
        .I1(\n0q_m_2[3]_i_2_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .I3(\n1q_m_2[1]_i_2_n_0 ),
        .I4(\n1q_m_2[1]_i_3_n_0 ),
        .O(\n1q_m_2[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2B02FFBF)) 
    \n1q_m_2[3]_i_3__0 
       (.I0(\n0q_m_2[3]_i_3__0_n_0 ),
        .I1(\n0q_m_2[3]_i_2__0_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .I3(\n1q_m_2[1]_i_2__0_n_0 ),
        .I4(\n1q_m_2[1]_i_3__0_n_0 ),
        .O(\n1q_m_2[3]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h2B02FFBF)) 
    \n1q_m_2[3]_i_3__1 
       (.I0(\n0q_m_2[3]_i_3__1_n_0 ),
        .I1(\n0q_m_2[3]_i_2__1_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0 ),
        .I3(\n1q_m_2[1]_i_2__1_n_0 ),
        .I4(\n1q_m_2[1]_i_3__1_n_0 ),
        .O(\n1q_m_2[3]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \n[0]_i_1 
       (.I0(\VGA_r/n_reg_n_0_ [0]),
        .O(\n[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \n[1]_i_1 
       (.I0(\VGA_r/n_reg_n_0_ [0]),
        .I1(\VGA_r/n_reg_n_0_ [1]),
        .O(\n[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \n[2]_i_1 
       (.I0(\VGA_r/n_reg_n_0_ [0]),
        .I1(\VGA_r/n_reg_n_0_ [1]),
        .I2(\VGA_r/n_reg_n_0_ [2]),
        .O(\n[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \n[3]_i_1 
       (.I0(\VGA_r/n_reg_n_0_ [2]),
        .I1(\VGA_r/n_reg_n_0_ [0]),
        .I2(\VGA_r/n_reg_n_0_ [1]),
        .I3(\VGA_r/n_reg [3]),
        .O(\n[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \n[4]_i_1 
       (.I0(\VGA_r/n_reg_n_0_ [2]),
        .I1(\VGA_r/n_reg_n_0_ [0]),
        .I2(\VGA_r/n_reg_n_0_ [1]),
        .I3(\VGA_r/n_reg [3]),
        .I4(\VGA_r/n_reg [4]),
        .O(\n[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \n[5]_i_1 
       (.I0(\VGA_r/n_reg [3]),
        .I1(\VGA_r/n_reg_n_0_ [1]),
        .I2(\VGA_r/n_reg_n_0_ [0]),
        .I3(\VGA_r/n_reg_n_0_ [2]),
        .I4(\VGA_r/n_reg [4]),
        .I5(\VGA_r/n_reg [5]),
        .O(\n[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    ok1_carry__0_i_1
       (.I0(\sync_c_q_reg[1][9]_i_2_n_6 ),
        .O(ok1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ok1_carry_i_1
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [9]),
        .O(ok1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ok1_carry_i_2
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [3]),
        .O(ok1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ok1_carry_i_3
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [9]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [8]),
        .O(ok1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ok1_carry_i_4
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [6]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [7]),
        .O(ok1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ok1_carry_i_5
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [4]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [5]),
        .O(ok1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ok1_carry_i_6
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [3]),
        .O(ok1_carry_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h0FF0BBBB)) 
    \pDataOutRaw[0]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/pC0_2 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pC1_2 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [0]),
        .I3(\pDataOutRaw[9]_i_3_n_0 ),
        .I4(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0 ),
        .O(\pDataOutRaw[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h7B)) 
    \pDataOutRaw[0]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_2__1_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [0]),
        .O(\pDataOutRaw[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h7D)) 
    \pDataOutRaw[0]_i_1__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0 ),
        .I1(\pDataOutRaw[9]_i_2_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [0]),
        .O(\pDataOutRaw[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h4444BBBBF0FFF0FF)) 
    \pDataOutRaw[1]_i_1 
       (.I0(\cnt_t_3[4]_i_3_n_0 ),
        .I1(\pDataOutRaw[7]_i_2_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pC0_2 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/pC1_2 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [1]),
        .I5(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0 ),
        .O(\pDataOutRaw[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h7B)) 
    \pDataOutRaw[1]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_2__1_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [1]),
        .O(\pDataOutRaw[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h7B)) 
    \pDataOutRaw[1]_i_1__1 
       (.I0(\pDataOutRaw[9]_i_2_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pVde_2 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [1]),
        .O(\pDataOutRaw[1]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h0F0FF044)) 
    \pDataOutRaw[2]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [2]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2_n_0 ),
        .I4(\pDataOutRaw[6]_i_2_n_0 ),
        .O(\hdmi/DataEncoders[0].DataEncoder/q_out_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0A82)) 
    \pDataOutRaw[2]_i_1__0 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0 ),
        .I1(\cnt_t_3[2]_i_4_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [2]),
        .I3(\cnt_t_3[4]_i_2_n_0 ),
        .O(\hdmi/DataEncoders[1].DataEncoder/q_out_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h08A2)) 
    \pDataOutRaw[2]_i_1__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0 ),
        .I1(\cnt_t_3[2]_i_4__0_n_0 ),
        .I2(\cnt_t_3[4]_i_2__0_n_0 ),
        .I3(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [2]),
        .O(\hdmi/DataEncoders[2].DataEncoder/q_out_2 [2]));
  LUT6 #(
    .INIT(64'h4444BBBBF0FFF0FF)) 
    \pDataOutRaw[3]_i_1 
       (.I0(\cnt_t_3[4]_i_3_n_0 ),
        .I1(\pDataOutRaw[7]_i_2_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pC0_2 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/pC1_2 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [3]),
        .I5(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0 ),
        .O(\pDataOutRaw[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \pDataOutRaw[3]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_2__1_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [3]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0 ),
        .O(\pDataOutRaw[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h7B)) 
    \pDataOutRaw[3]_i_1__1 
       (.I0(\pDataOutRaw[9]_i_2_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pVde_2 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [3]),
        .O(\pDataOutRaw[3]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h0F0FF044)) 
    \pDataOutRaw[4]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [4]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2_n_0 ),
        .I4(\pDataOutRaw[6]_i_2_n_0 ),
        .O(\hdmi/DataEncoders[0].DataEncoder/q_out_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h08A2)) 
    \pDataOutRaw[4]_i_1__0 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0 ),
        .I1(\cnt_t_3[2]_i_4_n_0 ),
        .I2(\cnt_t_3[4]_i_2_n_0 ),
        .I3(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [4]),
        .O(\hdmi/DataEncoders[1].DataEncoder/q_out_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0A82)) 
    \pDataOutRaw[4]_i_1__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0 ),
        .I1(\cnt_t_3[2]_i_4__0_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [4]),
        .I3(\cnt_t_3[4]_i_2__0_n_0 ),
        .O(\hdmi/DataEncoders[2].DataEncoder/q_out_2 [4]));
  LUT6 #(
    .INIT(64'h0BFBFB0B0B0BFBFB)) 
    \pDataOutRaw[5]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2_n_0 ),
        .I3(\cnt_t_3[4]_i_3_n_0 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [5]),
        .I5(\cnt_t_3[2]_i_4__1_n_0 ),
        .O(\pDataOutRaw[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \pDataOutRaw[5]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_2__1_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [5]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0 ),
        .O(\pDataOutRaw[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \pDataOutRaw[5]_i_1__1 
       (.I0(\pDataOutRaw[9]_i_2_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [5]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pVde_2 ),
        .O(\pDataOutRaw[5]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h0F0FF044)) 
    \pDataOutRaw[6]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [6]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0 ),
        .I4(\pDataOutRaw[6]_i_2_n_0 ),
        .O(\hdmi/DataEncoders[0].DataEncoder/q_out_2 [6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0A82)) 
    \pDataOutRaw[6]_i_1__0 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0 ),
        .I1(\cnt_t_3[2]_i_4_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [6]),
        .I3(\cnt_t_3[4]_i_2_n_0 ),
        .O(\hdmi/DataEncoders[1].DataEncoder/q_out_2 [6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0A82)) 
    \pDataOutRaw[6]_i_1__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0 ),
        .I1(\cnt_t_3[2]_i_4__0_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [6]),
        .I3(\cnt_t_3[4]_i_2__0_n_0 ),
        .O(\hdmi/DataEncoders[2].DataEncoder/q_out_2 [6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pDataOutRaw[6]_i_2 
       (.I0(\pDataOutRaw[9]_i_3_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0 ),
        .O(\pDataOutRaw[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444BBBBF0FFF0FF)) 
    \pDataOutRaw[7]_i_1 
       (.I0(\cnt_t_3[4]_i_3_n_0 ),
        .I1(\pDataOutRaw[7]_i_2_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pC0_2 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/pC1_2 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_ [7]),
        .I5(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0 ),
        .O(\pDataOutRaw[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \pDataOutRaw[7]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_2__1_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_ [7]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0 ),
        .O(\pDataOutRaw[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \pDataOutRaw[7]_i_1__1 
       (.I0(\pDataOutRaw[9]_i_2_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_ [7]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pVde_2 ),
        .O(\pDataOutRaw[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF00F0F0F1FF)) 
    \pDataOutRaw[7]_i_2 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [0]),
        .I2(\cnt_t_3[4]_i_7__1_n_0 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [2]),
        .I4(\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_ [3]),
        .I5(\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_ [4]),
        .O(\pDataOutRaw[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hBA10)) 
    \pDataOutRaw[8]_i_1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pC0_2 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pC1_2 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/p_0_in ),
        .O(\hdmi/DataEncoders[0].DataEncoder/q_out_2 [8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pDataOutRaw[8]_i_1__0 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/p_0_in ),
        .O(\hdmi/DataEncoders[2].DataEncoder/q_out_2 [8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pDataOutRaw[8]_i_1__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/p_0_in ),
        .O(\hdmi/DataEncoders[1].DataEncoder/q_out_2 [8]));
  LUT3 #(
    .INIT(8'h01)) 
    \pDataOutRaw[9]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep_n_0 ),
        .O(\pDataOutRaw[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pDataOutRaw[9]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_2_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pVde_2 ),
        .O(\pDataOutRaw[9]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \pDataOutRaw[9]_i_1__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pVde_2 ),
        .I1(\pDataOutRaw[9]_i_2__1_n_0 ),
        .O(\pDataOutRaw[9]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \pDataOutRaw[9]_i_2 
       (.I0(\cnt_t_3[2]_i_4_n_0 ),
        .I1(\cnt_t_3[4]_i_2_n_0 ),
        .O(\pDataOutRaw[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \pDataOutRaw[9]_i_2__0 
       (.I0(\pDataOutRaw[9]_i_3_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pC0_2 ),
        .I3(\hdmi/DataEncoders[0].DataEncoder/pC1_2 ),
        .O(\hdmi/DataEncoders[0].DataEncoder/q_out_2 [9]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \pDataOutRaw[9]_i_2__1 
       (.I0(\cnt_t_3[2]_i_4__0_n_0 ),
        .I1(\cnt_t_3[4]_i_2__0_n_0 ),
        .O(\pDataOutRaw[9]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \pDataOutRaw[9]_i_3 
       (.I0(\cnt_t_3[4]_i_3_n_0 ),
        .I1(\cnt_t_3[2]_i_4__1_n_0 ),
        .O(\pDataOutRaw[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999956666)) 
    \q_m_2[1]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [0]),
        .I3(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [1]),
        .I4(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [2]),
        .I5(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [3]),
        .O(\q_m_2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999956666)) 
    \q_m_2[1]_i_1__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [0]),
        .I3(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [1]),
        .I4(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [2]),
        .I5(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [3]),
        .O(\q_m_2[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999956666)) 
    \q_m_2[1]_i_1__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [0]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [1]),
        .I4(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [2]),
        .I5(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [3]),
        .O(\q_m_2[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[2]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/p_0_in0_in ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .O(\hdmi/DataEncoders[0].DataEncoder/p_0_in9_in ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[2]_i_1__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/p_0_in0_in ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .O(\hdmi/DataEncoders[1].DataEncoder/p_0_in9_in ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[2]_i_1__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/p_0_in0_in ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .O(\hdmi/DataEncoders[2].DataEncoder/p_0_in9_in ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_2[3]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/p_0_in0_in ),
        .I1(\q_m_2[8]_i_1_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I3(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\hdmi/DataEncoders[0].DataEncoder/p_0_in2_in ),
        .O(\q_m_2[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_2[3]_i_1__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/p_0_in0_in ),
        .I1(\q_m_2[8]_i_1__0_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I3(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\hdmi/DataEncoders[1].DataEncoder/p_0_in2_in ),
        .O(\q_m_2[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_2[3]_i_1__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/p_0_in0_in ),
        .I1(\q_m_2[8]_i_1__1_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\hdmi/DataEncoders[2].DataEncoder/p_0_in2_in ),
        .O(\q_m_2[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[4]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/p_0_in4_in ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/p_0_in0_in ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I3(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\hdmi/DataEncoders[0].DataEncoder/p_0_in2_in ),
        .O(\hdmi/DataEncoders[0].DataEncoder/p_0_in7_in ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[4]_i_1__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/p_0_in4_in ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/p_0_in0_in ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I3(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\hdmi/DataEncoders[1].DataEncoder/p_0_in2_in ),
        .O(\hdmi/DataEncoders[1].DataEncoder/p_0_in7_in ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[4]_i_1__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/p_0_in4_in ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/p_0_in0_in ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ [1]),
        .I4(\hdmi/DataEncoders[2].DataEncoder/p_0_in2_in ),
        .O(\hdmi/DataEncoders[2].DataEncoder/p_0_in7_in ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \q_m_2[5]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/p_0_in7_in ),
        .I1(\q_m_2[5]_i_2_n_0 ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/p_0_in6_in ),
        .O(\q_m_2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \q_m_2[5]_i_1__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/p_0_in7_in ),
        .I1(\q_m_2[5]_i_2__0_n_0 ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/p_0_in6_in ),
        .O(\q_m_2[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \q_m_2[5]_i_1__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/p_0_in7_in ),
        .I1(\q_m_2[5]_i_2__1_n_0 ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/p_0_in6_in ),
        .O(\q_m_2[5]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \q_m_2[5]_i_2 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [1]),
        .I3(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [2]),
        .I4(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [3]),
        .O(\q_m_2[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \q_m_2[5]_i_2__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [1]),
        .I3(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [2]),
        .I4(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [3]),
        .O(\q_m_2[5]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h000002FF)) 
    \q_m_2[5]_i_2__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0 ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [1]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [2]),
        .I4(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [3]),
        .O(\q_m_2[5]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[6]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/p_0_in8_in ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/p_0_in7_in ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/p_0_in6_in ),
        .O(\hdmi/DataEncoders[0].DataEncoder/p_0_in5_in ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[6]_i_1__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/p_0_in8_in ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/p_0_in7_in ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/p_0_in6_in ),
        .O(\hdmi/DataEncoders[1].DataEncoder/p_0_in5_in ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[6]_i_1__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/p_0_in8_in ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/p_0_in7_in ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/p_0_in6_in ),
        .O(\hdmi/DataEncoders[2].DataEncoder/p_0_in5_in ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_2[7]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/p_0_in6_in ),
        .I1(\hdmi/DataEncoders[0].DataEncoder/p_0_in7_in ),
        .I2(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .I3(\q_m_2[8]_i_1_n_0 ),
        .I4(\hdmi/DataEncoders[0].DataEncoder/p_0_in10_in ),
        .O(\hdmi/DataEncoders[0].DataEncoder/p_1_in12_in ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_2[7]_i_1__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/p_0_in6_in ),
        .I1(\hdmi/DataEncoders[1].DataEncoder/p_0_in7_in ),
        .I2(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .I3(\q_m_2[8]_i_1__0_n_0 ),
        .I4(\hdmi/DataEncoders[1].DataEncoder/p_0_in10_in ),
        .O(\hdmi/DataEncoders[1].DataEncoder/p_1_in12_in ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_2[7]_i_1__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/p_0_in6_in ),
        .I1(\hdmi/DataEncoders[2].DataEncoder/p_0_in7_in ),
        .I2(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep_n_0 ),
        .I3(\q_m_2[8]_i_1__1_n_0 ),
        .I4(\hdmi/DataEncoders[2].DataEncoder/p_0_in10_in ),
        .O(\hdmi/DataEncoders[2].DataEncoder/p_1_in12_in ));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  LUT5 #(
    .INIT(32'h000002FF)) 
    \q_m_2[8]_i_1 
       (.I0(\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I1(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [1]),
        .I3(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [2]),
        .I4(\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_ [3]),
        .O(\q_m_2[8]_i_1_n_0 ));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  LUT5 #(
    .INIT(32'h000002FF)) 
    \q_m_2[8]_i_1__0 
       (.I0(\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I1(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [1]),
        .I3(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [2]),
        .I4(\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_ [3]),
        .O(\q_m_2[8]_i_1__0_n_0 ));
  (* IS_FANOUT_CONSTRAINED = "1" *) 
  LUT5 #(
    .INIT(32'h000002FF)) 
    \q_m_2[8]_i_1__1 
       (.I0(\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_ [0]),
        .I1(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [0]),
        .I2(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [1]),
        .I3(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [2]),
        .I4(\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_ [3]),
        .O(\q_m_2[8]_i_1__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sync[Hsync]_i_1 
       (.I0(\VGA_r/rst ),
        .O(\sync[Hsync]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sync[Hsync]_i_2 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/p_1_in9_in ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in8_in ),
        .O(\VGA_r/vga_mem_rd/C_Sync/andv [0]));
  LUT2 #(
    .INIT(4'h7)) 
    \sync[Hsync]_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep_n_0 ),
        .O(\sync[Hsync]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sync[Hsync]_i_5 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep_n_0 ),
        .O(\sync[Hsync]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sync[Hsync]_i_6 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep_n_0 ),
        .O(\sync[Hsync]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \sync[Hsync]_i_7 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [6]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [7]),
        .O(\sync[Hsync]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sync[Hsync]_i_8 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep_n_0 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [4]),
        .O(\sync[Hsync]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sync[Vsync]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0_n_3 ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_0 ),
        .O(\VGA_r/vga_mem_rd/C_Sync/andv [1]));
  LUT4 #(
    .INIT(16'h8000)) 
    \sync[active]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/p_0_in2_in ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_1_in3_in ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0_n_3 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0_n_3 ),
        .O(\VGA_r/vga_mem_rd/C_Sync/sync_reg[active]0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sync[c][1][0]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [0]),
        .O(\sync[c][1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync_c_q[0][0]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [0]),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][1]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [1]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[0] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][2]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[0] [2]));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][3]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [3]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[0] [3]));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][4]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [4]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[0] [4]));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[0][4]_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [4]),
        .O(\sync_c_q[0][4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[0][4]_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [3]),
        .O(\sync_c_q[0][4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[0][4]_i_5 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [2]),
        .O(\sync_c_q[0][4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[0][4]_i_6 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [1]),
        .O(\sync_c_q[0][4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][5]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [5]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[0] [5]));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][5]_rep_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [5]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\sync_c_q[0][5]_rep_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][5]_rep_i_1__0 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [5]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\sync_c_q[0][5]_rep_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][6]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [6]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[0] [6]));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][7]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [7]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[0] [7]));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][8]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [8]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[0] [8]));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[0][8]_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep_n_0 ),
        .O(\sync_c_q[0][8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[0][8]_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [7]),
        .O(\sync_c_q[0][8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[0][8]_i_5 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [6]),
        .O(\sync_c_q[0][8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[0][8]_i_6 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep_n_0 ),
        .O(\sync_c_q[0][8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][8]_rep_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [8]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\sync_c_q[0][8]_rep_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][8]_rep_i_1__0 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [8]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\sync_c_q[0][8]_rep_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][9]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [9]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[0] [9]));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[0][9]_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep_n_0 ),
        .O(\sync_c_q[0][9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][9]_rep_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [9]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\sync_c_q[0][9]_rep_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \sync_c_q[0][9]_rep_i_1__0 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [9]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .O(\sync_c_q[0][9]_rep_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hA4)) 
    \sync_c_q[1][0]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .I1(\VGA_r/vga_mem_rd/C_Sync/ok1 ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [0]),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[1] [0]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sync_c_q[1][1]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [1]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/ok1 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [1]),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[1] [1]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sync_c_q[1][2]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [2]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/ok1 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [2]),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[1] [2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sync_c_q[1][3]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [3]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/ok1 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [3]),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[1] [3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sync_c_q[1][4]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [4]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/ok1 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [4]),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[1] [4]));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[1][4]_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [4]),
        .O(\sync_c_q[1][4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[1][4]_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [3]),
        .O(\sync_c_q[1][4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[1][4]_i_5 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [2]),
        .O(\sync_c_q[1][4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[1][4]_i_6 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [1]),
        .O(\sync_c_q[1][4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB888)) 
    \sync_c_q[1][5]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [5]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/ok1 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [5]),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[1] [5]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sync_c_q[1][6]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [6]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/ok1 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [6]),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[1] [6]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sync_c_q[1][7]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [7]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/ok1 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [7]),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[1] [7]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sync_c_q[1][8]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [8]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/ok1 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [8]),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[1] [8]));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[1][8]_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [8]),
        .O(\sync_c_q[1][8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[1][8]_i_4 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [7]),
        .O(\sync_c_q[1][8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[1][8]_i_5 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [6]),
        .O(\sync_c_q[1][8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[1][8]_i_6 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [5]),
        .O(\sync_c_q[1][8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \sync_c_q[1][9]_i_1 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [9]),
        .I1(\VGA_r/vga_mem_rd/C_Sync/p_0_in ),
        .I2(\VGA_r/vga_mem_rd/C_Sync/ok1 ),
        .I3(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [9]),
        .O(\VGA_r/vga_mem_rd/C_Sync/v[1] [9]));
  LUT1 #(
    .INIT(2'h2)) 
    \sync_c_q[1][9]_i_3 
       (.I0(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [9]),
        .O(\sync_c_q[1][9]_i_3_n_0 ));
  CARRY4 \sync_c_q_reg[0][4]_i_2 
       (.CI(1'b0),
        .CO({\sync_c_q_reg[0][4]_i_2_n_0 ,\sync_c_q_reg[0][4]_i_2_n_1 ,\sync_c_q_reg[0][4]_i_2_n_2 ,\sync_c_q_reg[0][4]_i_2_n_3 }),
        .CYINIT(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0] [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [4:1]),
        .S({\sync_c_q[0][4]_i_3_n_0 ,\sync_c_q[0][4]_i_4_n_0 ,\sync_c_q[0][4]_i_5_n_0 ,\sync_c_q[0][4]_i_6_n_0 }));
  CARRY4 \sync_c_q_reg[0][8]_i_2 
       (.CI(\sync_c_q_reg[0][4]_i_2_n_0 ),
        .CO({\sync_c_q_reg[0][8]_i_2_n_0 ,\sync_c_q_reg[0][8]_i_2_n_1 ,\sync_c_q_reg[0][8]_i_2_n_2 ,\sync_c_q_reg[0][8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [8:5]),
        .S({\sync_c_q[0][8]_i_3_n_0 ,\sync_c_q[0][8]_i_4_n_0 ,\sync_c_q[0][8]_i_5_n_0 ,\sync_c_q[0][8]_i_6_n_0 }));
  CARRY4 \sync_c_q_reg[0][9]_i_2 
       (.CI(\sync_c_q_reg[0][8]_i_2_n_0 ),
        .CO({\NLW_sync_c_q_reg[0][9]_i_2_CO_UNCONNECTED [3:1],\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [10]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sync_c_q_reg[0][9]_i_2_O_UNCONNECTED [3:2],\sync_c_q_reg[0][9]_i_2_n_6 ,\VGA_r/vga_mem_rd/C_Sync/plusOp[0] [9]}),
        .S({1'b0,1'b0,1'b1,\sync_c_q[0][9]_i_3_n_0 }));
  CARRY4 \sync_c_q_reg[1][4]_i_2 
       (.CI(1'b0),
        .CO({\sync_c_q_reg[1][4]_i_2_n_0 ,\sync_c_q_reg[1][4]_i_2_n_1 ,\sync_c_q_reg[1][4]_i_2_n_2 ,\sync_c_q_reg[1][4]_i_2_n_3 }),
        .CYINIT(\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1] [0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [4:1]),
        .S({\sync_c_q[1][4]_i_3_n_0 ,\sync_c_q[1][4]_i_4_n_0 ,\sync_c_q[1][4]_i_5_n_0 ,\sync_c_q[1][4]_i_6_n_0 }));
  CARRY4 \sync_c_q_reg[1][8]_i_2 
       (.CI(\sync_c_q_reg[1][4]_i_2_n_0 ),
        .CO({\sync_c_q_reg[1][8]_i_2_n_0 ,\sync_c_q_reg[1][8]_i_2_n_1 ,\sync_c_q_reg[1][8]_i_2_n_2 ,\sync_c_q_reg[1][8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [8:5]),
        .S({\sync_c_q[1][8]_i_3_n_0 ,\sync_c_q[1][8]_i_4_n_0 ,\sync_c_q[1][8]_i_5_n_0 ,\sync_c_q[1][8]_i_6_n_0 }));
  CARRY4 \sync_c_q_reg[1][9]_i_2 
       (.CI(\sync_c_q_reg[1][8]_i_2_n_0 ),
        .CO({\NLW_sync_c_q_reg[1][9]_i_2_CO_UNCONNECTED [3:1],\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [10]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sync_c_q_reg[1][9]_i_2_O_UNCONNECTED [3:2],\sync_c_q_reg[1][9]_i_2_n_6 ,\VGA_r/vga_mem_rd/C_Sync/plusOp[1] [9]}),
        .S({1'b0,1'b0,1'b1,\sync_c_q[1][9]_i_3_n_0 }));
  CARRY4 \sync_reg[Hsync]_i_3 
       (.CI(1'b0),
        .CO({\NLW_sync_reg[Hsync]_i_3_CO_UNCONNECTED [3],\VGA_r/vga_mem_rd/C_Sync/p_0_in8_in ,\sync_reg[Hsync]_i_3_n_2 ,\sync_reg[Hsync]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\sync[Hsync]_i_4_n_0 ,1'b0,\sync[Hsync]_i_5_n_0 }),
        .O(\NLW_sync_reg[Hsync]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\sync[Hsync]_i_6_n_0 ,\sync[Hsync]_i_7_n_0 ,\sync[Hsync]_i_8_n_0 }));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][0][0]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][0][7]_i_2_n_0 ),
        .I4(\vga_out[sync][active] ),
        .I5(\vga_out[data][2] [0]),
        .O(\vga_mire_data[0] [0]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][0][1]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][0][7]_i_2_n_0 ),
        .I4(\vga_out[sync][active] ),
        .I5(\vga_out[data][2] [1]),
        .O(\vga_mire_data[0] [1]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][0][2]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][0][7]_i_2_n_0 ),
        .I4(\vga_out[sync][active] ),
        .I5(\vga_out[data][2] [2]),
        .O(\vga_mire_data[0] [2]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][0][3]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][0][7]_i_2_n_0 ),
        .I4(\vga_out[sync][active] ),
        .I5(\vga_out[data][2] [3]),
        .O(\vga_mire_data[0] [3]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][0][4]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][0][7]_i_2_n_0 ),
        .I4(\vga_out[sync][active] ),
        .I5(\vga_out[data][2] [4]),
        .O(\vga_mire_data[0] [4]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][0][5]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][0][7]_i_2_n_0 ),
        .I4(\vga_out[sync][active] ),
        .I5(\vga_out[data][2] [5]),
        .O(\vga_mire_data[0] [5]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][0][6]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][0][7]_i_2_n_0 ),
        .I4(\vga_out[sync][active] ),
        .I5(\vga_out[data][2] [6]),
        .O(\vga_mire_data[0] [6]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][0][7]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][0][7]_i_2_n_0 ),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0 ),
        .I5(\vga_out[data][2] [7]),
        .O(\vga_mire_data[0] [7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vga_dbg[data][0][7]_i_2 
       (.I0(sw[0]),
        .I1(\vga_dbg[data][0][7]_i_3_n_0 ),
        .O(\vga_dbg[data][0][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \vga_dbg[data][0][7]_i_3 
       (.I0(\vga_out[sync][c][0] [3]),
        .I1(\vga_out[sync][c][0] [2]),
        .I2(\vga_out[sync][c][0] [0]),
        .I3(\vga_out[sync][c][0] [1]),
        .I4(\vga_out[sync][c][0] [4]),
        .I5(sw[1]),
        .O(\vga_dbg[data][0][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][1][0]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][1][7]_i_2_n_0 ),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1_n_0 ),
        .I5(\vga_out[data][2] [0]),
        .O(\vga_mire_data[1] [0]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][1][1]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][1][7]_i_2_n_0 ),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1_n_0 ),
        .I5(\vga_out[data][2] [1]),
        .O(\vga_mire_data[1] [1]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][1][2]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][1][7]_i_2_n_0 ),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1_n_0 ),
        .I5(\vga_out[data][2] [2]),
        .O(\vga_mire_data[1] [2]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][1][3]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][1][7]_i_2_n_0 ),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0 ),
        .I5(\vga_out[data][2] [3]),
        .O(\vga_mire_data[1] [3]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][1][4]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][1][7]_i_2_n_0 ),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0 ),
        .I5(\vga_out[data][2] [4]),
        .O(\vga_mire_data[1] [4]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][1][5]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][1][7]_i_2_n_0 ),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0 ),
        .I5(\vga_out[data][2] [5]),
        .O(\vga_mire_data[1] [5]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][1][6]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][1][7]_i_2_n_0 ),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0 ),
        .I5(\vga_out[data][2] [6]),
        .O(\vga_mire_data[1] [6]));
  LUT6 #(
    .INIT(64'hEFFFFFFF00110000)) 
    \vga_dbg[data][1][7]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[1]),
        .I3(\vga_dbg[data][1][7]_i_2_n_0 ),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0 ),
        .I5(\vga_out[data][2] [7]),
        .O(\vga_mire_data[1] [7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \vga_dbg[data][1][7]_i_2 
       (.I0(sw[0]),
        .I1(sw[1]),
        .I2(\vga_dbg[data][1][7]_i_3_n_0 ),
        .O(\vga_dbg[data][1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \vga_dbg[data][1][7]_i_3 
       (.I0(\vga_out[sync][c][1] [5]),
        .I1(\vga_out[sync][c][1] [4]),
        .I2(\vga_out[sync][c][1] [1]),
        .I3(\vga_out[sync][c][1] [0]),
        .I4(\vga_out[sync][c][1] [3]),
        .I5(\vga_out[sync][c][1] [2]),
        .O(\vga_dbg[data][1][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF10100000)) 
    \vga_dbg[data][2][0]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[0]),
        .I3(sw[1]),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0 ),
        .I5(\vga_out[data][2] [0]),
        .O(\vga_mire_data[2] [0]));
  LUT6 #(
    .INIT(64'hFEFFFFFF10100000)) 
    \vga_dbg[data][2][1]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[0]),
        .I3(sw[1]),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0 ),
        .I5(\vga_out[data][2] [1]),
        .O(\vga_mire_data[2] [1]));
  LUT6 #(
    .INIT(64'hFEFFFFFF10100000)) 
    \vga_dbg[data][2][2]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[0]),
        .I3(sw[1]),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0 ),
        .I5(\vga_out[data][2] [2]),
        .O(\vga_mire_data[2] [2]));
  LUT6 #(
    .INIT(64'hFEFFFFFF10100000)) 
    \vga_dbg[data][2][3]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[0]),
        .I3(sw[1]),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0 ),
        .I5(\vga_out[data][2] [3]),
        .O(\vga_mire_data[2] [3]));
  LUT6 #(
    .INIT(64'hFEFFFFFF10100000)) 
    \vga_dbg[data][2][4]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[0]),
        .I3(sw[1]),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0 ),
        .I5(\vga_out[data][2] [4]),
        .O(\vga_mire_data[2] [4]));
  LUT6 #(
    .INIT(64'hFEFFFFFF10100000)) 
    \vga_dbg[data][2][5]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[0]),
        .I3(sw[1]),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0 ),
        .I5(\vga_out[data][2] [5]),
        .O(\vga_mire_data[2] [5]));
  LUT6 #(
    .INIT(64'hFEFFFFFF10100000)) 
    \vga_dbg[data][2][6]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[0]),
        .I3(sw[1]),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0 ),
        .I5(\vga_out[data][2] [6]),
        .O(\vga_mire_data[2] [6]));
  LUT6 #(
    .INIT(64'hFEFFFFFF10100000)) 
    \vga_dbg[data][2][7]_i_1 
       (.I0(sw[2]),
        .I1(sw[3]),
        .I2(sw[0]),
        .I3(sw[1]),
        .I4(\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0 ),
        .I5(\vga_out[data][2] [7]),
        .O(\vga_mire_data[2] [7]));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][0][0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[0] [0]),
        .Q(\vga_dbg_reg[data_n_0_][0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][0][1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[0] [1]),
        .Q(\vga_dbg_reg[data_n_0_][0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][0][2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[0] [2]),
        .Q(\vga_dbg_reg[data_n_0_][0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][0][3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[0] [3]),
        .Q(\vga_dbg_reg[data_n_0_][0] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][0][4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[0] [4]),
        .Q(\vga_dbg_reg[data_n_0_][0] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][0][5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[0] [5]),
        .Q(\vga_dbg_reg[data_n_0_][0] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][0][6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[0] [6]),
        .Q(\vga_dbg_reg[data_n_0_][0] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][0][7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[0] [7]),
        .Q(\vga_dbg_reg[data_n_0_][0] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][1][0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[1] [0]),
        .Q(\vga_dbg_reg[data_n_0_][1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][1][1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[1] [1]),
        .Q(\vga_dbg_reg[data_n_0_][1] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][1][2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[1] [2]),
        .Q(\vga_dbg_reg[data_n_0_][1] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][1][3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[1] [3]),
        .Q(\vga_dbg_reg[data_n_0_][1] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][1][4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[1] [4]),
        .Q(\vga_dbg_reg[data_n_0_][1] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][1][5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[1] [5]),
        .Q(\vga_dbg_reg[data_n_0_][1] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][1][6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[1] [6]),
        .Q(\vga_dbg_reg[data_n_0_][1] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][1][7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[1] [7]),
        .Q(\vga_dbg_reg[data_n_0_][1] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][2][0] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[2] [0]),
        .Q(\vga_dbg_reg[data_n_0_][2] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][2][1] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[2] [1]),
        .Q(\vga_dbg_reg[data_n_0_][2] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][2][2] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[2] [2]),
        .Q(\vga_dbg_reg[data_n_0_][2] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][2][3] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[2] [3]),
        .Q(\vga_dbg_reg[data_n_0_][2] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][2][4] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[2] [4]),
        .Q(\vga_dbg_reg[data_n_0_][2] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][2][5] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[2] [5]),
        .Q(\vga_dbg_reg[data_n_0_][2] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][2][6] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[2] [6]),
        .Q(\vga_dbg_reg[data_n_0_][2] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \vga_dbg_reg[data][2][7] 
       (.C(clk_display),
        .CE(1'b1),
        .D(\vga_mire_data[2] [7]),
        .Q(\vga_dbg_reg[data_n_0_][2] [7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_q_q[data][0][7]_i_1 
       (.I0(\VGA_r/vga_mem_rd/vga_q_reg[sync][active_n_0_] ),
        .O(\vga_q_q[data][0][7]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "HDMI_proc" *) 
module system_HDMI_proc_0_2_HDMI_proc
   (led,
    hdmi_TMDS_Clk_p,
    hdmi_TMDS_Clk_n,
    hdmi_TMDS_Data_p,
    hdmi_TMDS_Data_n,
    btn,
    sw,
    clk_display,
    clk_hdmi);
  output [3:0]led;
  output hdmi_TMDS_Clk_p;
  output hdmi_TMDS_Clk_n;
  output [2:0]hdmi_TMDS_Data_p;
  output [2:0]hdmi_TMDS_Data_n;
  input [3:0]btn;
  input [3:0]sw;
  input clk_display;
  input clk_hdmi;

  wire auto_reset;
  wire auto_reset_i_2_n_0;
  wire [3:0]btn;
  wire clk_display;
  wire clk_hdmi;
  wire \display_mem_ctl[en] ;
  wire hdmi_TMDS_Clk_n;
  wire hdmi_TMDS_Clk_p;
  wire [2:0]hdmi_TMDS_Data_n;
  wire [2:0]hdmi_TMDS_Data_p;
  wire [16:0]img_out_rsc_wadr;
  wire [3:0]led;
  wire [10:0]p_0_in;
  wire [7:0]proc_display_mem_data;
  wire \reset_auto.cpt[10]_i_2_n_0 ;
  wire [10:0]\reset_auto.cpt_reg ;
  wire reset_i_1_n_0;
  wire rst;
  wire sel;
  wire [3:0]sw;
  wire NLW_proc_img_out_triosy_lz_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    auto_reset_i_1
       (.I0(auto_reset_i_2_n_0),
        .I1(\reset_auto.cpt_reg [2]),
        .I2(\reset_auto.cpt_reg [1]),
        .I3(\reset_auto.cpt_reg [0]),
        .I4(\reset_auto.cpt_reg [4]),
        .I5(\reset_auto.cpt_reg [10]),
        .O(sel));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    auto_reset_i_2
       (.I0(\reset_auto.cpt_reg [7]),
        .I1(\reset_auto.cpt_reg [8]),
        .I2(\reset_auto.cpt_reg [9]),
        .I3(\reset_auto.cpt_reg [6]),
        .I4(\reset_auto.cpt_reg [3]),
        .I5(\reset_auto.cpt_reg [5]),
        .O(auto_reset_i_2_n_0));
  FDRE auto_reset_reg
       (.C(clk_display),
        .CE(1'b1),
        .D(sel),
        .Q(auto_reset),
        .R(1'b0));
  system_HDMI_proc_0_2_HDMI_RAM display
       (.clk_display(clk_display),
        .clk_hdmi(clk_hdmi),
        .clk_proc(clk_display),
        .hdmi_TMDS_Clk_n(hdmi_TMDS_Clk_n),
        .hdmi_TMDS_Clk_p(hdmi_TMDS_Clk_p),
        .hdmi_TMDS_Data_n(hdmi_TMDS_Data_n),
        .hdmi_TMDS_Data_p(hdmi_TMDS_Data_p),
        .led(led),
        .\proc_display_mem_ctl[addr] ({1'b0,1'b0,1'b0,1'b0,1'b0,img_out_rsc_wadr}),
        .\proc_display_mem_ctl[en] (\display_mem_ctl[en] ),
        .\proc_display_mem_ctl[we] (\display_mem_ctl[en] ),
        .proc_display_mem_data(proc_display_mem_data),
        .push(btn),
        .sw(sw));
  system_HDMI_proc_0_2_DispProcTest proc
       (.clk(clk_display),
        .img_out_rsc_d(proc_display_mem_data),
        .img_out_rsc_wadr(img_out_rsc_wadr),
        .img_out_rsc_we(\display_mem_ctl[en] ),
        .img_out_triosy_lz(NLW_proc_img_out_triosy_lz_UNCONNECTED),
        .rst(rst));
  LUT1 #(
    .INIT(2'h1)) 
    \reset_auto.cpt[0]_i_1 
       (.I0(\reset_auto.cpt_reg [0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \reset_auto.cpt[10]_i_1 
       (.I0(\reset_auto.cpt_reg [8]),
        .I1(\reset_auto.cpt_reg [6]),
        .I2(\reset_auto.cpt[10]_i_2_n_0 ),
        .I3(\reset_auto.cpt_reg [7]),
        .I4(\reset_auto.cpt_reg [9]),
        .I5(\reset_auto.cpt_reg [10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \reset_auto.cpt[10]_i_2 
       (.I0(\reset_auto.cpt_reg [5]),
        .I1(\reset_auto.cpt_reg [3]),
        .I2(\reset_auto.cpt_reg [1]),
        .I3(\reset_auto.cpt_reg [0]),
        .I4(\reset_auto.cpt_reg [2]),
        .I5(\reset_auto.cpt_reg [4]),
        .O(\reset_auto.cpt[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reset_auto.cpt[1]_i_1 
       (.I0(\reset_auto.cpt_reg [0]),
        .I1(\reset_auto.cpt_reg [1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \reset_auto.cpt[2]_i_1 
       (.I0(\reset_auto.cpt_reg [0]),
        .I1(\reset_auto.cpt_reg [1]),
        .I2(\reset_auto.cpt_reg [2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \reset_auto.cpt[3]_i_1 
       (.I0(\reset_auto.cpt_reg [1]),
        .I1(\reset_auto.cpt_reg [0]),
        .I2(\reset_auto.cpt_reg [2]),
        .I3(\reset_auto.cpt_reg [3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \reset_auto.cpt[4]_i_1 
       (.I0(\reset_auto.cpt_reg [2]),
        .I1(\reset_auto.cpt_reg [0]),
        .I2(\reset_auto.cpt_reg [1]),
        .I3(\reset_auto.cpt_reg [3]),
        .I4(\reset_auto.cpt_reg [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \reset_auto.cpt[5]_i_1 
       (.I0(\reset_auto.cpt_reg [3]),
        .I1(\reset_auto.cpt_reg [1]),
        .I2(\reset_auto.cpt_reg [0]),
        .I3(\reset_auto.cpt_reg [2]),
        .I4(\reset_auto.cpt_reg [4]),
        .I5(\reset_auto.cpt_reg [5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \reset_auto.cpt[6]_i_1 
       (.I0(\reset_auto.cpt[10]_i_2_n_0 ),
        .I1(\reset_auto.cpt_reg [6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \reset_auto.cpt[7]_i_1 
       (.I0(\reset_auto.cpt[10]_i_2_n_0 ),
        .I1(\reset_auto.cpt_reg [6]),
        .I2(\reset_auto.cpt_reg [7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \reset_auto.cpt[8]_i_1 
       (.I0(\reset_auto.cpt_reg [6]),
        .I1(\reset_auto.cpt[10]_i_2_n_0 ),
        .I2(\reset_auto.cpt_reg [7]),
        .I3(\reset_auto.cpt_reg [8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \reset_auto.cpt[9]_i_1 
       (.I0(\reset_auto.cpt_reg [7]),
        .I1(\reset_auto.cpt[10]_i_2_n_0 ),
        .I2(\reset_auto.cpt_reg [6]),
        .I3(\reset_auto.cpt_reg [8]),
        .I4(\reset_auto.cpt_reg [9]),
        .O(p_0_in[9]));
  FDRE \reset_auto.cpt_reg[0] 
       (.C(clk_display),
        .CE(sel),
        .D(p_0_in[0]),
        .Q(\reset_auto.cpt_reg [0]),
        .R(1'b0));
  FDRE \reset_auto.cpt_reg[10] 
       (.C(clk_display),
        .CE(sel),
        .D(p_0_in[10]),
        .Q(\reset_auto.cpt_reg [10]),
        .R(1'b0));
  FDRE \reset_auto.cpt_reg[1] 
       (.C(clk_display),
        .CE(sel),
        .D(p_0_in[1]),
        .Q(\reset_auto.cpt_reg [1]),
        .R(1'b0));
  FDRE \reset_auto.cpt_reg[2] 
       (.C(clk_display),
        .CE(sel),
        .D(p_0_in[2]),
        .Q(\reset_auto.cpt_reg [2]),
        .R(1'b0));
  FDRE \reset_auto.cpt_reg[3] 
       (.C(clk_display),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(\reset_auto.cpt_reg [3]),
        .R(1'b0));
  FDRE \reset_auto.cpt_reg[4] 
       (.C(clk_display),
        .CE(sel),
        .D(p_0_in[4]),
        .Q(\reset_auto.cpt_reg [4]),
        .R(1'b0));
  FDRE \reset_auto.cpt_reg[5] 
       (.C(clk_display),
        .CE(sel),
        .D(p_0_in[5]),
        .Q(\reset_auto.cpt_reg [5]),
        .R(1'b0));
  FDRE \reset_auto.cpt_reg[6] 
       (.C(clk_display),
        .CE(sel),
        .D(p_0_in[6]),
        .Q(\reset_auto.cpt_reg [6]),
        .R(1'b0));
  FDRE \reset_auto.cpt_reg[7] 
       (.C(clk_display),
        .CE(sel),
        .D(p_0_in[7]),
        .Q(\reset_auto.cpt_reg [7]),
        .R(1'b0));
  FDRE \reset_auto.cpt_reg[8] 
       (.C(clk_display),
        .CE(sel),
        .D(p_0_in[8]),
        .Q(\reset_auto.cpt_reg [8]),
        .R(1'b0));
  FDRE \reset_auto.cpt_reg[9] 
       (.C(clk_display),
        .CE(sel),
        .D(p_0_in[9]),
        .Q(\reset_auto.cpt_reg [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    reset_i_1
       (.I0(btn[0]),
        .I1(auto_reset),
        .O(reset_i_1_n_0));
  FDRE reset_reg
       (.C(clk_display),
        .CE(1'b1),
        .D(reset_i_1_n_0),
        .Q(rst),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "mem2p_76800_8,blk_mem_gen_v8_3_6,{}" *) (* ORIG_REF_NAME = "mem2p_76800_8" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.1" *) 
module system_HDMI_proc_0_2_mem2p_76800_8
   (clka,
    clkb,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    douta,
    doutb,
    wea,
    web);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  input [16:0]addra;
  input [16:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta;
  output [7:0]doutb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;

  wire [16:0]addra;
  wire [16:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [16:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [16:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "17" *) 
  (* C_ADDRB_WIDTH = "17" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "19" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.0714 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "mem2p_76800_8.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "76800" *) 
  (* C_READ_DEPTH_B = "76800" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "76800" *) 
  (* C_WRITE_DEPTH_B = "76800" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[16:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[16:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_bindec
   (ena,
    addra,
    ena_array);
  input ena;
  input [4:0]addra;
  output [18:0]ena_array;

  wire [4:0]addra;
  wire ena;
  wire [18:0]ena_array;

  LUT6 #(
    .INIT(64'h0000000000000100)) 
    ENOUT
       (.I0(addra[0]),
        .I1(addra[4]),
        .I2(addra[1]),
        .I3(ena),
        .I4(addra[3]),
        .I5(addra[2]),
        .O(ena_array[0]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ENOUT_inferred__0/i_ 
       (.I0(addra[1]),
        .I1(addra[4]),
        .I2(ena),
        .I3(addra[0]),
        .I4(addra[3]),
        .I5(addra[2]),
        .O(ena_array[1]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ENOUT_inferred__1/i_ 
       (.I0(addra[0]),
        .I1(addra[4]),
        .I2(ena),
        .I3(addra[1]),
        .I4(addra[3]),
        .I5(addra[2]),
        .O(ena_array[2]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \ENOUT_inferred__10/i_ 
       (.I0(addra[2]),
        .I1(addra[4]),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(ena),
        .I5(addra[3]),
        .O(ena_array[11]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__11/i_ 
       (.I0(addra[1]),
        .I1(addra[4]),
        .I2(addra[2]),
        .I3(addra[3]),
        .I4(addra[0]),
        .I5(ena),
        .O(ena_array[12]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \ENOUT_inferred__12/i_ 
       (.I0(addra[1]),
        .I1(addra[4]),
        .I2(addra[3]),
        .I3(addra[0]),
        .I4(ena),
        .I5(addra[2]),
        .O(ena_array[13]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \ENOUT_inferred__13/i_ 
       (.I0(addra[0]),
        .I1(addra[4]),
        .I2(addra[1]),
        .I3(addra[3]),
        .I4(ena),
        .I5(addra[2]),
        .O(ena_array[14]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \ENOUT_inferred__14/i_ 
       (.I0(ena),
        .I1(addra[4]),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(addra[3]),
        .I5(addra[2]),
        .O(ena_array[15]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ENOUT_inferred__15/i_ 
       (.I0(addra[0]),
        .I1(addra[1]),
        .I2(addra[4]),
        .I3(ena),
        .I4(addra[3]),
        .I5(addra[2]),
        .O(ena_array[16]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__16/i_ 
       (.I0(addra[1]),
        .I1(addra[2]),
        .I2(ena),
        .I3(addra[0]),
        .I4(addra[3]),
        .I5(addra[4]),
        .O(ena_array[17]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__17/i_ 
       (.I0(addra[0]),
        .I1(addra[2]),
        .I2(addra[1]),
        .I3(ena),
        .I4(addra[3]),
        .I5(addra[4]),
        .O(ena_array[18]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__2/i_ 
       (.I0(addra[2]),
        .I1(addra[4]),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(addra[3]),
        .I5(ena),
        .O(ena_array[3]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ENOUT_inferred__3/i_ 
       (.I0(addra[1]),
        .I1(addra[4]),
        .I2(ena),
        .I3(addra[2]),
        .I4(addra[3]),
        .I5(addra[0]),
        .O(ena_array[4]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__4/i_ 
       (.I0(addra[1]),
        .I1(addra[4]),
        .I2(addra[2]),
        .I3(addra[0]),
        .I4(addra[3]),
        .I5(ena),
        .O(ena_array[5]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__5/i_ 
       (.I0(addra[0]),
        .I1(addra[4]),
        .I2(addra[1]),
        .I3(addra[2]),
        .I4(addra[3]),
        .I5(ena),
        .O(ena_array[6]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \ENOUT_inferred__6/i_ 
       (.I0(addra[3]),
        .I1(addra[4]),
        .I2(addra[1]),
        .I3(addra[0]),
        .I4(ena),
        .I5(addra[2]),
        .O(ena_array[7]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ENOUT_inferred__7/i_ 
       (.I0(addra[1]),
        .I1(addra[4]),
        .I2(ena),
        .I3(addra[3]),
        .I4(addra[0]),
        .I5(addra[2]),
        .O(ena_array[8]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__8/i_ 
       (.I0(addra[2]),
        .I1(addra[4]),
        .I2(addra[3]),
        .I3(addra[0]),
        .I4(addra[1]),
        .I5(ena),
        .O(ena_array[9]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__9/i_ 
       (.I0(addra[2]),
        .I1(addra[4]),
        .I2(addra[1]),
        .I3(addra[3]),
        .I4(addra[0]),
        .I5(ena),
        .O(ena_array[10]));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_bindec_0
   (enb,
    addrb,
    enb_array);
  input enb;
  input [4:0]addrb;
  output [18:0]enb_array;

  wire [4:0]addrb;
  wire enb;
  wire [18:0]enb_array;

  LUT6 #(
    .INIT(64'h0000000000000100)) 
    ENOUT
       (.I0(addrb[0]),
        .I1(addrb[4]),
        .I2(addrb[1]),
        .I3(enb),
        .I4(addrb[3]),
        .I5(addrb[2]),
        .O(enb_array[0]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ENOUT_inferred__0/i_ 
       (.I0(addrb[1]),
        .I1(addrb[4]),
        .I2(enb),
        .I3(addrb[0]),
        .I4(addrb[3]),
        .I5(addrb[2]),
        .O(enb_array[1]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ENOUT_inferred__1/i_ 
       (.I0(addrb[0]),
        .I1(addrb[4]),
        .I2(enb),
        .I3(addrb[1]),
        .I4(addrb[3]),
        .I5(addrb[2]),
        .O(enb_array[2]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \ENOUT_inferred__10/i_ 
       (.I0(addrb[2]),
        .I1(addrb[4]),
        .I2(addrb[1]),
        .I3(addrb[0]),
        .I4(enb),
        .I5(addrb[3]),
        .O(enb_array[11]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__11/i_ 
       (.I0(addrb[1]),
        .I1(addrb[4]),
        .I2(addrb[2]),
        .I3(addrb[3]),
        .I4(addrb[0]),
        .I5(enb),
        .O(enb_array[12]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \ENOUT_inferred__12/i_ 
       (.I0(addrb[1]),
        .I1(addrb[4]),
        .I2(addrb[3]),
        .I3(addrb[0]),
        .I4(enb),
        .I5(addrb[2]),
        .O(enb_array[13]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \ENOUT_inferred__13/i_ 
       (.I0(addrb[0]),
        .I1(addrb[4]),
        .I2(addrb[1]),
        .I3(addrb[3]),
        .I4(enb),
        .I5(addrb[2]),
        .O(enb_array[14]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \ENOUT_inferred__14/i_ 
       (.I0(enb),
        .I1(addrb[4]),
        .I2(addrb[1]),
        .I3(addrb[0]),
        .I4(addrb[3]),
        .I5(addrb[2]),
        .O(enb_array[15]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ENOUT_inferred__15/i_ 
       (.I0(addrb[0]),
        .I1(addrb[1]),
        .I2(addrb[4]),
        .I3(enb),
        .I4(addrb[3]),
        .I5(addrb[2]),
        .O(enb_array[16]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__16/i_ 
       (.I0(addrb[1]),
        .I1(addrb[2]),
        .I2(enb),
        .I3(addrb[0]),
        .I4(addrb[3]),
        .I5(addrb[4]),
        .O(enb_array[17]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__17/i_ 
       (.I0(addrb[0]),
        .I1(addrb[2]),
        .I2(addrb[1]),
        .I3(enb),
        .I4(addrb[3]),
        .I5(addrb[4]),
        .O(enb_array[18]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__2/i_ 
       (.I0(addrb[2]),
        .I1(addrb[4]),
        .I2(addrb[1]),
        .I3(addrb[0]),
        .I4(addrb[3]),
        .I5(enb),
        .O(enb_array[3]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ENOUT_inferred__3/i_ 
       (.I0(addrb[1]),
        .I1(addrb[4]),
        .I2(enb),
        .I3(addrb[2]),
        .I4(addrb[3]),
        .I5(addrb[0]),
        .O(enb_array[4]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__4/i_ 
       (.I0(addrb[1]),
        .I1(addrb[4]),
        .I2(addrb[2]),
        .I3(addrb[0]),
        .I4(addrb[3]),
        .I5(enb),
        .O(enb_array[5]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__5/i_ 
       (.I0(addrb[0]),
        .I1(addrb[4]),
        .I2(addrb[1]),
        .I3(addrb[2]),
        .I4(addrb[3]),
        .I5(enb),
        .O(enb_array[6]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \ENOUT_inferred__6/i_ 
       (.I0(addrb[3]),
        .I1(addrb[4]),
        .I2(addrb[1]),
        .I3(addrb[0]),
        .I4(enb),
        .I5(addrb[2]),
        .O(enb_array[7]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \ENOUT_inferred__7/i_ 
       (.I0(addrb[1]),
        .I1(addrb[4]),
        .I2(enb),
        .I3(addrb[3]),
        .I4(addrb[0]),
        .I5(addrb[2]),
        .O(enb_array[8]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__8/i_ 
       (.I0(addrb[2]),
        .I1(addrb[4]),
        .I2(addrb[3]),
        .I3(addrb[0]),
        .I4(addrb[1]),
        .I5(enb),
        .O(enb_array[9]));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \ENOUT_inferred__9/i_ 
       (.I0(addrb[2]),
        .I1(addrb[4]),
        .I2(addrb[1]),
        .I3(addrb[3]),
        .I4(addrb[0]),
        .I5(enb),
        .O(enb_array[10]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_generic_cstr
   (clka,
    clkb,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    douta,
    doutb,
    wea,
    web);
  input clka;
  input clkb;
  input ena;
  input enb;
  input [16:0]addra;
  input [16:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta;
  output [7:0]doutb;
  input [0:0]wea;
  input [0:0]web;

  wire [16:0]addra;
  wire [16:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [151:0]douta_array;
  wire [7:0]doutb;
  wire [151:0]doutb_array;
  wire ena;
  wire [18:0]ena_array;
  wire enb;
  wire [18:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[16:12]),
        .ena(ena),
        .ena_array(ena_array));
  system_HDMI_proc_0_2_mem2p_76800_8_bindec_0 \bindec_b.bindec_inst_b 
       (.addrb(addrb[16:12]),
        .enb(enb),
        .enb_array(enb_array));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_mux \has_mux_a.A 
       (.addra(addra[16:12]),
        .clka(clka),
        .douta(douta),
        .douta_array(douta_array),
        .ena(ena));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_mux__parameterized0 \has_mux_b.B 
       (.addrb(addrb[16:12]),
        .clkb(clkb),
        .doutb(doutb),
        .doutb_array(doutb_array),
        .enb(enb));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[7:0]),
        .doutb_array(doutb_array[7:0]),
        .ena_array(ena_array[0]),
        .enb_array(enb_array[0]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[87:80]),
        .doutb_array(doutb_array[87:80]),
        .ena_array(ena_array[10]),
        .enb_array(enb_array[10]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[95:88]),
        .doutb_array(doutb_array[95:88]),
        .ena_array(ena_array[11]),
        .enb_array(enb_array[11]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[103:96]),
        .doutb_array(doutb_array[103:96]),
        .ena_array(ena_array[12]),
        .enb_array(enb_array[12]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[111:104]),
        .doutb_array(doutb_array[111:104]),
        .ena_array(ena_array[13]),
        .enb_array(enb_array[13]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[119:112]),
        .doutb_array(doutb_array[119:112]),
        .ena_array(ena_array[14]),
        .enb_array(enb_array[14]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[127:120]),
        .doutb_array(doutb_array[127:120]),
        .ena_array(ena_array[15]),
        .enb_array(enb_array[15]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized15 \ramloop[16].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[135:128]),
        .doutb_array(doutb_array[135:128]),
        .ena_array(ena_array[16]),
        .enb_array(enb_array[16]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized16 \ramloop[17].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[143:136]),
        .doutb_array(doutb_array[143:136]),
        .ena_array(ena_array[17]),
        .enb_array(enb_array[17]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized17 \ramloop[18].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[151:144]),
        .doutb_array(doutb_array[151:144]),
        .ena_array(ena_array[18]),
        .enb_array(enb_array[18]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[15:8]),
        .doutb_array(doutb_array[15:8]),
        .ena_array(ena_array[1]),
        .enb_array(enb_array[1]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[23:16]),
        .doutb_array(doutb_array[23:16]),
        .ena_array(ena_array[2]),
        .enb_array(enb_array[2]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[31:24]),
        .doutb_array(doutb_array[31:24]),
        .ena_array(ena_array[3]),
        .enb_array(enb_array[3]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[39:32]),
        .doutb_array(doutb_array[39:32]),
        .ena_array(ena_array[4]),
        .enb_array(enb_array[4]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[47:40]),
        .doutb_array(doutb_array[47:40]),
        .ena_array(ena_array[5]),
        .enb_array(enb_array[5]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[55:48]),
        .doutb_array(doutb_array[55:48]),
        .ena_array(ena_array[6]),
        .enb_array(enb_array[6]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[63:56]),
        .doutb_array(doutb_array[63:56]),
        .ena_array(ena_array[7]),
        .enb_array(enb_array[7]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[71:64]),
        .doutb_array(doutb_array[71:64]),
        .ena_array(ena_array[8]),
        .enb_array(enb_array[8]),
        .wea(wea),
        .web(web));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array[79:72]),
        .doutb_array(doutb_array[79:72]),
        .ena_array(ena_array[9]),
        .enb_array(enb_array[9]),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_mux
   (clka,
    ena,
    addra,
    douta,
    douta_array);
  input clka;
  input ena;
  input [4:0]addra;
  output [7:0]douta;
  input [151:0]douta_array;

  wire [4:0]addra;
  wire clka;
  wire [7:0]douta;
  wire \douta[0]_INST_0_i_1_n_0 ;
  wire \douta[0]_INST_0_i_2_n_0 ;
  wire \douta[0]_INST_0_i_3_n_0 ;
  wire \douta[0]_INST_0_i_4_n_0 ;
  wire \douta[0]_INST_0_i_5_n_0 ;
  wire \douta[0]_INST_0_i_6_n_0 ;
  wire \douta[0]_INST_0_i_7_n_0 ;
  wire \douta[1]_INST_0_i_1_n_0 ;
  wire \douta[1]_INST_0_i_2_n_0 ;
  wire \douta[1]_INST_0_i_3_n_0 ;
  wire \douta[1]_INST_0_i_4_n_0 ;
  wire \douta[1]_INST_0_i_5_n_0 ;
  wire \douta[1]_INST_0_i_6_n_0 ;
  wire \douta[1]_INST_0_i_7_n_0 ;
  wire \douta[2]_INST_0_i_1_n_0 ;
  wire \douta[2]_INST_0_i_2_n_0 ;
  wire \douta[2]_INST_0_i_3_n_0 ;
  wire \douta[2]_INST_0_i_4_n_0 ;
  wire \douta[2]_INST_0_i_5_n_0 ;
  wire \douta[2]_INST_0_i_6_n_0 ;
  wire \douta[2]_INST_0_i_7_n_0 ;
  wire \douta[3]_INST_0_i_1_n_0 ;
  wire \douta[3]_INST_0_i_2_n_0 ;
  wire \douta[3]_INST_0_i_3_n_0 ;
  wire \douta[3]_INST_0_i_4_n_0 ;
  wire \douta[3]_INST_0_i_5_n_0 ;
  wire \douta[3]_INST_0_i_6_n_0 ;
  wire \douta[3]_INST_0_i_7_n_0 ;
  wire \douta[4]_INST_0_i_1_n_0 ;
  wire \douta[4]_INST_0_i_2_n_0 ;
  wire \douta[4]_INST_0_i_3_n_0 ;
  wire \douta[4]_INST_0_i_4_n_0 ;
  wire \douta[4]_INST_0_i_5_n_0 ;
  wire \douta[4]_INST_0_i_6_n_0 ;
  wire \douta[4]_INST_0_i_7_n_0 ;
  wire \douta[5]_INST_0_i_1_n_0 ;
  wire \douta[5]_INST_0_i_2_n_0 ;
  wire \douta[5]_INST_0_i_3_n_0 ;
  wire \douta[5]_INST_0_i_4_n_0 ;
  wire \douta[5]_INST_0_i_5_n_0 ;
  wire \douta[5]_INST_0_i_6_n_0 ;
  wire \douta[5]_INST_0_i_7_n_0 ;
  wire \douta[6]_INST_0_i_1_n_0 ;
  wire \douta[6]_INST_0_i_2_n_0 ;
  wire \douta[6]_INST_0_i_3_n_0 ;
  wire \douta[6]_INST_0_i_4_n_0 ;
  wire \douta[6]_INST_0_i_5_n_0 ;
  wire \douta[6]_INST_0_i_6_n_0 ;
  wire \douta[6]_INST_0_i_7_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_3_n_0 ;
  wire \douta[7]_INST_0_i_4_n_0 ;
  wire \douta[7]_INST_0_i_5_n_0 ;
  wire \douta[7]_INST_0_i_6_n_0 ;
  wire \douta[7]_INST_0_i_7_n_0 ;
  wire [151:0]douta_array;
  wire ena;
  wire [4:0]sel_pipe;

  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[0]_INST_0 
       (.I0(\douta[0]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[4]),
        .I2(\douta[0]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[3]),
        .I4(\douta[0]_INST_0_i_3_n_0 ),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[0]_INST_0_i_1 
       (.I0(douta_array[128]),
        .I1(sel_pipe[0]),
        .I2(douta_array[136]),
        .I3(sel_pipe[1]),
        .I4(douta_array[144]),
        .I5(sel_pipe[2]),
        .O(\douta[0]_INST_0_i_1_n_0 ));
  MUXF7 \douta[0]_INST_0_i_2 
       (.I0(\douta[0]_INST_0_i_4_n_0 ),
        .I1(\douta[0]_INST_0_i_5_n_0 ),
        .O(\douta[0]_INST_0_i_2_n_0 ),
        .S(sel_pipe[2]));
  MUXF7 \douta[0]_INST_0_i_3 
       (.I0(\douta[0]_INST_0_i_6_n_0 ),
        .I1(\douta[0]_INST_0_i_7_n_0 ),
        .O(\douta[0]_INST_0_i_3_n_0 ),
        .S(sel_pipe[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[0]_INST_0_i_4 
       (.I0(douta_array[88]),
        .I1(douta_array[80]),
        .I2(sel_pipe[1]),
        .I3(douta_array[72]),
        .I4(sel_pipe[0]),
        .I5(douta_array[64]),
        .O(\douta[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[0]_INST_0_i_5 
       (.I0(douta_array[120]),
        .I1(douta_array[112]),
        .I2(sel_pipe[1]),
        .I3(douta_array[104]),
        .I4(sel_pipe[0]),
        .I5(douta_array[96]),
        .O(\douta[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[0]_INST_0_i_6 
       (.I0(douta_array[24]),
        .I1(douta_array[16]),
        .I2(sel_pipe[1]),
        .I3(douta_array[8]),
        .I4(sel_pipe[0]),
        .I5(douta_array[0]),
        .O(\douta[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[0]_INST_0_i_7 
       (.I0(douta_array[56]),
        .I1(douta_array[48]),
        .I2(sel_pipe[1]),
        .I3(douta_array[40]),
        .I4(sel_pipe[0]),
        .I5(douta_array[32]),
        .O(\douta[0]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[1]_INST_0 
       (.I0(\douta[1]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[4]),
        .I2(\douta[1]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[3]),
        .I4(\douta[1]_INST_0_i_3_n_0 ),
        .O(douta[1]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[1]_INST_0_i_1 
       (.I0(douta_array[129]),
        .I1(sel_pipe[0]),
        .I2(douta_array[137]),
        .I3(sel_pipe[1]),
        .I4(douta_array[145]),
        .I5(sel_pipe[2]),
        .O(\douta[1]_INST_0_i_1_n_0 ));
  MUXF7 \douta[1]_INST_0_i_2 
       (.I0(\douta[1]_INST_0_i_4_n_0 ),
        .I1(\douta[1]_INST_0_i_5_n_0 ),
        .O(\douta[1]_INST_0_i_2_n_0 ),
        .S(sel_pipe[2]));
  MUXF7 \douta[1]_INST_0_i_3 
       (.I0(\douta[1]_INST_0_i_6_n_0 ),
        .I1(\douta[1]_INST_0_i_7_n_0 ),
        .O(\douta[1]_INST_0_i_3_n_0 ),
        .S(sel_pipe[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[1]_INST_0_i_4 
       (.I0(douta_array[89]),
        .I1(douta_array[81]),
        .I2(sel_pipe[1]),
        .I3(douta_array[73]),
        .I4(sel_pipe[0]),
        .I5(douta_array[65]),
        .O(\douta[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[1]_INST_0_i_5 
       (.I0(douta_array[121]),
        .I1(douta_array[113]),
        .I2(sel_pipe[1]),
        .I3(douta_array[105]),
        .I4(sel_pipe[0]),
        .I5(douta_array[97]),
        .O(\douta[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[1]_INST_0_i_6 
       (.I0(douta_array[25]),
        .I1(douta_array[17]),
        .I2(sel_pipe[1]),
        .I3(douta_array[9]),
        .I4(sel_pipe[0]),
        .I5(douta_array[1]),
        .O(\douta[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[1]_INST_0_i_7 
       (.I0(douta_array[57]),
        .I1(douta_array[49]),
        .I2(sel_pipe[1]),
        .I3(douta_array[41]),
        .I4(sel_pipe[0]),
        .I5(douta_array[33]),
        .O(\douta[1]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[2]_INST_0 
       (.I0(\douta[2]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[4]),
        .I2(\douta[2]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[3]),
        .I4(\douta[2]_INST_0_i_3_n_0 ),
        .O(douta[2]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[2]_INST_0_i_1 
       (.I0(douta_array[130]),
        .I1(sel_pipe[0]),
        .I2(douta_array[138]),
        .I3(sel_pipe[1]),
        .I4(douta_array[146]),
        .I5(sel_pipe[2]),
        .O(\douta[2]_INST_0_i_1_n_0 ));
  MUXF7 \douta[2]_INST_0_i_2 
       (.I0(\douta[2]_INST_0_i_4_n_0 ),
        .I1(\douta[2]_INST_0_i_5_n_0 ),
        .O(\douta[2]_INST_0_i_2_n_0 ),
        .S(sel_pipe[2]));
  MUXF7 \douta[2]_INST_0_i_3 
       (.I0(\douta[2]_INST_0_i_6_n_0 ),
        .I1(\douta[2]_INST_0_i_7_n_0 ),
        .O(\douta[2]_INST_0_i_3_n_0 ),
        .S(sel_pipe[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[2]_INST_0_i_4 
       (.I0(douta_array[90]),
        .I1(douta_array[82]),
        .I2(sel_pipe[1]),
        .I3(douta_array[74]),
        .I4(sel_pipe[0]),
        .I5(douta_array[66]),
        .O(\douta[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[2]_INST_0_i_5 
       (.I0(douta_array[122]),
        .I1(douta_array[114]),
        .I2(sel_pipe[1]),
        .I3(douta_array[106]),
        .I4(sel_pipe[0]),
        .I5(douta_array[98]),
        .O(\douta[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[2]_INST_0_i_6 
       (.I0(douta_array[26]),
        .I1(douta_array[18]),
        .I2(sel_pipe[1]),
        .I3(douta_array[10]),
        .I4(sel_pipe[0]),
        .I5(douta_array[2]),
        .O(\douta[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[2]_INST_0_i_7 
       (.I0(douta_array[58]),
        .I1(douta_array[50]),
        .I2(sel_pipe[1]),
        .I3(douta_array[42]),
        .I4(sel_pipe[0]),
        .I5(douta_array[34]),
        .O(\douta[2]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[3]_INST_0 
       (.I0(\douta[3]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[4]),
        .I2(\douta[3]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[3]),
        .I4(\douta[3]_INST_0_i_3_n_0 ),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[3]_INST_0_i_1 
       (.I0(douta_array[131]),
        .I1(sel_pipe[0]),
        .I2(douta_array[139]),
        .I3(sel_pipe[1]),
        .I4(douta_array[147]),
        .I5(sel_pipe[2]),
        .O(\douta[3]_INST_0_i_1_n_0 ));
  MUXF7 \douta[3]_INST_0_i_2 
       (.I0(\douta[3]_INST_0_i_4_n_0 ),
        .I1(\douta[3]_INST_0_i_5_n_0 ),
        .O(\douta[3]_INST_0_i_2_n_0 ),
        .S(sel_pipe[2]));
  MUXF7 \douta[3]_INST_0_i_3 
       (.I0(\douta[3]_INST_0_i_6_n_0 ),
        .I1(\douta[3]_INST_0_i_7_n_0 ),
        .O(\douta[3]_INST_0_i_3_n_0 ),
        .S(sel_pipe[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_4 
       (.I0(douta_array[91]),
        .I1(douta_array[83]),
        .I2(sel_pipe[1]),
        .I3(douta_array[75]),
        .I4(sel_pipe[0]),
        .I5(douta_array[67]),
        .O(\douta[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_5 
       (.I0(douta_array[123]),
        .I1(douta_array[115]),
        .I2(sel_pipe[1]),
        .I3(douta_array[107]),
        .I4(sel_pipe[0]),
        .I5(douta_array[99]),
        .O(\douta[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_6 
       (.I0(douta_array[27]),
        .I1(douta_array[19]),
        .I2(sel_pipe[1]),
        .I3(douta_array[11]),
        .I4(sel_pipe[0]),
        .I5(douta_array[3]),
        .O(\douta[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_7 
       (.I0(douta_array[59]),
        .I1(douta_array[51]),
        .I2(sel_pipe[1]),
        .I3(douta_array[43]),
        .I4(sel_pipe[0]),
        .I5(douta_array[35]),
        .O(\douta[3]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[4]_INST_0 
       (.I0(\douta[4]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[4]),
        .I2(\douta[4]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[3]),
        .I4(\douta[4]_INST_0_i_3_n_0 ),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[4]_INST_0_i_1 
       (.I0(douta_array[132]),
        .I1(sel_pipe[0]),
        .I2(douta_array[140]),
        .I3(sel_pipe[1]),
        .I4(douta_array[148]),
        .I5(sel_pipe[2]),
        .O(\douta[4]_INST_0_i_1_n_0 ));
  MUXF7 \douta[4]_INST_0_i_2 
       (.I0(\douta[4]_INST_0_i_4_n_0 ),
        .I1(\douta[4]_INST_0_i_5_n_0 ),
        .O(\douta[4]_INST_0_i_2_n_0 ),
        .S(sel_pipe[2]));
  MUXF7 \douta[4]_INST_0_i_3 
       (.I0(\douta[4]_INST_0_i_6_n_0 ),
        .I1(\douta[4]_INST_0_i_7_n_0 ),
        .O(\douta[4]_INST_0_i_3_n_0 ),
        .S(sel_pipe[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_4 
       (.I0(douta_array[92]),
        .I1(douta_array[84]),
        .I2(sel_pipe[1]),
        .I3(douta_array[76]),
        .I4(sel_pipe[0]),
        .I5(douta_array[68]),
        .O(\douta[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_5 
       (.I0(douta_array[124]),
        .I1(douta_array[116]),
        .I2(sel_pipe[1]),
        .I3(douta_array[108]),
        .I4(sel_pipe[0]),
        .I5(douta_array[100]),
        .O(\douta[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_6 
       (.I0(douta_array[28]),
        .I1(douta_array[20]),
        .I2(sel_pipe[1]),
        .I3(douta_array[12]),
        .I4(sel_pipe[0]),
        .I5(douta_array[4]),
        .O(\douta[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_7 
       (.I0(douta_array[60]),
        .I1(douta_array[52]),
        .I2(sel_pipe[1]),
        .I3(douta_array[44]),
        .I4(sel_pipe[0]),
        .I5(douta_array[36]),
        .O(\douta[4]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[5]_INST_0 
       (.I0(\douta[5]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[4]),
        .I2(\douta[5]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[3]),
        .I4(\douta[5]_INST_0_i_3_n_0 ),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[5]_INST_0_i_1 
       (.I0(douta_array[133]),
        .I1(sel_pipe[0]),
        .I2(douta_array[141]),
        .I3(sel_pipe[1]),
        .I4(douta_array[149]),
        .I5(sel_pipe[2]),
        .O(\douta[5]_INST_0_i_1_n_0 ));
  MUXF7 \douta[5]_INST_0_i_2 
       (.I0(\douta[5]_INST_0_i_4_n_0 ),
        .I1(\douta[5]_INST_0_i_5_n_0 ),
        .O(\douta[5]_INST_0_i_2_n_0 ),
        .S(sel_pipe[2]));
  MUXF7 \douta[5]_INST_0_i_3 
       (.I0(\douta[5]_INST_0_i_6_n_0 ),
        .I1(\douta[5]_INST_0_i_7_n_0 ),
        .O(\douta[5]_INST_0_i_3_n_0 ),
        .S(sel_pipe[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_4 
       (.I0(douta_array[93]),
        .I1(douta_array[85]),
        .I2(sel_pipe[1]),
        .I3(douta_array[77]),
        .I4(sel_pipe[0]),
        .I5(douta_array[69]),
        .O(\douta[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_5 
       (.I0(douta_array[125]),
        .I1(douta_array[117]),
        .I2(sel_pipe[1]),
        .I3(douta_array[109]),
        .I4(sel_pipe[0]),
        .I5(douta_array[101]),
        .O(\douta[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_6 
       (.I0(douta_array[29]),
        .I1(douta_array[21]),
        .I2(sel_pipe[1]),
        .I3(douta_array[13]),
        .I4(sel_pipe[0]),
        .I5(douta_array[5]),
        .O(\douta[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_7 
       (.I0(douta_array[61]),
        .I1(douta_array[53]),
        .I2(sel_pipe[1]),
        .I3(douta_array[45]),
        .I4(sel_pipe[0]),
        .I5(douta_array[37]),
        .O(\douta[5]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[6]_INST_0 
       (.I0(\douta[6]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[4]),
        .I2(\douta[6]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[3]),
        .I4(\douta[6]_INST_0_i_3_n_0 ),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[6]_INST_0_i_1 
       (.I0(douta_array[134]),
        .I1(sel_pipe[0]),
        .I2(douta_array[142]),
        .I3(sel_pipe[1]),
        .I4(douta_array[150]),
        .I5(sel_pipe[2]),
        .O(\douta[6]_INST_0_i_1_n_0 ));
  MUXF7 \douta[6]_INST_0_i_2 
       (.I0(\douta[6]_INST_0_i_4_n_0 ),
        .I1(\douta[6]_INST_0_i_5_n_0 ),
        .O(\douta[6]_INST_0_i_2_n_0 ),
        .S(sel_pipe[2]));
  MUXF7 \douta[6]_INST_0_i_3 
       (.I0(\douta[6]_INST_0_i_6_n_0 ),
        .I1(\douta[6]_INST_0_i_7_n_0 ),
        .O(\douta[6]_INST_0_i_3_n_0 ),
        .S(sel_pipe[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_4 
       (.I0(douta_array[94]),
        .I1(douta_array[86]),
        .I2(sel_pipe[1]),
        .I3(douta_array[78]),
        .I4(sel_pipe[0]),
        .I5(douta_array[70]),
        .O(\douta[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_5 
       (.I0(douta_array[126]),
        .I1(douta_array[118]),
        .I2(sel_pipe[1]),
        .I3(douta_array[110]),
        .I4(sel_pipe[0]),
        .I5(douta_array[102]),
        .O(\douta[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_6 
       (.I0(douta_array[30]),
        .I1(douta_array[22]),
        .I2(sel_pipe[1]),
        .I3(douta_array[14]),
        .I4(sel_pipe[0]),
        .I5(douta_array[6]),
        .O(\douta[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_7 
       (.I0(douta_array[62]),
        .I1(douta_array[54]),
        .I2(sel_pipe[1]),
        .I3(douta_array[46]),
        .I4(sel_pipe[0]),
        .I5(douta_array[38]),
        .O(\douta[6]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(sel_pipe[4]),
        .I2(\douta[7]_INST_0_i_2_n_0 ),
        .I3(sel_pipe[3]),
        .I4(\douta[7]_INST_0_i_3_n_0 ),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \douta[7]_INST_0_i_1 
       (.I0(douta_array[135]),
        .I1(sel_pipe[0]),
        .I2(douta_array[143]),
        .I3(sel_pipe[1]),
        .I4(douta_array[151]),
        .I5(sel_pipe[2]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  MUXF7 \douta[7]_INST_0_i_2 
       (.I0(\douta[7]_INST_0_i_4_n_0 ),
        .I1(\douta[7]_INST_0_i_5_n_0 ),
        .O(\douta[7]_INST_0_i_2_n_0 ),
        .S(sel_pipe[2]));
  MUXF7 \douta[7]_INST_0_i_3 
       (.I0(\douta[7]_INST_0_i_6_n_0 ),
        .I1(\douta[7]_INST_0_i_7_n_0 ),
        .O(\douta[7]_INST_0_i_3_n_0 ),
        .S(sel_pipe[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_4 
       (.I0(douta_array[95]),
        .I1(douta_array[87]),
        .I2(sel_pipe[1]),
        .I3(douta_array[79]),
        .I4(sel_pipe[0]),
        .I5(douta_array[71]),
        .O(\douta[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_5 
       (.I0(douta_array[127]),
        .I1(douta_array[119]),
        .I2(sel_pipe[1]),
        .I3(douta_array[111]),
        .I4(sel_pipe[0]),
        .I5(douta_array[103]),
        .O(\douta[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_6 
       (.I0(douta_array[31]),
        .I1(douta_array[23]),
        .I2(sel_pipe[1]),
        .I3(douta_array[15]),
        .I4(sel_pipe[0]),
        .I5(douta_array[7]),
        .O(\douta[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_7 
       (.I0(douta_array[63]),
        .I1(douta_array[55]),
        .I2(sel_pipe[1]),
        .I3(douta_array[47]),
        .I4(sel_pipe[0]),
        .I5(douta_array[39]),
        .O(\douta[7]_INST_0_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(ena),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(ena),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(ena),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(ena),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[4] 
       (.C(clka),
        .CE(ena),
        .D(addra[4]),
        .Q(sel_pipe[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_mux__parameterized0
   (clkb,
    enb,
    addrb,
    doutb,
    doutb_array);
  input clkb;
  input enb;
  input [4:0]addrb;
  output [7:0]doutb;
  input [151:0]doutb_array;

  wire [4:0]addrb;
  wire clkb;
  wire [7:0]doutb;
  wire \doutb[0]_INST_0_i_1_n_0 ;
  wire \doutb[0]_INST_0_i_2_n_0 ;
  wire \doutb[0]_INST_0_i_3_n_0 ;
  wire \doutb[0]_INST_0_i_4_n_0 ;
  wire \doutb[0]_INST_0_i_5_n_0 ;
  wire \doutb[0]_INST_0_i_6_n_0 ;
  wire \doutb[0]_INST_0_i_7_n_0 ;
  wire \doutb[1]_INST_0_i_1_n_0 ;
  wire \doutb[1]_INST_0_i_2_n_0 ;
  wire \doutb[1]_INST_0_i_3_n_0 ;
  wire \doutb[1]_INST_0_i_4_n_0 ;
  wire \doutb[1]_INST_0_i_5_n_0 ;
  wire \doutb[1]_INST_0_i_6_n_0 ;
  wire \doutb[1]_INST_0_i_7_n_0 ;
  wire \doutb[2]_INST_0_i_1_n_0 ;
  wire \doutb[2]_INST_0_i_2_n_0 ;
  wire \doutb[2]_INST_0_i_3_n_0 ;
  wire \doutb[2]_INST_0_i_4_n_0 ;
  wire \doutb[2]_INST_0_i_5_n_0 ;
  wire \doutb[2]_INST_0_i_6_n_0 ;
  wire \doutb[2]_INST_0_i_7_n_0 ;
  wire \doutb[3]_INST_0_i_1_n_0 ;
  wire \doutb[3]_INST_0_i_2_n_0 ;
  wire \doutb[3]_INST_0_i_3_n_0 ;
  wire \doutb[3]_INST_0_i_4_n_0 ;
  wire \doutb[3]_INST_0_i_5_n_0 ;
  wire \doutb[3]_INST_0_i_6_n_0 ;
  wire \doutb[3]_INST_0_i_7_n_0 ;
  wire \doutb[4]_INST_0_i_1_n_0 ;
  wire \doutb[4]_INST_0_i_2_n_0 ;
  wire \doutb[4]_INST_0_i_3_n_0 ;
  wire \doutb[4]_INST_0_i_4_n_0 ;
  wire \doutb[4]_INST_0_i_5_n_0 ;
  wire \doutb[4]_INST_0_i_6_n_0 ;
  wire \doutb[4]_INST_0_i_7_n_0 ;
  wire \doutb[5]_INST_0_i_1_n_0 ;
  wire \doutb[5]_INST_0_i_2_n_0 ;
  wire \doutb[5]_INST_0_i_3_n_0 ;
  wire \doutb[5]_INST_0_i_4_n_0 ;
  wire \doutb[5]_INST_0_i_5_n_0 ;
  wire \doutb[5]_INST_0_i_6_n_0 ;
  wire \doutb[5]_INST_0_i_7_n_0 ;
  wire \doutb[6]_INST_0_i_1_n_0 ;
  wire \doutb[6]_INST_0_i_2_n_0 ;
  wire \doutb[6]_INST_0_i_3_n_0 ;
  wire \doutb[6]_INST_0_i_4_n_0 ;
  wire \doutb[6]_INST_0_i_5_n_0 ;
  wire \doutb[6]_INST_0_i_6_n_0 ;
  wire \doutb[6]_INST_0_i_7_n_0 ;
  wire \doutb[7]_INST_0_i_1_n_0 ;
  wire \doutb[7]_INST_0_i_2_n_0 ;
  wire \doutb[7]_INST_0_i_3_n_0 ;
  wire \doutb[7]_INST_0_i_4_n_0 ;
  wire \doutb[7]_INST_0_i_5_n_0 ;
  wire \doutb[7]_INST_0_i_6_n_0 ;
  wire \doutb[7]_INST_0_i_7_n_0 ;
  wire [151:0]doutb_array;
  wire enb;
  wire [4:0]\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ ;

  LUT5 #(
    .INIT(32'h30BB3088)) 
    \doutb[0]_INST_0 
       (.I0(\doutb[0]_INST_0_i_1_n_0 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [4]),
        .I2(\doutb[0]_INST_0_i_2_n_0 ),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [3]),
        .I4(\doutb[0]_INST_0_i_3_n_0 ),
        .O(doutb[0]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \doutb[0]_INST_0_i_1 
       (.I0(doutb_array[128]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I2(doutb_array[136]),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I4(doutb_array[144]),
        .I5(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]),
        .O(\doutb[0]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[0]_INST_0_i_2 
       (.I0(\doutb[0]_INST_0_i_4_n_0 ),
        .I1(\doutb[0]_INST_0_i_5_n_0 ),
        .O(\doutb[0]_INST_0_i_2_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  MUXF7 \doutb[0]_INST_0_i_3 
       (.I0(\doutb[0]_INST_0_i_6_n_0 ),
        .I1(\doutb[0]_INST_0_i_7_n_0 ),
        .O(\doutb[0]_INST_0_i_3_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[0]_INST_0_i_4 
       (.I0(doutb_array[88]),
        .I1(doutb_array[80]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[72]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[64]),
        .O(\doutb[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[0]_INST_0_i_5 
       (.I0(doutb_array[120]),
        .I1(doutb_array[112]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[104]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[96]),
        .O(\doutb[0]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[0]_INST_0_i_6 
       (.I0(doutb_array[24]),
        .I1(doutb_array[16]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[8]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[0]),
        .O(\doutb[0]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[0]_INST_0_i_7 
       (.I0(doutb_array[56]),
        .I1(doutb_array[48]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[40]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[32]),
        .O(\doutb[0]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \doutb[1]_INST_0 
       (.I0(\doutb[1]_INST_0_i_1_n_0 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [4]),
        .I2(\doutb[1]_INST_0_i_2_n_0 ),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [3]),
        .I4(\doutb[1]_INST_0_i_3_n_0 ),
        .O(doutb[1]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \doutb[1]_INST_0_i_1 
       (.I0(doutb_array[129]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I2(doutb_array[137]),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I4(doutb_array[145]),
        .I5(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]),
        .O(\doutb[1]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[1]_INST_0_i_2 
       (.I0(\doutb[1]_INST_0_i_4_n_0 ),
        .I1(\doutb[1]_INST_0_i_5_n_0 ),
        .O(\doutb[1]_INST_0_i_2_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  MUXF7 \doutb[1]_INST_0_i_3 
       (.I0(\doutb[1]_INST_0_i_6_n_0 ),
        .I1(\doutb[1]_INST_0_i_7_n_0 ),
        .O(\doutb[1]_INST_0_i_3_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[1]_INST_0_i_4 
       (.I0(doutb_array[89]),
        .I1(doutb_array[81]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[73]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[65]),
        .O(\doutb[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[1]_INST_0_i_5 
       (.I0(doutb_array[121]),
        .I1(doutb_array[113]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[105]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[97]),
        .O(\doutb[1]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[1]_INST_0_i_6 
       (.I0(doutb_array[25]),
        .I1(doutb_array[17]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[9]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[1]),
        .O(\doutb[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[1]_INST_0_i_7 
       (.I0(doutb_array[57]),
        .I1(doutb_array[49]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[41]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[33]),
        .O(\doutb[1]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \doutb[2]_INST_0 
       (.I0(\doutb[2]_INST_0_i_1_n_0 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [4]),
        .I2(\doutb[2]_INST_0_i_2_n_0 ),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [3]),
        .I4(\doutb[2]_INST_0_i_3_n_0 ),
        .O(doutb[2]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \doutb[2]_INST_0_i_1 
       (.I0(doutb_array[130]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I2(doutb_array[138]),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I4(doutb_array[146]),
        .I5(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]),
        .O(\doutb[2]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[2]_INST_0_i_2 
       (.I0(\doutb[2]_INST_0_i_4_n_0 ),
        .I1(\doutb[2]_INST_0_i_5_n_0 ),
        .O(\doutb[2]_INST_0_i_2_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  MUXF7 \doutb[2]_INST_0_i_3 
       (.I0(\doutb[2]_INST_0_i_6_n_0 ),
        .I1(\doutb[2]_INST_0_i_7_n_0 ),
        .O(\doutb[2]_INST_0_i_3_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[2]_INST_0_i_4 
       (.I0(doutb_array[90]),
        .I1(doutb_array[82]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[74]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[66]),
        .O(\doutb[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[2]_INST_0_i_5 
       (.I0(doutb_array[122]),
        .I1(doutb_array[114]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[106]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[98]),
        .O(\doutb[2]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[2]_INST_0_i_6 
       (.I0(doutb_array[26]),
        .I1(doutb_array[18]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[10]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[2]),
        .O(\doutb[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[2]_INST_0_i_7 
       (.I0(doutb_array[58]),
        .I1(doutb_array[50]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[42]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[34]),
        .O(\doutb[2]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \doutb[3]_INST_0 
       (.I0(\doutb[3]_INST_0_i_1_n_0 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [4]),
        .I2(\doutb[3]_INST_0_i_2_n_0 ),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [3]),
        .I4(\doutb[3]_INST_0_i_3_n_0 ),
        .O(doutb[3]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \doutb[3]_INST_0_i_1 
       (.I0(doutb_array[131]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I2(doutb_array[139]),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I4(doutb_array[147]),
        .I5(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]),
        .O(\doutb[3]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[3]_INST_0_i_2 
       (.I0(\doutb[3]_INST_0_i_4_n_0 ),
        .I1(\doutb[3]_INST_0_i_5_n_0 ),
        .O(\doutb[3]_INST_0_i_2_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  MUXF7 \doutb[3]_INST_0_i_3 
       (.I0(\doutb[3]_INST_0_i_6_n_0 ),
        .I1(\doutb[3]_INST_0_i_7_n_0 ),
        .O(\doutb[3]_INST_0_i_3_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[3]_INST_0_i_4 
       (.I0(doutb_array[91]),
        .I1(doutb_array[83]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[75]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[67]),
        .O(\doutb[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[3]_INST_0_i_5 
       (.I0(doutb_array[123]),
        .I1(doutb_array[115]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[107]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[99]),
        .O(\doutb[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[3]_INST_0_i_6 
       (.I0(doutb_array[27]),
        .I1(doutb_array[19]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[11]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[3]),
        .O(\doutb[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[3]_INST_0_i_7 
       (.I0(doutb_array[59]),
        .I1(doutb_array[51]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[43]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[35]),
        .O(\doutb[3]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \doutb[4]_INST_0 
       (.I0(\doutb[4]_INST_0_i_1_n_0 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [4]),
        .I2(\doutb[4]_INST_0_i_2_n_0 ),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [3]),
        .I4(\doutb[4]_INST_0_i_3_n_0 ),
        .O(doutb[4]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \doutb[4]_INST_0_i_1 
       (.I0(doutb_array[132]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I2(doutb_array[140]),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I4(doutb_array[148]),
        .I5(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]),
        .O(\doutb[4]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[4]_INST_0_i_2 
       (.I0(\doutb[4]_INST_0_i_4_n_0 ),
        .I1(\doutb[4]_INST_0_i_5_n_0 ),
        .O(\doutb[4]_INST_0_i_2_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  MUXF7 \doutb[4]_INST_0_i_3 
       (.I0(\doutb[4]_INST_0_i_6_n_0 ),
        .I1(\doutb[4]_INST_0_i_7_n_0 ),
        .O(\doutb[4]_INST_0_i_3_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[4]_INST_0_i_4 
       (.I0(doutb_array[92]),
        .I1(doutb_array[84]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[76]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[68]),
        .O(\doutb[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[4]_INST_0_i_5 
       (.I0(doutb_array[124]),
        .I1(doutb_array[116]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[108]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[100]),
        .O(\doutb[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[4]_INST_0_i_6 
       (.I0(doutb_array[28]),
        .I1(doutb_array[20]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[12]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[4]),
        .O(\doutb[4]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[4]_INST_0_i_7 
       (.I0(doutb_array[60]),
        .I1(doutb_array[52]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[44]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[36]),
        .O(\doutb[4]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \doutb[5]_INST_0 
       (.I0(\doutb[5]_INST_0_i_1_n_0 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [4]),
        .I2(\doutb[5]_INST_0_i_2_n_0 ),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [3]),
        .I4(\doutb[5]_INST_0_i_3_n_0 ),
        .O(doutb[5]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \doutb[5]_INST_0_i_1 
       (.I0(doutb_array[133]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I2(doutb_array[141]),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I4(doutb_array[149]),
        .I5(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]),
        .O(\doutb[5]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[5]_INST_0_i_2 
       (.I0(\doutb[5]_INST_0_i_4_n_0 ),
        .I1(\doutb[5]_INST_0_i_5_n_0 ),
        .O(\doutb[5]_INST_0_i_2_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  MUXF7 \doutb[5]_INST_0_i_3 
       (.I0(\doutb[5]_INST_0_i_6_n_0 ),
        .I1(\doutb[5]_INST_0_i_7_n_0 ),
        .O(\doutb[5]_INST_0_i_3_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[5]_INST_0_i_4 
       (.I0(doutb_array[93]),
        .I1(doutb_array[85]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[77]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[69]),
        .O(\doutb[5]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[5]_INST_0_i_5 
       (.I0(doutb_array[125]),
        .I1(doutb_array[117]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[109]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[101]),
        .O(\doutb[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[5]_INST_0_i_6 
       (.I0(doutb_array[29]),
        .I1(doutb_array[21]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[13]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[5]),
        .O(\doutb[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[5]_INST_0_i_7 
       (.I0(doutb_array[61]),
        .I1(doutb_array[53]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[45]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[37]),
        .O(\doutb[5]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \doutb[6]_INST_0 
       (.I0(\doutb[6]_INST_0_i_1_n_0 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [4]),
        .I2(\doutb[6]_INST_0_i_2_n_0 ),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [3]),
        .I4(\doutb[6]_INST_0_i_3_n_0 ),
        .O(doutb[6]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \doutb[6]_INST_0_i_1 
       (.I0(doutb_array[134]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I2(doutb_array[142]),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I4(doutb_array[150]),
        .I5(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]),
        .O(\doutb[6]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[6]_INST_0_i_2 
       (.I0(\doutb[6]_INST_0_i_4_n_0 ),
        .I1(\doutb[6]_INST_0_i_5_n_0 ),
        .O(\doutb[6]_INST_0_i_2_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  MUXF7 \doutb[6]_INST_0_i_3 
       (.I0(\doutb[6]_INST_0_i_6_n_0 ),
        .I1(\doutb[6]_INST_0_i_7_n_0 ),
        .O(\doutb[6]_INST_0_i_3_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_4 
       (.I0(doutb_array[94]),
        .I1(doutb_array[86]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[78]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[70]),
        .O(\doutb[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_5 
       (.I0(doutb_array[126]),
        .I1(doutb_array[118]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[110]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[102]),
        .O(\doutb[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_6 
       (.I0(doutb_array[30]),
        .I1(doutb_array[22]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[14]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[6]),
        .O(\doutb[6]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[6]_INST_0_i_7 
       (.I0(doutb_array[62]),
        .I1(doutb_array[54]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[46]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[38]),
        .O(\doutb[6]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \doutb[7]_INST_0 
       (.I0(\doutb[7]_INST_0_i_1_n_0 ),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [4]),
        .I2(\doutb[7]_INST_0_i_2_n_0 ),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [3]),
        .I4(\doutb[7]_INST_0_i_3_n_0 ),
        .O(doutb[7]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \doutb[7]_INST_0_i_1 
       (.I0(doutb_array[135]),
        .I1(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I2(doutb_array[143]),
        .I3(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I4(doutb_array[151]),
        .I5(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]),
        .O(\doutb[7]_INST_0_i_1_n_0 ));
  MUXF7 \doutb[7]_INST_0_i_2 
       (.I0(\doutb[7]_INST_0_i_4_n_0 ),
        .I1(\doutb[7]_INST_0_i_5_n_0 ),
        .O(\doutb[7]_INST_0_i_2_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  MUXF7 \doutb[7]_INST_0_i_3 
       (.I0(\doutb[7]_INST_0_i_6_n_0 ),
        .I1(\doutb[7]_INST_0_i_7_n_0 ),
        .O(\doutb[7]_INST_0_i_3_n_0 ),
        .S(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_4 
       (.I0(doutb_array[95]),
        .I1(doutb_array[87]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[79]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[71]),
        .O(\doutb[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_5 
       (.I0(doutb_array[127]),
        .I1(doutb_array[119]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[111]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[103]),
        .O(\doutb[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_6 
       (.I0(doutb_array[31]),
        .I1(doutb_array[23]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[15]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[7]),
        .O(\doutb[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \doutb[7]_INST_0_i_7 
       (.I0(doutb_array[63]),
        .I1(doutb_array[55]),
        .I2(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .I3(doutb_array[47]),
        .I4(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .I5(doutb_array[39]),
        .O(\doutb[7]_INST_0_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clkb),
        .CE(enb),
        .D(addrb[0]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clkb),
        .CE(enb),
        .D(addrb[1]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clkb),
        .CE(enb),
        .D(addrb[2]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clkb),
        .CE(enb),
        .D(addrb[3]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[4] 
       (.C(clkb),
        .CE(enb),
        .D(addrb[4]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_ [4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized0
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized0 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized1
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized1 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized10
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized10 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized11
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized11 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized12
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized12 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized13
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized13 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized14
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized14 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized15
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized15 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized16
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized16 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized17
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized17 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized2
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized2 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized3
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized3 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized4
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized4 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized5
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized5 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized6
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized6 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized7
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized7 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized8
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized8 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized9
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized9 \prim_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta_array(douta_array),
        .doutb_array(doutb_array),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized0
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized1
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized10
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized11
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized12
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized13
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized14
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized15
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized16
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized17
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized2
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized3
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized4
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized5
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized6
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized7
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized8
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized9
   (clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    douta_array,
    doutb_array,
    ena_array,
    enb_array,
    wea,
    web);
  input clka;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta_array;
  output [7:0]doutb_array;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta_array;
  wire [7:0]doutb_array;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,addrb,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta_array}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb_array}),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88 }),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_top
   (clka,
    clkb,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    douta,
    doutb,
    wea,
    web);
  input clka;
  input clkb;
  input ena;
  input enb;
  input [16:0]addra;
  input [16:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta;
  output [7:0]doutb;
  input [0:0]wea;
  input [0:0]web;

  wire [16:0]addra;
  wire [16:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea),
        .web(web));
endmodule

(* C_ADDRA_WIDTH = "17" *) (* C_ADDRB_WIDTH = "17" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "19" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.0714 mW" *) 
(* C_FAMILY = "zynq" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "1" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "mem2p_76800_8.mem" *) 
(* C_INIT_FILE_NAME = "no_coe_file_loaded" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "0" *) 
(* C_MEM_TYPE = "2" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "76800" *) (* C_READ_DEPTH_B = "76800" *) (* C_READ_WIDTH_A = "8" *) 
(* C_READ_WIDTH_B = "8" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) 
(* C_WRITE_DEPTH_A = "76800" *) (* C_WRITE_DEPTH_B = "76800" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "8" *) (* C_WRITE_WIDTH_B = "8" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "blk_mem_gen_v8_3_6" *) (* downgradeipidentifiedwarnings = "yes" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6
   (clka,
    clkb,
    dbiterr,
    deepsleep,
    eccpipece,
    ena,
    enb,
    injectdbiterr,
    injectsbiterr,
    regcea,
    regceb,
    rsta,
    rsta_busy,
    rstb,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_bvalid,
    s_axi_dbiterr,
    s_axi_injectdbiterr,
    s_axi_injectsbiterr,
    s_axi_rlast,
    s_axi_rready,
    s_axi_rvalid,
    s_axi_sbiterr,
    s_axi_wlast,
    s_axi_wready,
    s_axi_wvalid,
    sbiterr,
    shutdown,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    douta,
    doutb,
    rdaddrecc,
    s_axi_araddr,
    s_axi_arburst,
    s_axi_arid,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_awaddr,
    s_axi_awburst,
    s_axi_awid,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_bid,
    s_axi_bresp,
    s_axi_rdaddrecc,
    s_axi_rdata,
    s_axi_rid,
    s_axi_rresp,
    s_axi_wdata,
    s_axi_wstrb,
    wea,
    web);
  input clka;
  input clkb;
  output dbiterr;
  input deepsleep;
  input eccpipece;
  input ena;
  input enb;
  input injectdbiterr;
  input injectsbiterr;
  input regcea;
  input regceb;
  input rsta;
  output rsta_busy;
  input rstb;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  output s_axi_arready;
  input s_axi_arvalid;
  output s_axi_awready;
  input s_axi_awvalid;
  input s_axi_bready;
  output s_axi_bvalid;
  output s_axi_dbiterr;
  input s_axi_injectdbiterr;
  input s_axi_injectsbiterr;
  output s_axi_rlast;
  input s_axi_rready;
  output s_axi_rvalid;
  output s_axi_sbiterr;
  input s_axi_wlast;
  output s_axi_wready;
  input s_axi_wvalid;
  output sbiterr;
  input shutdown;
  input sleep;
  input [16:0]addra;
  input [16:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta;
  output [7:0]doutb;
  output [16:0]rdaddrecc;
  input [31:0]s_axi_araddr;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_arid;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [31:0]s_axi_awaddr;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_awid;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [16:0]s_axi_rdaddrecc;
  output [7:0]s_axi_rdata;
  output [3:0]s_axi_rid;
  output [1:0]s_axi_rresp;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire [16:0]addra;
  wire [16:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;

  assign dbiterr = \<const0> ;
  assign rdaddrecc[16] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[16] = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_3_6_synth" *) 
module system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6_synth
   (clka,
    clkb,
    ena,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    douta,
    doutb,
    wea,
    web);
  input clka;
  input clkb;
  input ena;
  input enb;
  input [16:0]addra;
  input [16:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  output [7:0]douta;
  output [7:0]doutb;
  input [0:0]wea;
  input [0:0]web;

  wire [16:0]addra;
  wire [16:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;

  system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .wea(wea),
        .web(web));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
