-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Mon Sep 29 09:52:38 2025
-- Host        : ocaepc42 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /tima/smancini/Zynq/Z7/Z7_Demo_Cam/Z7_HDMI_proc_20/Z7_HDMI_proc.srcs/sources_1/bd/system/ip/system_HDMI_proc_0_2/system_HDMI_proc_0_2_sim_netlist.vhdl
-- Design      : system_HDMI_proc_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2_DispProcTest_core_0 is
  port (
    p_nbus_img_out_rsc_wadr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    p_nbus_img_out_rsc_d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    p_img_out_rsc_we : out STD_LOGIC;
    p_img_out_triosy_lz : out STD_LOGIC;
    p_rst : in STD_LOGIC;
    p_clk : in STD_LOGIC;
    px246 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMI_proc_0_2_DispProcTest_core_0 : entity is "DispProcTest_core_0";
end system_HDMI_proc_0_2_DispProcTest_core_0;

architecture STRUCTURE of system_HDMI_proc_0_2_DispProcTest_core_0 is
  signal DispProcTest_core_core_fsm_inst_ly_C_1_tr0 : STD_LOGIC;
  signal clk : STD_LOGIC;
  signal fsm_output : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal img_out_rsc_d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal img_out_rsc_wadr : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal img_out_rsc_we : STD_LOGIC;
  signal img_out_triosy_lz : STD_LOGIC;
  signal lx_x_8_0_sva : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal ly_acc_2_psp_sva_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal nx1576z1 : STD_LOGIC;
  signal nx2573z1 : STD_LOGIC;
  signal nx28245z1 : STD_LOGIC;
  signal nx29242z1 : STD_LOGIC;
  signal nx29242z2 : STD_LOGIC;
  signal nx30239z1 : STD_LOGIC;
  signal nx30239z2 : STD_LOGIC;
  signal nx31236z1 : STD_LOGIC;
  signal nx31236z2 : STD_LOGIC;
  signal nx32233z1 : STD_LOGIC;
  signal nx32233z2 : STD_LOGIC;
  signal nx33230z1 : STD_LOGIC;
  signal nx33230z2 : STD_LOGIC;
  signal nx33230z3 : STD_LOGIC;
  signal nx34227z1 : STD_LOGIC;
  signal nx34227z2 : STD_LOGIC;
  signal nx34227z3 : STD_LOGIC;
  signal nx35224z1 : STD_LOGIC;
  signal nx35224z2 : STD_LOGIC;
  signal nx35224z3 : STD_LOGIC;
  signal nx35224z4 : STD_LOGIC;
  signal nx35224z5 : STD_LOGIC;
  signal nx3570z1 : STD_LOGIC;
  signal nx3954z1 : STD_LOGIC;
  signal nx3954z2 : STD_LOGIC;
  signal nx40632z1 : STD_LOGIC;
  signal nx41629z1 : STD_LOGIC;
  signal nx42626z1 : STD_LOGIC;
  signal nx44620z1 : STD_LOGIC;
  signal nx44620z2 : STD_LOGIC;
  signal nx4567z1 : STD_LOGIC;
  signal nx47744z1 : STD_LOGIC;
  signal nx47744z2 : STD_LOGIC;
  signal nx47745z1 : STD_LOGIC;
  signal nx47745z2 : STD_LOGIC;
  signal nx47746z1 : STD_LOGIC;
  signal nx47746z2 : STD_LOGIC;
  signal nx47747z1 : STD_LOGIC;
  signal nx47747z2 : STD_LOGIC;
  signal nx47748z1 : STD_LOGIC;
  signal nx47748z2 : STD_LOGIC;
  signal nx47749z1 : STD_LOGIC;
  signal nx47749z2 : STD_LOGIC;
  signal nx47750z1 : STD_LOGIC;
  signal nx47750z2 : STD_LOGIC;
  signal nx47751z1 : STD_LOGIC;
  signal nx47751z2 : STD_LOGIC;
  signal nx47752z1 : STD_LOGIC;
  signal nx5564z1 : STD_LOGIC;
  signal nx63748z1 : STD_LOGIC;
  signal nx63749z1 : STD_LOGIC;
  signal nx63750z1 : STD_LOGIC;
  signal nx63750z2 : STD_LOGIC;
  signal nx63750z3 : STD_LOGIC;
  signal nx63751z1 : STD_LOGIC;
  signal nx63751z2 : STD_LOGIC;
  signal nx63751z3 : STD_LOGIC;
  signal nx63752z1 : STD_LOGIC;
  signal nx63752z2 : STD_LOGIC;
  signal nx63752z3 : STD_LOGIC;
  signal nx63753z1 : STD_LOGIC;
  signal nx63753z2 : STD_LOGIC;
  signal nx63753z3 : STD_LOGIC;
  signal nx63754z1 : STD_LOGIC;
  signal nx63754z2 : STD_LOGIC;
  signal nx63754z3 : STD_LOGIC;
  signal nx63754z4 : STD_LOGIC;
  signal nx63755z1 : STD_LOGIC;
  signal nx63755z2 : STD_LOGIC;
  signal nx6561z1 : STD_LOGIC;
  signal nx6561z2 : STD_LOGIC;
  signal nx7558z1 : STD_LOGIC;
  signal nx7558z2 : STD_LOGIC;
  signal nx8555z1 : STD_LOGIC;
  signal nx8555z2 : STD_LOGIC;
  signal nx9552z1 : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal \xlnx_opt__15\ : STD_LOGIC;
  signal NLW_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of CARRY4 : label is "MLO";
  attribute OPT_MODIFIED of img_out_rsci_wadr_d_add8_6_muxcy_0_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of img_out_rsci_wadr_d_add8_6_muxcy_0_CARRY4 : label is "(MUXCY,XORCY)";
  attribute OPT_MODIFIED of img_out_rsci_wadr_d_add8_6_muxcy_4_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM of img_out_rsci_wadr_d_add8_6_muxcy_4_CARRY4 : label is "(MUXCY,XORCY)";
  attribute HLUTNM : string;
  attribute HLUTNM of ix1576z1318 : label is "LUT62_1_8";
  attribute HLUTNM of ix24302z1320 : label is "LUT62_1_7";
  attribute HLUTNM of ix25299z39804 : label is "LUT62_1_5";
  attribute HLUTNM of ix2573z1410 : label is "LUT62_1_6";
  attribute HLUTNM of ix28245z1315 : label is "LUT62_1_3";
  attribute HLUTNM of ix29242z53794 : label is "LUT62_1_3";
  attribute HLUTNM of ix31236z1316 : label is "LUT62_1_9";
  attribute HLUTNM of ix33230z1443 : label is "LUT62_1_5";
  attribute HLUTNM of ix34227z34083 : label is "LUT62_1_7";
  attribute XILINX_LEGACY_PRIM of ix35224z1315 : label is "INV";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of ix35224z1315 : label is "I:I0";
  attribute HLUTNM of ix3570z28450 : label is "LUT62_1_2";
  attribute HLUTNM of ix40632z1328 : label is "LUT62_1_9";
  attribute HLUTNM of ix41629z36258 : label is "LUT62_1_1";
  attribute HLUTNM of ix42626z1322 : label is "LUT62_1_10";
  attribute HLUTNM of ix44620z1364 : label is "LUT62_1_8";
  attribute HLUTNM of ix4567z1314 : label is "LUT62_1_2";
  attribute HLUTNM of ix6561z1443 : label is "LUT62_1_6";
  attribute HLUTNM of ix7558z1354 : label is "LUT62_1_4";
  attribute HLUTNM of ix8555z11691 : label is "LUT62_1_4";
  attribute HLUTNM of ix8555z1328 : label is "LUT62_1_10";
  attribute HLUTNM of ix9552z36266 : label is "LUT62_1_1";
  attribute OPT_MODIFIED of ly_acc_2_psp_sva_1_add9_5_muxcy_0_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM of ly_acc_2_psp_sva_1_add9_5_muxcy_0_CARRY4 : label is "(MUXCY,XORCY)";
  attribute OPT_MODIFIED of ly_acc_2_psp_sva_1_add9_5_muxcy_4_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM of ly_acc_2_psp_sva_1_add9_5_muxcy_4_CARRY4 : label is "(MUXCY,XORCY)";
  attribute OPT_MODIFIED of ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM of ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4 : label is "(MUXCY,XORCY)";
begin
  clk <= p_clk;
  nx47744z1 <= px246;
  p_img_out_rsc_we <= img_out_rsc_we;
  p_img_out_triosy_lz <= img_out_triosy_lz;
  p_nbus_img_out_rsc_d(7 downto 0) <= img_out_rsc_d(7 downto 0);
  p_nbus_img_out_rsc_wadr(16 downto 15) <= img_out_rsc_wadr(7 downto 6);
  p_nbus_img_out_rsc_wadr(14 downto 6) <= img_out_rsc_wadr(16 downto 8);
  p_nbus_img_out_rsc_wadr(5 downto 0) <= img_out_rsc_wadr(5 downto 0);
  rst <= p_rst;
CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => \xlnx_opt__15\,
      CO(3 downto 1) => NLW_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => img_out_rsc_wadr(16),
      CYINIT => '0',
      DI(3 downto 1) => NLW_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => NLW_CARRY4_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => NLW_CARRY4_S_UNCONNECTED(3 downto 1),
      S(0) => '1'
    );
\DispProcTest_core_core_fsm_inst_reg_state_var(0)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => nx44620z1,
      Q => img_out_rsc_we,
      R => rst
    );
\DispProcTest_core_core_fsm_inst_reg_state_var(1)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => img_out_rsc_we,
      Q => fsm_output(2),
      R => rst
    );
\DispProcTest_core_core_fsm_inst_reg_state_var(2)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => nx42626z1,
      Q => fsm_output(3),
      R => rst
    );
\DispProcTest_core_core_fsm_inst_reg_state_var(3)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => nx41629z1,
      Q => img_out_triosy_lz,
      R => rst
    );
\DispProcTest_core_core_fsm_inst_reg_state_var(4)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => nx40632z1,
      Q => fsm_output(0),
      R => '0'
    );
img_out_rsci_wadr_d_add8_6_muxcy_0_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => nx63751z1,
      CO(2) => nx63752z1,
      CO(1) => nx63753z1,
      CO(0) => nx63754z1,
      CYINIT => nx47744z1,
      DI(3) => nx63752z2,
      DI(2) => nx63753z2,
      DI(1) => nx63754z2,
      DI(0) => nx63755z1,
      O(3 downto 0) => img_out_rsc_wadr(11 downto 8),
      S(3) => nx63752z3,
      S(2) => nx63753z3,
      S(1) => nx63754z4,
      S(0) => nx63755z2
    );
img_out_rsci_wadr_d_add8_6_muxcy_4_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => nx63751z1,
      CO(3) => \xlnx_opt__15\,
      CO(2) => nx63748z1,
      CO(1) => nx63749z1,
      CO(0) => nx63750z1,
      CYINIT => '0',
      DI(3) => nx3954z2,
      DI(2) => nx35224z5,
      DI(1) => nx63750z2,
      DI(0) => nx63751z2,
      O(3 downto 0) => img_out_rsc_wadr(15 downto 12),
      S(3) => nx3954z2,
      S(2) => nx35224z5,
      S(1) => nx63750z3,
      S(0) => nx63751z3
    );
ix1576z1318: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => img_out_rsc_wadr(0),
      I1 => fsm_output(3),
      O => nx1576z1
    );
ix24302z1320: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lx_x_8_0_sva(6),
      I1 => nx29242z2,
      O => img_out_rsc_wadr(6)
    );
ix25299z39804: unisim.vcomponents.LUT4
    generic map(
      INIT => X"965A"
    )
        port map (
      I0 => lx_x_8_0_sva(7),
      I1 => lx_x_8_0_sva(6),
      I2 => nx30239z2,
      I3 => nx29242z2,
      O => img_out_rsc_wadr(7)
    );
ix2573z1410: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => img_out_rsc_wadr(1),
      I1 => img_out_rsc_wadr(0),
      I2 => fsm_output(3),
      O => nx2573z1
    );
ix28245z1315: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => fsm_output(3),
      I1 => fsm_output(0),
      I2 => nx29242z2,
      O => nx28245z1
    );
ix29242z53794: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC01CD00"
    )
        port map (
      I0 => fsm_output(3),
      I1 => fsm_output(2),
      I2 => fsm_output(0),
      I3 => nx30239z2,
      I4 => nx29242z2,
      O => nx29242z1
    );
ix30239z53794: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC01CD00CD00CD00"
    )
        port map (
      I0 => fsm_output(3),
      I1 => fsm_output(2),
      I2 => fsm_output(0),
      I3 => nx35224z3,
      I4 => nx30239z2,
      I5 => nx29242z2,
      O => nx30239z1
    );
ix31236z1316: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fsm_output(3),
      I1 => fsm_output(0),
      O => nx31236z2
    );
ix31236z36266: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9CCCCCCC88888888"
    )
        port map (
      I0 => fsm_output(2),
      I1 => nx32233z2,
      I2 => nx35224z3,
      I3 => nx30239z2,
      I4 => nx29242z2,
      I5 => nx31236z2,
      O => nx31236z1
    );
ix32233z1314: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => nx33230z2,
      I1 => nx32233z2,
      I2 => nx35224z3,
      I3 => nx30239z2,
      I4 => nx29242z2,
      I5 => nx31236z2,
      O => nx32233z1
    );
ix33230z1443: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => nx35224z3,
      I1 => nx30239z2,
      I2 => nx29242z2,
      O => nx33230z3
    );
ix33230z5426: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110101010101010"
    )
        port map (
      I0 => fsm_output(3),
      I1 => fsm_output(0),
      I2 => nx34227z2,
      I3 => nx33230z2,
      I4 => nx32233z2,
      I5 => nx33230z3,
      O => nx33230z1
    );
ix34227z34083: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => nx32233z2,
      I1 => nx35224z3,
      I2 => nx30239z2,
      I3 => nx29242z2,
      O => nx34227z3
    );
ix34227z5426: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110101010101010"
    )
        port map (
      I0 => fsm_output(3),
      I1 => fsm_output(0),
      I2 => nx35224z5,
      I3 => nx34227z2,
      I4 => nx33230z2,
      I5 => nx34227z3,
      O => nx34227z1
    );
ix35224z1315: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => fsm_output(2),
      O => nx35224z1
    );
ix35224z1319: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => nx3954z2,
      I1 => nx35224z3,
      I2 => nx30239z2,
      I3 => nx29242z2,
      I4 => nx35224z4,
      I5 => nx31236z2,
      O => nx35224z2
    );
ix35224z34085: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => nx35224z5,
      I1 => nx34227z2,
      I2 => nx33230z2,
      I3 => nx32233z2,
      O => nx35224z4
    );
ix3570z28450: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => img_out_rsc_wadr(2),
      I1 => img_out_rsc_wadr(1),
      I2 => img_out_rsc_wadr(0),
      I3 => fsm_output(3),
      O => nx3570z1
    );
ix3954z45004: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEAAAEAAAAAAA"
    )
        port map (
      I0 => rst,
      I1 => nx3954z2,
      I2 => nx35224z5,
      I3 => nx34227z2,
      I4 => nx33230z2,
      I5 => nx34227z3,
      O => nx3954z1
    );
ix40632z1328: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst,
      I1 => img_out_triosy_lz,
      O => nx40632z1
    );
ix41629z36258: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888880"
    )
        port map (
      I0 => fsm_output(3),
      I1 => lx_x_8_0_sva(8),
      I2 => lx_x_8_0_sva(7),
      I3 => lx_x_8_0_sva(6),
      I4 => nx7558z2,
      O => nx41629z1
    );
ix42626z1322: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => fsm_output(2),
      I1 => DispProcTest_core_core_fsm_inst_ly_C_1_tr0,
      O => nx42626z1
    );
ix44620z1313: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A222222AFFFFFFFF"
    )
        port map (
      I0 => fsm_output(3),
      I1 => lx_x_8_0_sva(8),
      I2 => lx_x_8_0_sva(7),
      I3 => lx_x_8_0_sva(6),
      I4 => nx7558z2,
      I5 => nx44620z2,
      O => nx44620z1
    );
ix44620z1364: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => fsm_output(2),
      I1 => fsm_output(0),
      I2 => DispProcTest_core_core_fsm_inst_ly_C_1_tr0,
      O => nx44620z2
    );
ix45142z1568: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ly_acc_2_psp_sva_1(9),
      I1 => ly_acc_2_psp_sva_1(8),
      I2 => ly_acc_2_psp_sva_1(0),
      O => img_out_rsc_d(0)
    );
ix4567z1314: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => img_out_rsc_wadr(3),
      I1 => img_out_rsc_wadr(2),
      I2 => img_out_rsc_wadr(1),
      I3 => img_out_rsc_wadr(0),
      I4 => fsm_output(3),
      O => nx4567z1
    );
ix46139z1568: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ly_acc_2_psp_sva_1(9),
      I1 => ly_acc_2_psp_sva_1(8),
      I2 => ly_acc_2_psp_sva_1(1),
      O => img_out_rsc_d(1)
    );
ix47136z1568: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ly_acc_2_psp_sva_1(9),
      I1 => ly_acc_2_psp_sva_1(8),
      I2 => ly_acc_2_psp_sva_1(2),
      O => img_out_rsc_d(2)
    );
ix47744z1320: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => img_out_rsc_wadr(0),
      I1 => nx29242z2,
      O => nx47744z2
    );
ix47745z1320: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => img_out_rsc_wadr(1),
      I1 => nx30239z2,
      O => nx47745z2
    );
ix47746z1320: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => img_out_rsc_wadr(2),
      I1 => nx35224z3,
      O => nx47746z2
    );
ix47747z1320: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => img_out_rsc_wadr(3),
      I1 => nx32233z2,
      O => nx47747z2
    );
ix47748z1320: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => img_out_rsc_wadr(4),
      I1 => nx33230z2,
      O => nx47748z2
    );
ix47749z1320: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => img_out_rsc_wadr(5),
      I1 => nx34227z2,
      O => nx47749z2
    );
ix47750z1320: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lx_x_8_0_sva(6),
      I1 => nx35224z5,
      O => nx47750z2
    );
ix47751z1320: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => lx_x_8_0_sva(7),
      I1 => nx3954z2,
      O => nx47751z2
    );
ix48133z1568: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ly_acc_2_psp_sva_1(9),
      I1 => ly_acc_2_psp_sva_1(8),
      I2 => ly_acc_2_psp_sva_1(3),
      O => img_out_rsc_d(3)
    );
ix49130z1568: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ly_acc_2_psp_sva_1(9),
      I1 => ly_acc_2_psp_sva_1(8),
      I2 => ly_acc_2_psp_sva_1(4),
      O => img_out_rsc_d(4)
    );
ix50127z1568: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ly_acc_2_psp_sva_1(9),
      I1 => ly_acc_2_psp_sva_1(8),
      I2 => ly_acc_2_psp_sva_1(5),
      O => img_out_rsc_d(5)
    );
ix51124z1568: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ly_acc_2_psp_sva_1(9),
      I1 => ly_acc_2_psp_sva_1(8),
      I2 => ly_acc_2_psp_sva_1(6),
      O => img_out_rsc_d(6)
    );
ix52121z1568: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ly_acc_2_psp_sva_1(9),
      I1 => ly_acc_2_psp_sva_1(8),
      I2 => ly_acc_2_psp_sva_1(7),
      O => img_out_rsc_d(7)
    );
ix5564z1314: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => img_out_rsc_wadr(4),
      I1 => img_out_rsc_wadr(3),
      I2 => img_out_rsc_wadr(2),
      I3 => img_out_rsc_wadr(1),
      I4 => img_out_rsc_wadr(0),
      I5 => fsm_output(3),
      O => nx5564z1
    );
ix63750z24445: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A5A5A9A5A5A5A"
    )
        port map (
      I0 => nx3954z2,
      I1 => nx35224z5,
      I2 => nx34227z2,
      I3 => nx33230z2,
      I4 => nx32233z2,
      I5 => nx63754z3,
      O => nx63750z3
    );
ix63750z45004: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
        port map (
      I0 => nx3954z2,
      I1 => nx35224z5,
      I2 => nx34227z2,
      I3 => nx33230z2,
      I4 => nx32233z2,
      I5 => nx63754z3,
      O => nx63750z2
    );
ix63751z28620: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => nx35224z5,
      I1 => nx34227z2,
      I2 => nx33230z2,
      I3 => nx32233z2,
      I4 => nx63754z3,
      O => nx63751z2
    );
ix63751z40829: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A5A9A5A"
    )
        port map (
      I0 => nx35224z5,
      I1 => nx34227z2,
      I2 => nx33230z2,
      I3 => nx32233z2,
      I4 => nx63754z3,
      O => nx63751z3
    );
ix63752z24509: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A9A"
    )
        port map (
      I0 => nx34227z2,
      I1 => nx33230z2,
      I2 => nx32233z2,
      I3 => nx63754z3,
      O => nx63752z3
    );
ix63752z44940: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => nx34227z2,
      I1 => nx33230z2,
      I2 => nx32233z2,
      I3 => nx63754z3,
      O => nx63752z2
    );
ix63753z1480: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => nx33230z2,
      I1 => nx32233z2,
      I2 => nx63754z3,
      O => nx63753z2
    );
ix63753z24505: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5A96"
    )
        port map (
      I0 => nx33230z2,
      I1 => nx32233z2,
      I2 => nx35224z3,
      I3 => nx63754z3,
      O => nx63753z3
    );
ix63754z1323: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => nx32233z2,
      I1 => nx63754z3,
      O => nx63754z2
    );
ix63754z1421: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => nx32233z2,
      I1 => nx30239z2,
      I2 => nx63754z3,
      O => nx63754z4
    );
ix63754z23330: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0157157F117755FF"
    )
        port map (
      I0 => lx_x_8_0_sva(8),
      I1 => lx_x_8_0_sva(7),
      I2 => lx_x_8_0_sva(6),
      I3 => nx35224z3,
      I4 => nx30239z2,
      I5 => nx29242z2,
      O => nx63754z3
    );
ix63755z23244: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A956956A996655AA"
    )
        port map (
      I0 => lx_x_8_0_sva(8),
      I1 => lx_x_8_0_sva(7),
      I2 => lx_x_8_0_sva(6),
      I3 => nx35224z3,
      I4 => nx30239z2,
      I5 => nx29242z2,
      O => nx63755z1
    );
ix63755z55165: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B692DA5B496D25A"
    )
        port map (
      I0 => nx29242z2,
      I1 => nx30239z2,
      I2 => nx35224z3,
      I3 => lx_x_8_0_sva(6),
      I4 => lx_x_8_0_sva(7),
      I5 => lx_x_8_0_sva(8),
      O => nx63755z2
    );
ix6561z1443: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => img_out_rsc_wadr(2),
      I1 => img_out_rsc_wadr(1),
      I2 => img_out_rsc_wadr(0),
      O => nx6561z2
    );
ix6561z44834: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A00AA00"
    )
        port map (
      I0 => img_out_rsc_wadr(5),
      I1 => img_out_rsc_wadr(4),
      I2 => img_out_rsc_wadr(3),
      I3 => fsm_output(3),
      I4 => nx6561z2,
      O => nx6561z1
    );
ix7558z1315: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => img_out_rsc_wadr(5),
      I1 => img_out_rsc_wadr(4),
      I2 => img_out_rsc_wadr(3),
      I3 => img_out_rsc_wadr(2),
      I4 => img_out_rsc_wadr(1),
      I5 => img_out_rsc_wadr(0),
      O => nx7558z2
    );
ix7558z1354: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => fsm_output(3),
      I1 => lx_x_8_0_sva(6),
      I2 => nx7558z2,
      O => nx7558z1
    );
ix8555z11691: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => fsm_output(3),
      I1 => lx_x_8_0_sva(7),
      I2 => lx_x_8_0_sva(6),
      I3 => nx7558z2,
      O => nx8555z2
    );
ix8555z1328: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fsm_output(3),
      I1 => fsm_output(0),
      O => nx8555z1
    );
ix9552z36266: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => fsm_output(3),
      I1 => lx_x_8_0_sva(8),
      I2 => lx_x_8_0_sva(7),
      I3 => lx_x_8_0_sva(6),
      I4 => nx7558z2,
      O => nx9552z1
    );
ly_acc_2_psp_sva_1_add9_5_muxcy_0_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => nx47748z1,
      CO(2) => nx47747z1,
      CO(1) => nx47746z1,
      CO(0) => nx47745z1,
      CYINIT => nx47744z1,
      DI(3 downto 0) => img_out_rsc_wadr(3 downto 0),
      O(3 downto 0) => ly_acc_2_psp_sva_1(3 downto 0),
      S(3) => nx47747z2,
      S(2) => nx47746z2,
      S(1) => nx47745z2,
      S(0) => nx47744z2
    );
ly_acc_2_psp_sva_1_add9_5_muxcy_4_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => nx47748z1,
      CO(3) => nx47752z1,
      CO(2) => nx47751z1,
      CO(1) => nx47750z1,
      CO(0) => nx47749z1,
      CYINIT => '0',
      DI(3 downto 2) => lx_x_8_0_sva(7 downto 6),
      DI(1 downto 0) => img_out_rsc_wadr(5 downto 4),
      O(3 downto 0) => ly_acc_2_psp_sva_1(7 downto 4),
      S(3) => nx47751z2,
      S(2) => nx47750z2,
      S(1) => nx47749z2,
      S(0) => nx47748z2
    );
ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => nx47752z1,
      CO(3 downto 1) => NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => ly_acc_2_psp_sva_1(9),
      CYINIT => '0',
      DI(3 downto 1) => NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => lx_x_8_0_sva(8),
      O(3 downto 1) => NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_O_UNCONNECTED(3 downto 1),
      O(0) => ly_acc_2_psp_sva_1(8),
      S(3 downto 1) => NLW_ly_acc_2_psp_sva_1_add9_5_muxcy_8_CARRY4_S_UNCONNECTED(3 downto 1),
      S(0) => lx_x_8_0_sva(8)
    );
reg_DispProcTest_core_core_fsm_inst_ly_C_1_tr0: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => nx3954z1,
      Q => DispProcTest_core_core_fsm_inst_ly_C_1_tr0,
      R => '0'
    );
\reg_lx_x_8_0_sva(0)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => nx8555z1,
      D => nx1576z1,
      Q => img_out_rsc_wadr(0),
      R => rst
    );
\reg_lx_x_8_0_sva(1)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => nx8555z1,
      D => nx2573z1,
      Q => img_out_rsc_wadr(1),
      R => rst
    );
\reg_lx_x_8_0_sva(2)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => nx8555z1,
      D => nx3570z1,
      Q => img_out_rsc_wadr(2),
      R => rst
    );
\reg_lx_x_8_0_sva(3)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => nx8555z1,
      D => nx4567z1,
      Q => img_out_rsc_wadr(3),
      R => rst
    );
\reg_lx_x_8_0_sva(4)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => nx8555z1,
      D => nx5564z1,
      Q => img_out_rsc_wadr(4),
      R => rst
    );
\reg_lx_x_8_0_sva(5)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => nx8555z1,
      D => nx6561z1,
      Q => img_out_rsc_wadr(5),
      R => rst
    );
\reg_lx_x_8_0_sva(6)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => nx8555z1,
      D => nx7558z1,
      Q => lx_x_8_0_sva(6),
      R => rst
    );
\reg_lx_x_8_0_sva(7)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => nx8555z1,
      D => nx8555z2,
      Q => lx_x_8_0_sva(7),
      R => rst
    );
\reg_lx_x_8_0_sva(8)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => nx8555z1,
      D => nx9552z1,
      Q => lx_x_8_0_sva(8),
      R => rst
    );
\reg_ly_y_7_0_sva(0)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => nx35224z1,
      D => nx28245z1,
      Q => nx29242z2,
      R => rst
    );
\reg_ly_y_7_0_sva(1)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => nx29242z1,
      Q => nx30239z2,
      R => rst
    );
\reg_ly_y_7_0_sva(2)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => nx30239z1,
      Q => nx35224z3,
      R => rst
    );
\reg_ly_y_7_0_sva(3)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => nx31236z1,
      Q => nx32233z2,
      R => rst
    );
\reg_ly_y_7_0_sva(4)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => nx35224z1,
      D => nx32233z1,
      Q => nx33230z2,
      R => rst
    );
\reg_ly_y_7_0_sva(5)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => nx35224z1,
      D => nx33230z1,
      Q => nx34227z2,
      R => rst
    );
\reg_ly_y_7_0_sva(6)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => nx35224z1,
      D => nx34227z1,
      Q => nx35224z5,
      R => rst
    );
\reg_ly_y_7_0_sva(7)\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => nx35224z1,
      D => nx35224z2,
      Q => nx3954z2,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2_mem2p_76800_8_bindec is
  port (
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ena_array : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMI_proc_0_2_mem2p_76800_8_bindec : entity is "bindec";
end system_HDMI_proc_0_2_mem2p_76800_8_bindec;

architecture STRUCTURE of system_HDMI_proc_0_2_mem2p_76800_8_bindec is
begin
ENOUT: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => addra(0),
      I1 => addra(4),
      I2 => addra(1),
      I3 => ena,
      I4 => addra(3),
      I5 => addra(2),
      O => ena_array(0)
    );
\ENOUT_inferred__0/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(4),
      I2 => ena,
      I3 => addra(0),
      I4 => addra(3),
      I5 => addra(2),
      O => ena_array(1)
    );
\ENOUT_inferred__1/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addra(0),
      I1 => addra(4),
      I2 => ena,
      I3 => addra(1),
      I4 => addra(3),
      I5 => addra(2),
      O => ena_array(2)
    );
\ENOUT_inferred__10/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => addra(2),
      I1 => addra(4),
      I2 => addra(1),
      I3 => addra(0),
      I4 => ena,
      I5 => addra(3),
      O => ena_array(11)
    );
\ENOUT_inferred__11/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(4),
      I2 => addra(2),
      I3 => addra(3),
      I4 => addra(0),
      I5 => ena,
      O => ena_array(12)
    );
\ENOUT_inferred__12/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(4),
      I2 => addra(3),
      I3 => addra(0),
      I4 => ena,
      I5 => addra(2),
      O => ena_array(13)
    );
\ENOUT_inferred__13/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => addra(0),
      I1 => addra(4),
      I2 => addra(1),
      I3 => addra(3),
      I4 => ena,
      I5 => addra(2),
      O => ena_array(14)
    );
\ENOUT_inferred__14/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => ena,
      I1 => addra(4),
      I2 => addra(1),
      I3 => addra(0),
      I4 => addra(3),
      I5 => addra(2),
      O => ena_array(15)
    );
\ENOUT_inferred__15/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addra(0),
      I1 => addra(1),
      I2 => addra(4),
      I3 => ena,
      I4 => addra(3),
      I5 => addra(2),
      O => ena_array(16)
    );
\ENOUT_inferred__16/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(2),
      I2 => ena,
      I3 => addra(0),
      I4 => addra(3),
      I5 => addra(4),
      O => ena_array(17)
    );
\ENOUT_inferred__17/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(0),
      I1 => addra(2),
      I2 => addra(1),
      I3 => ena,
      I4 => addra(3),
      I5 => addra(4),
      O => ena_array(18)
    );
\ENOUT_inferred__2/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(2),
      I1 => addra(4),
      I2 => addra(1),
      I3 => addra(0),
      I4 => addra(3),
      I5 => ena,
      O => ena_array(3)
    );
\ENOUT_inferred__3/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(4),
      I2 => ena,
      I3 => addra(2),
      I4 => addra(3),
      I5 => addra(0),
      O => ena_array(4)
    );
\ENOUT_inferred__4/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(4),
      I2 => addra(2),
      I3 => addra(0),
      I4 => addra(3),
      I5 => ena,
      O => ena_array(5)
    );
\ENOUT_inferred__5/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(0),
      I1 => addra(4),
      I2 => addra(1),
      I3 => addra(2),
      I4 => addra(3),
      I5 => ena,
      O => ena_array(6)
    );
\ENOUT_inferred__6/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => addra(3),
      I1 => addra(4),
      I2 => addra(1),
      I3 => addra(0),
      I4 => ena,
      I5 => addra(2),
      O => ena_array(7)
    );
\ENOUT_inferred__7/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addra(1),
      I1 => addra(4),
      I2 => ena,
      I3 => addra(3),
      I4 => addra(0),
      I5 => addra(2),
      O => ena_array(8)
    );
\ENOUT_inferred__8/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(2),
      I1 => addra(4),
      I2 => addra(3),
      I3 => addra(0),
      I4 => addra(1),
      I5 => ena,
      O => ena_array(9)
    );
\ENOUT_inferred__9/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addra(2),
      I1 => addra(4),
      I2 => addra(1),
      I3 => addra(3),
      I4 => addra(0),
      I5 => ena,
      O => ena_array(10)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2_mem2p_76800_8_bindec_0 is
  port (
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 4 downto 0 );
    enb_array : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMI_proc_0_2_mem2p_76800_8_bindec_0 : entity is "bindec";
end system_HDMI_proc_0_2_mem2p_76800_8_bindec_0;

architecture STRUCTURE of system_HDMI_proc_0_2_mem2p_76800_8_bindec_0 is
begin
ENOUT: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => addrb(0),
      I1 => addrb(4),
      I2 => addrb(1),
      I3 => enb,
      I4 => addrb(3),
      I5 => addrb(2),
      O => enb_array(0)
    );
\ENOUT_inferred__0/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addrb(1),
      I1 => addrb(4),
      I2 => enb,
      I3 => addrb(0),
      I4 => addrb(3),
      I5 => addrb(2),
      O => enb_array(1)
    );
\ENOUT_inferred__1/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addrb(0),
      I1 => addrb(4),
      I2 => enb,
      I3 => addrb(1),
      I4 => addrb(3),
      I5 => addrb(2),
      O => enb_array(2)
    );
\ENOUT_inferred__10/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => addrb(2),
      I1 => addrb(4),
      I2 => addrb(1),
      I3 => addrb(0),
      I4 => enb,
      I5 => addrb(3),
      O => enb_array(11)
    );
\ENOUT_inferred__11/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addrb(1),
      I1 => addrb(4),
      I2 => addrb(2),
      I3 => addrb(3),
      I4 => addrb(0),
      I5 => enb,
      O => enb_array(12)
    );
\ENOUT_inferred__12/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => addrb(1),
      I1 => addrb(4),
      I2 => addrb(3),
      I3 => addrb(0),
      I4 => enb,
      I5 => addrb(2),
      O => enb_array(13)
    );
\ENOUT_inferred__13/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => addrb(0),
      I1 => addrb(4),
      I2 => addrb(1),
      I3 => addrb(3),
      I4 => enb,
      I5 => addrb(2),
      O => enb_array(14)
    );
\ENOUT_inferred__14/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => enb,
      I1 => addrb(4),
      I2 => addrb(1),
      I3 => addrb(0),
      I4 => addrb(3),
      I5 => addrb(2),
      O => enb_array(15)
    );
\ENOUT_inferred__15/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addrb(0),
      I1 => addrb(1),
      I2 => addrb(4),
      I3 => enb,
      I4 => addrb(3),
      I5 => addrb(2),
      O => enb_array(16)
    );
\ENOUT_inferred__16/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addrb(1),
      I1 => addrb(2),
      I2 => enb,
      I3 => addrb(0),
      I4 => addrb(3),
      I5 => addrb(4),
      O => enb_array(17)
    );
\ENOUT_inferred__17/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addrb(0),
      I1 => addrb(2),
      I2 => addrb(1),
      I3 => enb,
      I4 => addrb(3),
      I5 => addrb(4),
      O => enb_array(18)
    );
\ENOUT_inferred__2/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addrb(2),
      I1 => addrb(4),
      I2 => addrb(1),
      I3 => addrb(0),
      I4 => addrb(3),
      I5 => enb,
      O => enb_array(3)
    );
\ENOUT_inferred__3/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addrb(1),
      I1 => addrb(4),
      I2 => enb,
      I3 => addrb(2),
      I4 => addrb(3),
      I5 => addrb(0),
      O => enb_array(4)
    );
\ENOUT_inferred__4/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addrb(1),
      I1 => addrb(4),
      I2 => addrb(2),
      I3 => addrb(0),
      I4 => addrb(3),
      I5 => enb,
      O => enb_array(5)
    );
\ENOUT_inferred__5/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addrb(0),
      I1 => addrb(4),
      I2 => addrb(1),
      I3 => addrb(2),
      I4 => addrb(3),
      I5 => enb,
      O => enb_array(6)
    );
\ENOUT_inferred__6/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => addrb(3),
      I1 => addrb(4),
      I2 => addrb(1),
      I3 => addrb(0),
      I4 => enb,
      I5 => addrb(2),
      O => enb_array(7)
    );
\ENOUT_inferred__7/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addrb(1),
      I1 => addrb(4),
      I2 => enb,
      I3 => addrb(3),
      I4 => addrb(0),
      I5 => addrb(2),
      O => enb_array(8)
    );
\ENOUT_inferred__8/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addrb(2),
      I1 => addrb(4),
      I2 => addrb(3),
      I3 => addrb(0),
      I4 => addrb(1),
      I5 => enb,
      O => enb_array(9)
    );
\ENOUT_inferred__9/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addrb(2),
      I1 => addrb(4),
      I2 => addrb(1),
      I3 => addrb(3),
      I4 => addrb(0),
      I5 => enb,
      O => enb_array(10)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_mux is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 4 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : in STD_LOGIC_VECTOR ( 151 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_mux : entity is "blk_mem_gen_mux";
end system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_mux;

architecture STRUCTURE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_mux is
  signal \douta[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
\douta[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[0]_INST_0_i_1_n_0\,
      I1 => sel_pipe(4),
      I2 => \douta[0]_INST_0_i_2_n_0\,
      I3 => sel_pipe(3),
      I4 => \douta[0]_INST_0_i_3_n_0\,
      O => douta(0)
    );
\douta[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(128),
      I1 => sel_pipe(0),
      I2 => douta_array(136),
      I3 => sel_pipe(1),
      I4 => douta_array(144),
      I5 => sel_pipe(2),
      O => \douta[0]_INST_0_i_1_n_0\
    );
\douta[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[0]_INST_0_i_4_n_0\,
      I1 => \douta[0]_INST_0_i_5_n_0\,
      O => \douta[0]_INST_0_i_2_n_0\,
      S => sel_pipe(2)
    );
\douta[0]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[0]_INST_0_i_6_n_0\,
      I1 => \douta[0]_INST_0_i_7_n_0\,
      O => \douta[0]_INST_0_i_3_n_0\,
      S => sel_pipe(2)
    );
\douta[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(88),
      I1 => douta_array(80),
      I2 => sel_pipe(1),
      I3 => douta_array(72),
      I4 => sel_pipe(0),
      I5 => douta_array(64),
      O => \douta[0]_INST_0_i_4_n_0\
    );
\douta[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(120),
      I1 => douta_array(112),
      I2 => sel_pipe(1),
      I3 => douta_array(104),
      I4 => sel_pipe(0),
      I5 => douta_array(96),
      O => \douta[0]_INST_0_i_5_n_0\
    );
\douta[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(24),
      I1 => douta_array(16),
      I2 => sel_pipe(1),
      I3 => douta_array(8),
      I4 => sel_pipe(0),
      I5 => douta_array(0),
      O => \douta[0]_INST_0_i_6_n_0\
    );
\douta[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(56),
      I1 => douta_array(48),
      I2 => sel_pipe(1),
      I3 => douta_array(40),
      I4 => sel_pipe(0),
      I5 => douta_array(32),
      O => \douta[0]_INST_0_i_7_n_0\
    );
\douta[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[1]_INST_0_i_1_n_0\,
      I1 => sel_pipe(4),
      I2 => \douta[1]_INST_0_i_2_n_0\,
      I3 => sel_pipe(3),
      I4 => \douta[1]_INST_0_i_3_n_0\,
      O => douta(1)
    );
\douta[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(129),
      I1 => sel_pipe(0),
      I2 => douta_array(137),
      I3 => sel_pipe(1),
      I4 => douta_array(145),
      I5 => sel_pipe(2),
      O => \douta[1]_INST_0_i_1_n_0\
    );
\douta[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[1]_INST_0_i_4_n_0\,
      I1 => \douta[1]_INST_0_i_5_n_0\,
      O => \douta[1]_INST_0_i_2_n_0\,
      S => sel_pipe(2)
    );
\douta[1]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[1]_INST_0_i_6_n_0\,
      I1 => \douta[1]_INST_0_i_7_n_0\,
      O => \douta[1]_INST_0_i_3_n_0\,
      S => sel_pipe(2)
    );
\douta[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(89),
      I1 => douta_array(81),
      I2 => sel_pipe(1),
      I3 => douta_array(73),
      I4 => sel_pipe(0),
      I5 => douta_array(65),
      O => \douta[1]_INST_0_i_4_n_0\
    );
\douta[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(121),
      I1 => douta_array(113),
      I2 => sel_pipe(1),
      I3 => douta_array(105),
      I4 => sel_pipe(0),
      I5 => douta_array(97),
      O => \douta[1]_INST_0_i_5_n_0\
    );
\douta[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(25),
      I1 => douta_array(17),
      I2 => sel_pipe(1),
      I3 => douta_array(9),
      I4 => sel_pipe(0),
      I5 => douta_array(1),
      O => \douta[1]_INST_0_i_6_n_0\
    );
\douta[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(57),
      I1 => douta_array(49),
      I2 => sel_pipe(1),
      I3 => douta_array(41),
      I4 => sel_pipe(0),
      I5 => douta_array(33),
      O => \douta[1]_INST_0_i_7_n_0\
    );
\douta[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[2]_INST_0_i_1_n_0\,
      I1 => sel_pipe(4),
      I2 => \douta[2]_INST_0_i_2_n_0\,
      I3 => sel_pipe(3),
      I4 => \douta[2]_INST_0_i_3_n_0\,
      O => douta(2)
    );
\douta[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(130),
      I1 => sel_pipe(0),
      I2 => douta_array(138),
      I3 => sel_pipe(1),
      I4 => douta_array(146),
      I5 => sel_pipe(2),
      O => \douta[2]_INST_0_i_1_n_0\
    );
\douta[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[2]_INST_0_i_4_n_0\,
      I1 => \douta[2]_INST_0_i_5_n_0\,
      O => \douta[2]_INST_0_i_2_n_0\,
      S => sel_pipe(2)
    );
\douta[2]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[2]_INST_0_i_6_n_0\,
      I1 => \douta[2]_INST_0_i_7_n_0\,
      O => \douta[2]_INST_0_i_3_n_0\,
      S => sel_pipe(2)
    );
\douta[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(90),
      I1 => douta_array(82),
      I2 => sel_pipe(1),
      I3 => douta_array(74),
      I4 => sel_pipe(0),
      I5 => douta_array(66),
      O => \douta[2]_INST_0_i_4_n_0\
    );
\douta[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(122),
      I1 => douta_array(114),
      I2 => sel_pipe(1),
      I3 => douta_array(106),
      I4 => sel_pipe(0),
      I5 => douta_array(98),
      O => \douta[2]_INST_0_i_5_n_0\
    );
\douta[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(26),
      I1 => douta_array(18),
      I2 => sel_pipe(1),
      I3 => douta_array(10),
      I4 => sel_pipe(0),
      I5 => douta_array(2),
      O => \douta[2]_INST_0_i_6_n_0\
    );
\douta[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(58),
      I1 => douta_array(50),
      I2 => sel_pipe(1),
      I3 => douta_array(42),
      I4 => sel_pipe(0),
      I5 => douta_array(34),
      O => \douta[2]_INST_0_i_7_n_0\
    );
\douta[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[3]_INST_0_i_1_n_0\,
      I1 => sel_pipe(4),
      I2 => \douta[3]_INST_0_i_2_n_0\,
      I3 => sel_pipe(3),
      I4 => \douta[3]_INST_0_i_3_n_0\,
      O => douta(3)
    );
\douta[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(131),
      I1 => sel_pipe(0),
      I2 => douta_array(139),
      I3 => sel_pipe(1),
      I4 => douta_array(147),
      I5 => sel_pipe(2),
      O => \douta[3]_INST_0_i_1_n_0\
    );
\douta[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[3]_INST_0_i_4_n_0\,
      I1 => \douta[3]_INST_0_i_5_n_0\,
      O => \douta[3]_INST_0_i_2_n_0\,
      S => sel_pipe(2)
    );
\douta[3]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[3]_INST_0_i_6_n_0\,
      I1 => \douta[3]_INST_0_i_7_n_0\,
      O => \douta[3]_INST_0_i_3_n_0\,
      S => sel_pipe(2)
    );
\douta[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(91),
      I1 => douta_array(83),
      I2 => sel_pipe(1),
      I3 => douta_array(75),
      I4 => sel_pipe(0),
      I5 => douta_array(67),
      O => \douta[3]_INST_0_i_4_n_0\
    );
\douta[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(123),
      I1 => douta_array(115),
      I2 => sel_pipe(1),
      I3 => douta_array(107),
      I4 => sel_pipe(0),
      I5 => douta_array(99),
      O => \douta[3]_INST_0_i_5_n_0\
    );
\douta[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(27),
      I1 => douta_array(19),
      I2 => sel_pipe(1),
      I3 => douta_array(11),
      I4 => sel_pipe(0),
      I5 => douta_array(3),
      O => \douta[3]_INST_0_i_6_n_0\
    );
\douta[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(59),
      I1 => douta_array(51),
      I2 => sel_pipe(1),
      I3 => douta_array(43),
      I4 => sel_pipe(0),
      I5 => douta_array(35),
      O => \douta[3]_INST_0_i_7_n_0\
    );
\douta[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[4]_INST_0_i_1_n_0\,
      I1 => sel_pipe(4),
      I2 => \douta[4]_INST_0_i_2_n_0\,
      I3 => sel_pipe(3),
      I4 => \douta[4]_INST_0_i_3_n_0\,
      O => douta(4)
    );
\douta[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(132),
      I1 => sel_pipe(0),
      I2 => douta_array(140),
      I3 => sel_pipe(1),
      I4 => douta_array(148),
      I5 => sel_pipe(2),
      O => \douta[4]_INST_0_i_1_n_0\
    );
\douta[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[4]_INST_0_i_4_n_0\,
      I1 => \douta[4]_INST_0_i_5_n_0\,
      O => \douta[4]_INST_0_i_2_n_0\,
      S => sel_pipe(2)
    );
\douta[4]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[4]_INST_0_i_6_n_0\,
      I1 => \douta[4]_INST_0_i_7_n_0\,
      O => \douta[4]_INST_0_i_3_n_0\,
      S => sel_pipe(2)
    );
\douta[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(92),
      I1 => douta_array(84),
      I2 => sel_pipe(1),
      I3 => douta_array(76),
      I4 => sel_pipe(0),
      I5 => douta_array(68),
      O => \douta[4]_INST_0_i_4_n_0\
    );
\douta[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(124),
      I1 => douta_array(116),
      I2 => sel_pipe(1),
      I3 => douta_array(108),
      I4 => sel_pipe(0),
      I5 => douta_array(100),
      O => \douta[4]_INST_0_i_5_n_0\
    );
\douta[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(28),
      I1 => douta_array(20),
      I2 => sel_pipe(1),
      I3 => douta_array(12),
      I4 => sel_pipe(0),
      I5 => douta_array(4),
      O => \douta[4]_INST_0_i_6_n_0\
    );
\douta[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(60),
      I1 => douta_array(52),
      I2 => sel_pipe(1),
      I3 => douta_array(44),
      I4 => sel_pipe(0),
      I5 => douta_array(36),
      O => \douta[4]_INST_0_i_7_n_0\
    );
\douta[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[5]_INST_0_i_1_n_0\,
      I1 => sel_pipe(4),
      I2 => \douta[5]_INST_0_i_2_n_0\,
      I3 => sel_pipe(3),
      I4 => \douta[5]_INST_0_i_3_n_0\,
      O => douta(5)
    );
\douta[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(133),
      I1 => sel_pipe(0),
      I2 => douta_array(141),
      I3 => sel_pipe(1),
      I4 => douta_array(149),
      I5 => sel_pipe(2),
      O => \douta[5]_INST_0_i_1_n_0\
    );
\douta[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[5]_INST_0_i_4_n_0\,
      I1 => \douta[5]_INST_0_i_5_n_0\,
      O => \douta[5]_INST_0_i_2_n_0\,
      S => sel_pipe(2)
    );
\douta[5]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[5]_INST_0_i_6_n_0\,
      I1 => \douta[5]_INST_0_i_7_n_0\,
      O => \douta[5]_INST_0_i_3_n_0\,
      S => sel_pipe(2)
    );
\douta[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(93),
      I1 => douta_array(85),
      I2 => sel_pipe(1),
      I3 => douta_array(77),
      I4 => sel_pipe(0),
      I5 => douta_array(69),
      O => \douta[5]_INST_0_i_4_n_0\
    );
\douta[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(125),
      I1 => douta_array(117),
      I2 => sel_pipe(1),
      I3 => douta_array(109),
      I4 => sel_pipe(0),
      I5 => douta_array(101),
      O => \douta[5]_INST_0_i_5_n_0\
    );
\douta[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(29),
      I1 => douta_array(21),
      I2 => sel_pipe(1),
      I3 => douta_array(13),
      I4 => sel_pipe(0),
      I5 => douta_array(5),
      O => \douta[5]_INST_0_i_6_n_0\
    );
\douta[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(61),
      I1 => douta_array(53),
      I2 => sel_pipe(1),
      I3 => douta_array(45),
      I4 => sel_pipe(0),
      I5 => douta_array(37),
      O => \douta[5]_INST_0_i_7_n_0\
    );
\douta[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[6]_INST_0_i_1_n_0\,
      I1 => sel_pipe(4),
      I2 => \douta[6]_INST_0_i_2_n_0\,
      I3 => sel_pipe(3),
      I4 => \douta[6]_INST_0_i_3_n_0\,
      O => douta(6)
    );
\douta[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(134),
      I1 => sel_pipe(0),
      I2 => douta_array(142),
      I3 => sel_pipe(1),
      I4 => douta_array(150),
      I5 => sel_pipe(2),
      O => \douta[6]_INST_0_i_1_n_0\
    );
\douta[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[6]_INST_0_i_4_n_0\,
      I1 => \douta[6]_INST_0_i_5_n_0\,
      O => \douta[6]_INST_0_i_2_n_0\,
      S => sel_pipe(2)
    );
\douta[6]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[6]_INST_0_i_6_n_0\,
      I1 => \douta[6]_INST_0_i_7_n_0\,
      O => \douta[6]_INST_0_i_3_n_0\,
      S => sel_pipe(2)
    );
\douta[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(94),
      I1 => douta_array(86),
      I2 => sel_pipe(1),
      I3 => douta_array(78),
      I4 => sel_pipe(0),
      I5 => douta_array(70),
      O => \douta[6]_INST_0_i_4_n_0\
    );
\douta[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(126),
      I1 => douta_array(118),
      I2 => sel_pipe(1),
      I3 => douta_array(110),
      I4 => sel_pipe(0),
      I5 => douta_array(102),
      O => \douta[6]_INST_0_i_5_n_0\
    );
\douta[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(30),
      I1 => douta_array(22),
      I2 => sel_pipe(1),
      I3 => douta_array(14),
      I4 => sel_pipe(0),
      I5 => douta_array(6),
      O => \douta[6]_INST_0_i_6_n_0\
    );
\douta[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(62),
      I1 => douta_array(54),
      I2 => sel_pipe(1),
      I3 => douta_array(46),
      I4 => sel_pipe(0),
      I5 => douta_array(38),
      O => \douta[6]_INST_0_i_7_n_0\
    );
\douta[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \douta[7]_INST_0_i_1_n_0\,
      I1 => sel_pipe(4),
      I2 => \douta[7]_INST_0_i_2_n_0\,
      I3 => sel_pipe(3),
      I4 => \douta[7]_INST_0_i_3_n_0\,
      O => douta(7)
    );
\douta[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => douta_array(135),
      I1 => sel_pipe(0),
      I2 => douta_array(143),
      I3 => sel_pipe(1),
      I4 => douta_array(151),
      I5 => sel_pipe(2),
      O => \douta[7]_INST_0_i_1_n_0\
    );
\douta[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[7]_INST_0_i_4_n_0\,
      I1 => \douta[7]_INST_0_i_5_n_0\,
      O => \douta[7]_INST_0_i_2_n_0\,
      S => sel_pipe(2)
    );
\douta[7]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[7]_INST_0_i_6_n_0\,
      I1 => \douta[7]_INST_0_i_7_n_0\,
      O => \douta[7]_INST_0_i_3_n_0\,
      S => sel_pipe(2)
    );
\douta[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(95),
      I1 => douta_array(87),
      I2 => sel_pipe(1),
      I3 => douta_array(79),
      I4 => sel_pipe(0),
      I5 => douta_array(71),
      O => \douta[7]_INST_0_i_4_n_0\
    );
\douta[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(127),
      I1 => douta_array(119),
      I2 => sel_pipe(1),
      I3 => douta_array(111),
      I4 => sel_pipe(0),
      I5 => douta_array(103),
      O => \douta[7]_INST_0_i_5_n_0\
    );
\douta[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(31),
      I1 => douta_array(23),
      I2 => sel_pipe(1),
      I3 => douta_array(15),
      I4 => sel_pipe(0),
      I5 => douta_array(7),
      O => \douta[7]_INST_0_i_6_n_0\
    );
\douta[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => douta_array(63),
      I1 => douta_array(55),
      I2 => sel_pipe(1),
      I3 => douta_array(47),
      I4 => sel_pipe(0),
      I5 => douta_array(39),
      O => \douta[7]_INST_0_i_7_n_0\
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(0),
      Q => sel_pipe(0),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(1),
      Q => sel_pipe(1),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(2),
      Q => sel_pipe(2),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(3),
      Q => sel_pipe(3),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => addra(4),
      Q => sel_pipe(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_mux__parameterized0\ is
  port (
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 4 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : in STD_LOGIC_VECTOR ( 151 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_mux__parameterized0\ : entity is "blk_mem_gen_mux";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_mux__parameterized0\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_mux__parameterized0\ is
  signal \doutb[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
\doutb[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \doutb[0]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(4),
      I2 => \doutb[0]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(3),
      I4 => \doutb[0]_INST_0_i_3_n_0\,
      O => doutb(0)
    );
\doutb[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => doutb_array(128),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I2 => doutb_array(136),
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I4 => doutb_array(144),
      I5 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2),
      O => \doutb[0]_INST_0_i_1_n_0\
    );
\doutb[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[0]_INST_0_i_4_n_0\,
      I1 => \doutb[0]_INST_0_i_5_n_0\,
      O => \doutb[0]_INST_0_i_2_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[0]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[0]_INST_0_i_6_n_0\,
      I1 => \doutb[0]_INST_0_i_7_n_0\,
      O => \doutb[0]_INST_0_i_3_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(88),
      I1 => doutb_array(80),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(72),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(64),
      O => \doutb[0]_INST_0_i_4_n_0\
    );
\doutb[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(120),
      I1 => doutb_array(112),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(104),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(96),
      O => \doutb[0]_INST_0_i_5_n_0\
    );
\doutb[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(24),
      I1 => doutb_array(16),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(8),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(0),
      O => \doutb[0]_INST_0_i_6_n_0\
    );
\doutb[0]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(56),
      I1 => doutb_array(48),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(40),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(32),
      O => \doutb[0]_INST_0_i_7_n_0\
    );
\doutb[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \doutb[1]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(4),
      I2 => \doutb[1]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(3),
      I4 => \doutb[1]_INST_0_i_3_n_0\,
      O => doutb(1)
    );
\doutb[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => doutb_array(129),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I2 => doutb_array(137),
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I4 => doutb_array(145),
      I5 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2),
      O => \doutb[1]_INST_0_i_1_n_0\
    );
\doutb[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[1]_INST_0_i_4_n_0\,
      I1 => \doutb[1]_INST_0_i_5_n_0\,
      O => \doutb[1]_INST_0_i_2_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[1]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[1]_INST_0_i_6_n_0\,
      I1 => \doutb[1]_INST_0_i_7_n_0\,
      O => \doutb[1]_INST_0_i_3_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(89),
      I1 => doutb_array(81),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(73),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(65),
      O => \doutb[1]_INST_0_i_4_n_0\
    );
\doutb[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(121),
      I1 => doutb_array(113),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(105),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(97),
      O => \doutb[1]_INST_0_i_5_n_0\
    );
\doutb[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(25),
      I1 => doutb_array(17),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(9),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(1),
      O => \doutb[1]_INST_0_i_6_n_0\
    );
\doutb[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(57),
      I1 => doutb_array(49),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(41),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(33),
      O => \doutb[1]_INST_0_i_7_n_0\
    );
\doutb[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \doutb[2]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(4),
      I2 => \doutb[2]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(3),
      I4 => \doutb[2]_INST_0_i_3_n_0\,
      O => doutb(2)
    );
\doutb[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => doutb_array(130),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I2 => doutb_array(138),
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I4 => doutb_array(146),
      I5 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2),
      O => \doutb[2]_INST_0_i_1_n_0\
    );
\doutb[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[2]_INST_0_i_4_n_0\,
      I1 => \doutb[2]_INST_0_i_5_n_0\,
      O => \doutb[2]_INST_0_i_2_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[2]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[2]_INST_0_i_6_n_0\,
      I1 => \doutb[2]_INST_0_i_7_n_0\,
      O => \doutb[2]_INST_0_i_3_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(90),
      I1 => doutb_array(82),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(74),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(66),
      O => \doutb[2]_INST_0_i_4_n_0\
    );
\doutb[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(122),
      I1 => doutb_array(114),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(106),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(98),
      O => \doutb[2]_INST_0_i_5_n_0\
    );
\doutb[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(26),
      I1 => doutb_array(18),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(10),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(2),
      O => \doutb[2]_INST_0_i_6_n_0\
    );
\doutb[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(58),
      I1 => doutb_array(50),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(42),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(34),
      O => \doutb[2]_INST_0_i_7_n_0\
    );
\doutb[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \doutb[3]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(4),
      I2 => \doutb[3]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(3),
      I4 => \doutb[3]_INST_0_i_3_n_0\,
      O => doutb(3)
    );
\doutb[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => doutb_array(131),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I2 => doutb_array(139),
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I4 => doutb_array(147),
      I5 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2),
      O => \doutb[3]_INST_0_i_1_n_0\
    );
\doutb[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[3]_INST_0_i_4_n_0\,
      I1 => \doutb[3]_INST_0_i_5_n_0\,
      O => \doutb[3]_INST_0_i_2_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[3]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[3]_INST_0_i_6_n_0\,
      I1 => \doutb[3]_INST_0_i_7_n_0\,
      O => \doutb[3]_INST_0_i_3_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(91),
      I1 => doutb_array(83),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(75),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(67),
      O => \doutb[3]_INST_0_i_4_n_0\
    );
\doutb[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(123),
      I1 => doutb_array(115),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(107),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(99),
      O => \doutb[3]_INST_0_i_5_n_0\
    );
\doutb[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(27),
      I1 => doutb_array(19),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(11),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(3),
      O => \doutb[3]_INST_0_i_6_n_0\
    );
\doutb[3]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(59),
      I1 => doutb_array(51),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(43),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(35),
      O => \doutb[3]_INST_0_i_7_n_0\
    );
\doutb[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \doutb[4]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(4),
      I2 => \doutb[4]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(3),
      I4 => \doutb[4]_INST_0_i_3_n_0\,
      O => doutb(4)
    );
\doutb[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => doutb_array(132),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I2 => doutb_array(140),
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I4 => doutb_array(148),
      I5 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2),
      O => \doutb[4]_INST_0_i_1_n_0\
    );
\doutb[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[4]_INST_0_i_4_n_0\,
      I1 => \doutb[4]_INST_0_i_5_n_0\,
      O => \doutb[4]_INST_0_i_2_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[4]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[4]_INST_0_i_6_n_0\,
      I1 => \doutb[4]_INST_0_i_7_n_0\,
      O => \doutb[4]_INST_0_i_3_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(92),
      I1 => doutb_array(84),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(76),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(68),
      O => \doutb[4]_INST_0_i_4_n_0\
    );
\doutb[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(124),
      I1 => doutb_array(116),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(108),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(100),
      O => \doutb[4]_INST_0_i_5_n_0\
    );
\doutb[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(28),
      I1 => doutb_array(20),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(12),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(4),
      O => \doutb[4]_INST_0_i_6_n_0\
    );
\doutb[4]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(60),
      I1 => doutb_array(52),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(44),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(36),
      O => \doutb[4]_INST_0_i_7_n_0\
    );
\doutb[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \doutb[5]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(4),
      I2 => \doutb[5]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(3),
      I4 => \doutb[5]_INST_0_i_3_n_0\,
      O => doutb(5)
    );
\doutb[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => doutb_array(133),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I2 => doutb_array(141),
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I4 => doutb_array(149),
      I5 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2),
      O => \doutb[5]_INST_0_i_1_n_0\
    );
\doutb[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[5]_INST_0_i_4_n_0\,
      I1 => \doutb[5]_INST_0_i_5_n_0\,
      O => \doutb[5]_INST_0_i_2_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[5]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[5]_INST_0_i_6_n_0\,
      I1 => \doutb[5]_INST_0_i_7_n_0\,
      O => \doutb[5]_INST_0_i_3_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(93),
      I1 => doutb_array(85),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(77),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(69),
      O => \doutb[5]_INST_0_i_4_n_0\
    );
\doutb[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(125),
      I1 => doutb_array(117),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(109),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(101),
      O => \doutb[5]_INST_0_i_5_n_0\
    );
\doutb[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(29),
      I1 => doutb_array(21),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(13),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(5),
      O => \doutb[5]_INST_0_i_6_n_0\
    );
\doutb[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(61),
      I1 => doutb_array(53),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(45),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(37),
      O => \doutb[5]_INST_0_i_7_n_0\
    );
\doutb[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \doutb[6]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(4),
      I2 => \doutb[6]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(3),
      I4 => \doutb[6]_INST_0_i_3_n_0\,
      O => doutb(6)
    );
\doutb[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => doutb_array(134),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I2 => doutb_array(142),
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I4 => doutb_array(150),
      I5 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2),
      O => \doutb[6]_INST_0_i_1_n_0\
    );
\doutb[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[6]_INST_0_i_4_n_0\,
      I1 => \doutb[6]_INST_0_i_5_n_0\,
      O => \doutb[6]_INST_0_i_2_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[6]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[6]_INST_0_i_6_n_0\,
      I1 => \doutb[6]_INST_0_i_7_n_0\,
      O => \doutb[6]_INST_0_i_3_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(94),
      I1 => doutb_array(86),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(78),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(70),
      O => \doutb[6]_INST_0_i_4_n_0\
    );
\doutb[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(126),
      I1 => doutb_array(118),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(110),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(102),
      O => \doutb[6]_INST_0_i_5_n_0\
    );
\doutb[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(30),
      I1 => doutb_array(22),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(14),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(6),
      O => \doutb[6]_INST_0_i_6_n_0\
    );
\doutb[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(62),
      I1 => doutb_array(54),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(46),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(38),
      O => \doutb[6]_INST_0_i_7_n_0\
    );
\doutb[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \doutb[7]_INST_0_i_1_n_0\,
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(4),
      I2 => \doutb[7]_INST_0_i_2_n_0\,
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(3),
      I4 => \doutb[7]_INST_0_i_3_n_0\,
      O => doutb(7)
    );
\doutb[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => doutb_array(135),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I2 => doutb_array(143),
      I3 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I4 => doutb_array(151),
      I5 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2),
      O => \doutb[7]_INST_0_i_1_n_0\
    );
\doutb[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[7]_INST_0_i_4_n_0\,
      I1 => \doutb[7]_INST_0_i_5_n_0\,
      O => \doutb[7]_INST_0_i_2_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[7]_INST_0_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[7]_INST_0_i_6_n_0\,
      I1 => \doutb[7]_INST_0_i_7_n_0\,
      O => \doutb[7]_INST_0_i_3_n_0\,
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2)
    );
\doutb[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(95),
      I1 => doutb_array(87),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(79),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(71),
      O => \doutb[7]_INST_0_i_4_n_0\
    );
\doutb[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(127),
      I1 => doutb_array(119),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(111),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(103),
      O => \doutb[7]_INST_0_i_5_n_0\
    );
\doutb[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(31),
      I1 => doutb_array(23),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(15),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(7),
      O => \doutb[7]_INST_0_i_6_n_0\
    );
\doutb[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => doutb_array(63),
      I1 => doutb_array(55),
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      I3 => doutb_array(47),
      I4 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      I5 => doutb_array(39),
      O => \doutb[7]_INST_0_i_7_n_0\
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => addrb(0),
      Q => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(0),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => addrb(1),
      Q => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(1),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => addrb(2),
      Q => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(2),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => addrb(3),
      Q => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(3),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clkb,
      CE => enb,
      D => addrb(4),
      Q => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_\(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper : entity is "blk_mem_gen_prim_wrapper";
end system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized0\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized0\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized0\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized0\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized1\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized1\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized1\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized1\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized10\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized10\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized10\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized10\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized11\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized11\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized11\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized11\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized12\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized12\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized12\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized12\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized13\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized13\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized13\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized13\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized14\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized14\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized14\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized14\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized15\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized15\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized15\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized15\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized16\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized16\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized16\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized16\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized17\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized17\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized17\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized17\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized2\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized2\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized2\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized2\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized3\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized3\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized3\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized3\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized4\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized4\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized4\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized4\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized5\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized5\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized5\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized5\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized6\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized6\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized6\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized6\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized7\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized7\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized7\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized7\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized8\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized8\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized8\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized8\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized9\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized9\ : entity is "blk_mem_gen_prim_wrapper";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized9\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized9\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 8) => B"000000000000000000000000",
      DIBDI(7 downto 0) => dinb(7 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta_array(7 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => doutb_array(7 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_88\,
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_92\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => web(0),
      WEBWE(2) => web(0),
      WEBWE(1) => web(0),
      WEBWE(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2_DispProcTest is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    img_out_rsc_wadr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    img_out_rsc_d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    img_out_rsc_we : out STD_LOGIC;
    img_out_triosy_lz : out STD_LOGIC
  );
  attribute DESIGN_IS_RTL : string;
  attribute DESIGN_IS_RTL of system_HDMI_proc_0_2_DispProcTest : entity is "NO";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMI_proc_0_2_DispProcTest : entity is "DispProcTest";
end system_HDMI_proc_0_2_DispProcTest;

architecture STRUCTURE of system_HDMI_proc_0_2_DispProcTest is
begin
DispProcTest_core_inst: entity work.system_HDMI_proc_0_2_DispProcTest_core_0
     port map (
      p_clk => clk,
      p_img_out_rsc_we => img_out_rsc_we,
      p_img_out_triosy_lz => img_out_triosy_lz,
      p_nbus_img_out_rsc_d(7 downto 0) => img_out_rsc_d(7 downto 0),
      p_nbus_img_out_rsc_wadr(16 downto 15) => img_out_rsc_wadr(7 downto 6),
      p_nbus_img_out_rsc_wadr(14 downto 6) => img_out_rsc_wadr(16 downto 8),
      p_nbus_img_out_rsc_wadr(5 downto 0) => img_out_rsc_wadr(5 downto 0),
      p_rst => rst,
      px246 => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width;

architecture STRUCTURE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width is
begin
\prim_noinit.ram\: entity work.system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized0\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized0\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized1\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized1\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized10\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized10\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized10\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized10\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized10\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized11\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized11\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized11\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized11\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized11\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized12\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized12\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized12\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized12\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized12\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized13\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized13\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized13\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized13\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized13\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized14\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized14\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized14\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized14\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized14\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized15\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized15\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized15\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized15\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized15\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized16\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized16\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized16\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized16\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized16\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized17\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized17\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized17\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized17\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized17\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized2\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized2\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized3\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized3\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized3\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized3\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized3\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized4\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized4\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized4\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized4\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized4\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized5\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized5\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized5\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized5\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized5\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized6\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized6\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized6\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized6\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized6\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized7\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized7\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized7\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized7\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized7\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized8\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized8\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized8\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized8\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized8\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized9\ is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb_array : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized9\ : entity is "blk_mem_gen_prim_width";
end \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized9\;

architecture STRUCTURE of \system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized9\ is
begin
\prim_noinit.ram\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_wrapper__parameterized9\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_generic_cstr is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_generic_cstr;

architecture STRUCTURE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_generic_cstr is
  signal douta_array : STD_LOGIC_VECTOR ( 151 downto 0 );
  signal doutb_array : STD_LOGIC_VECTOR ( 151 downto 0 );
  signal ena_array : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal enb_array : STD_LOGIC_VECTOR ( 18 downto 0 );
begin
\bindec_a.bindec_inst_a\: entity work.system_HDMI_proc_0_2_mem2p_76800_8_bindec
     port map (
      addra(4 downto 0) => addra(16 downto 12),
      ena => ena,
      ena_array(18 downto 0) => ena_array(18 downto 0)
    );
\bindec_b.bindec_inst_b\: entity work.system_HDMI_proc_0_2_mem2p_76800_8_bindec_0
     port map (
      addrb(4 downto 0) => addrb(16 downto 12),
      enb => enb,
      enb_array(18 downto 0) => enb_array(18 downto 0)
    );
\has_mux_a.A\: entity work.system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_mux
     port map (
      addra(4 downto 0) => addra(16 downto 12),
      clka => clka,
      douta(7 downto 0) => douta(7 downto 0),
      douta_array(151 downto 0) => douta_array(151 downto 0),
      ena => ena
    );
\has_mux_b.B\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_mux__parameterized0\
     port map (
      addrb(4 downto 0) => addrb(16 downto 12),
      clkb => clkb,
      doutb(7 downto 0) => doutb(7 downto 0),
      doutb_array(151 downto 0) => doutb_array(151 downto 0),
      enb => enb
    );
\ramloop[0].ram.r\: entity work.system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(7 downto 0),
      doutb_array(7 downto 0) => doutb_array(7 downto 0),
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[10].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized9\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(87 downto 80),
      doutb_array(7 downto 0) => doutb_array(87 downto 80),
      ena_array(0) => ena_array(10),
      enb_array(0) => enb_array(10),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[11].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized10\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(95 downto 88),
      doutb_array(7 downto 0) => doutb_array(95 downto 88),
      ena_array(0) => ena_array(11),
      enb_array(0) => enb_array(11),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[12].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized11\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(103 downto 96),
      doutb_array(7 downto 0) => doutb_array(103 downto 96),
      ena_array(0) => ena_array(12),
      enb_array(0) => enb_array(12),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[13].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized12\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(111 downto 104),
      doutb_array(7 downto 0) => doutb_array(111 downto 104),
      ena_array(0) => ena_array(13),
      enb_array(0) => enb_array(13),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[14].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized13\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(119 downto 112),
      doutb_array(7 downto 0) => doutb_array(119 downto 112),
      ena_array(0) => ena_array(14),
      enb_array(0) => enb_array(14),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[15].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized14\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(127 downto 120),
      doutb_array(7 downto 0) => doutb_array(127 downto 120),
      ena_array(0) => ena_array(15),
      enb_array(0) => enb_array(15),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[16].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized15\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(135 downto 128),
      doutb_array(7 downto 0) => doutb_array(135 downto 128),
      ena_array(0) => ena_array(16),
      enb_array(0) => enb_array(16),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[17].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized16\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(143 downto 136),
      doutb_array(7 downto 0) => doutb_array(143 downto 136),
      ena_array(0) => ena_array(17),
      enb_array(0) => enb_array(17),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[18].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized17\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(151 downto 144),
      doutb_array(7 downto 0) => doutb_array(151 downto 144),
      ena_array(0) => ena_array(18),
      enb_array(0) => enb_array(18),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[1].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized0\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(15 downto 8),
      doutb_array(7 downto 0) => doutb_array(15 downto 8),
      ena_array(0) => ena_array(1),
      enb_array(0) => enb_array(1),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[2].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized1\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(23 downto 16),
      doutb_array(7 downto 0) => doutb_array(23 downto 16),
      ena_array(0) => ena_array(2),
      enb_array(0) => enb_array(2),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[3].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized2\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(31 downto 24),
      doutb_array(7 downto 0) => doutb_array(31 downto 24),
      ena_array(0) => ena_array(3),
      enb_array(0) => enb_array(3),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[4].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized3\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(39 downto 32),
      doutb_array(7 downto 0) => doutb_array(39 downto 32),
      ena_array(0) => ena_array(4),
      enb_array(0) => enb_array(4),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[5].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized4\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(47 downto 40),
      doutb_array(7 downto 0) => doutb_array(47 downto 40),
      ena_array(0) => ena_array(5),
      enb_array(0) => enb_array(5),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[6].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized5\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(55 downto 48),
      doutb_array(7 downto 0) => doutb_array(55 downto 48),
      ena_array(0) => ena_array(6),
      enb_array(0) => enb_array(6),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[7].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized6\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(63 downto 56),
      doutb_array(7 downto 0) => doutb_array(63 downto 56),
      ena_array(0) => ena_array(7),
      enb_array(0) => enb_array(7),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[8].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized7\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(71 downto 64),
      doutb_array(7 downto 0) => doutb_array(71 downto 64),
      ena_array(0) => ena_array(8),
      enb_array(0) => enb_array(8),
      wea(0) => wea(0),
      web(0) => web(0)
    );
\ramloop[9].ram.r\: entity work.\system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_prim_width__parameterized8\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta_array(7 downto 0) => douta_array(79 downto 72),
      doutb_array(7 downto 0) => doutb_array(79 downto 72),
      ena_array(0) => ena_array(9),
      enb_array(0) => enb_array(9),
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_top is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_top : entity is "blk_mem_gen_top";
end system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_top;

architecture STRUCTURE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_top is
begin
\valid.cstr\: entity work.system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_generic_cstr
     port map (
      addra(16 downto 0) => addra(16 downto 0),
      addrb(16 downto 0) => addrb(16 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6_synth is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6_synth : entity is "blk_mem_gen_v8_3_6_synth";
end system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6_synth;

architecture STRUCTURE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_top
     port map (
      addra(16 downto 0) => addra(16 downto 0),
      addrb(16 downto 0) => addrb(16 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    dbiterr : out STD_LOGIC;
    deepsleep : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    regcea : in STD_LOGIC;
    regceb : in STD_LOGIC;
    rsta : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb : in STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    shutdown : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rdaddrecc : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 17;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 17;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "19";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "Estimated Power for IP     :     5.0714 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "mem2p_76800_8.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 2;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 76800;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 76800;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 76800;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 76800;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "zynq";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "blk_mem_gen_v8_3_6";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 : entity is "yes";
end system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6;

architecture STRUCTURE of system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  rdaddrecc(16) <= \<const0>\;
  rdaddrecc(15) <= \<const0>\;
  rdaddrecc(14) <= \<const0>\;
  rdaddrecc(13) <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(16) <= \<const0>\;
  s_axi_rdaddrecc(15) <= \<const0>\;
  s_axi_rdaddrecc(14) <= \<const0>\;
  s_axi_rdaddrecc(13) <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6_synth
     port map (
      addra(16 downto 0) => addra(16 downto 0),
      addrb(16 downto 0) => addrb(16 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2_mem2p_76800_8 is
  port (
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_HDMI_proc_0_2_mem2p_76800_8 : entity is "mem2p_76800_8,blk_mem_gen_v8_3_6,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMI_proc_0_2_mem2p_76800_8 : entity is "mem2p_76800_8";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_HDMI_proc_0_2_mem2p_76800_8 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_HDMI_proc_0_2_mem2p_76800_8 : entity is "blk_mem_gen_v8_3_6,Vivado 2017.1";
end system_HDMI_proc_0_2_mem2p_76800_8;

architecture STRUCTURE of system_HDMI_proc_0_2_mem2p_76800_8 is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 17;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 17;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "19";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     5.0714 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "mem2p_76800_8.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 2;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 76800;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 76800;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 8;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 8;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 76800;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 76800;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 8;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 8;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_info of clkb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK";
  attribute x_interface_info of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of enb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB EN";
  attribute x_interface_info of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
  attribute x_interface_info of web : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB WE";
begin
U0: entity work.system_HDMI_proc_0_2_mem2p_76800_8_blk_mem_gen_v8_3_6
     port map (
      addra(16 downto 0) => addra(16 downto 0),
      addrb(16 downto 0) => addrb(16 downto 0),
      clka => clka,
      clkb => clkb,
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(7 downto 0) => dina(7 downto 0),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(7 downto 0) => doutb(7 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => enb,
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(16 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(16 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(16 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(16 downto 0),
      s_axi_rdata(7 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(7 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(7 downto 0) => B"00000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => wea(0),
      web(0) => web(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2_HDMI_RAM is
  port (
    clk_display : in STD_LOGIC;
    clk_hdmi : in STD_LOGIC;
    clk_proc : out STD_LOGIC;
    hdmi_TMDS_Clk_n : out STD_LOGIC;
    hdmi_TMDS_Clk_p : out STD_LOGIC;
    \proc_display_mem_ctl[en]\ : in STD_LOGIC;
    \proc_display_mem_ctl[we]\ : in STD_LOGIC;
    hdmi_TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \proc_display_mem_ctl[addr]\ : in STD_LOGIC_VECTOR ( 21 downto 0 );
    proc_display_mem_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    push : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMI_proc_0_2_HDMI_RAM : entity is "HDMI_RAM";
  attribute display_canal_n : integer;
  attribute display_canal_n of system_HDMI_proc_0_2_HDMI_RAM : entity is 1;
  attribute display_data_n : integer;
  attribute display_data_n of system_HDMI_proc_0_2_HDMI_RAM : entity is 8;
  attribute display_image_size : string;
  attribute display_image_size of system_HDMI_proc_0_2_HDMI_RAM : entity is "64'b0000000000000000000000010100000000000000000000000000000011110000";
end system_HDMI_proc_0_2_HDMI_RAM;

architecture STRUCTURE of system_HDMI_proc_0_2_HDMI_RAM is
  signal \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_0\ : STD_LOGIC;
  signal \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_1\ : STD_LOGIC;
  signal \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_2\ : STD_LOGIC;
  signal \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_3\ : STD_LOGIC;
  signal \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_4\ : STD_LOGIC;
  signal \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_5\ : STD_LOGIC;
  signal \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_6\ : STD_LOGIC;
  signal \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_7\ : STD_LOGIC;
  signal \VGA_r/n_reg\ : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal \VGA_r/n_reg_n_0_\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \VGA_r/rst\ : STD_LOGIC;
  signal \VGA_r/rst0_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \VGA_r/vga_mem_rd/C_Sync/andv\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_4\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_5\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_6\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_7\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_4\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_5\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_6\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_7\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_4\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_5\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_6\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_7\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_6\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_7\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_4\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_5\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_6\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_7\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ok1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/p_0_in\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/p_0_in2_in\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/p_0_in8_in\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/p_1_in3_in\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/p_1_in9_in\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\ : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\ : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[active]0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[active_n_0_]\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/C_Sync/v[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \VGA_r/vga_mem_rd/C_Sync/v[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[0]3_carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/divOp[1]3_carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0__23_carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0__23_carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0__23_carry_n_5\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0__23_carry_n_6\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0__23_carry_n_7\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry__0_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry__0_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry__0_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry__0_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry__0_n_4\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry__0_n_5\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry__0_n_6\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry__0_n_7\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry__1_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry__1_n_6\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry__1_n_7\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry_n_1\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry_n_2\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry_n_3\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry_n_4\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry_n_5\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry_n_6\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/index0_carry_n_7\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_20_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_21_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_22_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_4_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/sync[Hsync]\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/sync[Vsync]\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/sync[c][0]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \VGA_r/vga_mem_rd/sync[c][1]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \VGA_r/vga_mem_rd/v[0]\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \VGA_r/vga_mem_rd/v[0]__0\ : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \VGA_r/vga_mem_rd/v[1]\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \VGA_r/vga_mem_rd/vga_q_q_reg[sync][active_n_0_]\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][0]_srl2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][1]_srl2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][2]_srl2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][3]_srl2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][4]_srl2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][0]_srl2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][1]_srl2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][2]_srl2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][3]_srl2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][4]_srl2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][5]_srl2_n_0\ : STD_LOGIC;
  signal \VGA_r/vga_mem_rd/vga_q_reg[sync][active_n_0_]\ : STD_LOGIC;
  signal \^clk_display\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_7__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_10__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_10__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_10_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_11__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_11__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_11_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_12__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_12__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_12_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_13_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_6__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_7__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_8__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_8__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_9__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_9__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_9_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry_i_1_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry_i_2_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry_i_3_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry_i_4_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry_i_5_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry_i_6_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry_i_7_n_0\ : STD_LOGIC;
  signal \divOp[0]3_carry_i_8_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry_i_1_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry_i_2_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry_i_3_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry_i_4_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry_i_5_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry_i_6_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry_i_7_n_0\ : STD_LOGIC;
  signal \divOp[1]3_carry_i_8_n_0\ : STD_LOGIC;
  signal \geqOp0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \geqOp0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal geqOp0_carry_i_1_n_0 : STD_LOGIC;
  signal geqOp0_carry_i_2_n_0 : STD_LOGIC;
  signal geqOp0_carry_i_3_n_0 : STD_LOGIC;
  signal geqOp0_carry_i_4_n_0 : STD_LOGIC;
  signal geqOp0_carry_i_5_n_0 : STD_LOGIC;
  signal geqOp0_carry_i_6_n_0 : STD_LOGIC;
  signal geqOp0_carry_i_7_n_0 : STD_LOGIC;
  signal geqOp0_carry_i_8_n_0 : STD_LOGIC;
  signal \hdmi/ClockSerializer/I\ : STD_LOGIC;
  signal \hdmi/ClockSerializer/SHIFTIN1\ : STD_LOGIC;
  signal \hdmi/ClockSerializer/SHIFTIN2\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/cnt_t_2\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_3_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \hdmi/DataEncoders[0].DataEncoder/n1q_m_1\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \hdmi/DataEncoders[0].DataEncoder/pC0_1_reg_srl6_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/pC0_2\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/pC1_1_reg_srl6_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/pC1_2\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \hdmi/DataEncoders[0].DataEncoder/p_0_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/p_0_in0_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/p_0_in10_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/p_0_in2_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/p_0_in4_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/p_0_in5_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/p_0_in6_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/p_0_in7_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/p_0_in8_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/p_0_in9_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/p_1_in12_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \hdmi/DataEncoders[0].DataEncoder/q_out_2\ : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal \hdmi/DataEncoders[0].DataEncoder/sum_bits__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \hdmi/DataEncoders[0].DataSerializer/I\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataSerializer/SHIFTIN1\ : STD_LOGIC;
  signal \hdmi/DataEncoders[0].DataSerializer/SHIFTIN2\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/cnt_t_2\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_3_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \hdmi/DataEncoders[1].DataEncoder/n1q_m_1\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \hdmi/DataEncoders[1].DataEncoder/p_0_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/p_0_in0_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/p_0_in10_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/p_0_in2_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/p_0_in4_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/p_0_in5_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/p_0_in6_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/p_0_in7_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/p_0_in8_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/p_0_in9_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/p_1_in12_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \hdmi/DataEncoders[1].DataEncoder/q_out_2\ : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal \hdmi/DataEncoders[1].DataEncoder/sum_bits__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \hdmi/DataEncoders[1].DataSerializer/I\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataSerializer/SHIFTIN1\ : STD_LOGIC;
  signal \hdmi/DataEncoders[1].DataSerializer/SHIFTIN2\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/cnt_t_2\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_3_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \hdmi/DataEncoders[2].DataEncoder/n1q_m_1\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/pVde_2\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/p_0_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/p_0_in0_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/p_0_in10_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/p_0_in2_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/p_0_in4_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/p_0_in5_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/p_0_in6_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/p_0_in7_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/p_0_in8_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/p_0_in9_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/p_1_in12_in\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \hdmi/DataEncoders[2].DataEncoder/q_out_2\ : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal \hdmi/DataEncoders[2].DataEncoder/sum_bits__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \hdmi/DataEncoders[2].DataSerializer/I\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataSerializer/SHIFTIN1\ : STD_LOGIC;
  signal \hdmi/DataEncoders[2].DataSerializer/SHIFTIN2\ : STD_LOGIC;
  signal \hdmi/LockLostReset/SyncAsyncx/oSyncStages\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of \hdmi/LockLostReset/SyncAsyncx/oSyncStages\ : signal is "true";
  signal \hdmi/LockLostReset/aRst_int\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \hdmi/LockLostReset/aRst_int\ : signal is "true";
  signal \hdmi/pDataOutRaw[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \hdmi/pDataOutRaw[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \hdmi/pDataOutRaw[2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \index0__23_carry_i_1_n_0\ : STD_LOGIC;
  signal \index0__23_carry_i_2_n_0\ : STD_LOGIC;
  signal \index0__23_carry_i_3_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_14_n_1\ : STD_LOGIC;
  signal \index0_carry__0_i_14_n_2\ : STD_LOGIC;
  signal \index0_carry__0_i_14_n_3\ : STD_LOGIC;
  signal \index0_carry__0_i_14_n_4\ : STD_LOGIC;
  signal \index0_carry__0_i_14_n_5\ : STD_LOGIC;
  signal \index0_carry__0_i_14_n_6\ : STD_LOGIC;
  signal \index0_carry__0_i_14_n_7\ : STD_LOGIC;
  signal \index0_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_20_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_21_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_22_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_23_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \index0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \index0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \index0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal index0_carry_i_10_n_0 : STD_LOGIC;
  signal index0_carry_i_11_n_0 : STD_LOGIC;
  signal index0_carry_i_12_n_0 : STD_LOGIC;
  signal index0_carry_i_1_n_0 : STD_LOGIC;
  signal index0_carry_i_4_n_0 : STD_LOGIC;
  signal index0_carry_i_5_n_0 : STD_LOGIC;
  signal index0_carry_i_6_n_0 : STD_LOGIC;
  signal index0_carry_i_7_n_0 : STD_LOGIC;
  signal index0_carry_i_8_n_0 : STD_LOGIC;
  signal index0_carry_i_9_n_0 : STD_LOGIC;
  signal ltOp0_carry_i_1_n_0 : STD_LOGIC;
  signal ltOp0_carry_i_2_n_0 : STD_LOGIC;
  signal ltOp0_carry_i_3_n_0 : STD_LOGIC;
  signal ltOp0_carry_i_4_n_0 : STD_LOGIC;
  signal ltOp0_carry_i_5_n_0 : STD_LOGIC;
  signal ltOp0_carry_i_6_n_0 : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_10_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_11_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_12_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_13_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_14_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_15_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_16_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_17_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_19_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_2\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_3\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_5\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_6\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_7\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_1\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_2\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_3\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_4\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_24_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_25_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_26_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_27_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_28_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_29_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_1\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_2\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_3\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_4\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_5\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_6\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_7\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_30_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_31_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_1\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_2\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_3\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_4\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_33_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_34_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_35_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_1\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_2\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_3\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_4\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_5\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_6\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_7\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_37_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_38_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_39_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_1\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_2\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_3\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_4\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_5\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_6\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_40_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_41_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_42_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_43_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_44_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_45_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_46_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_47_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_48_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_49_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_50_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_51_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_52_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_53_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_54_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_55_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_56_n_0\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_57_n_7\ : STD_LOGIC;
  signal \mem2p_76800_8_g.mem2p_76800_8_i_i_58_n_0\ : STD_LOGIC;
  signal \minusOp[0]_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp[0]_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp[0]_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp[0]_carry_i_1_n_0\ : STD_LOGIC;
  signal \minusOp[0]_carry_i_2_n_0\ : STD_LOGIC;
  signal \minusOp[0]_carry_i_3_n_0\ : STD_LOGIC;
  signal \minusOp[0]_carry_i_4_n_0\ : STD_LOGIC;
  signal \minusOp[1]_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \minusOp[1]_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \minusOp[1]_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \minusOp[1]_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \minusOp[1]_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \minusOp[1]_carry_i_1_n_0\ : STD_LOGIC;
  signal \minusOp[1]_carry_i_2_n_0\ : STD_LOGIC;
  signal \minusOp[1]_carry_i_3_n_0\ : STD_LOGIC;
  signal \minusOp[1]_carry_i_4_n_0\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_2_n_0\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_3_n_0\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_4_n_0\ : STD_LOGIC;
  signal \n0q_m_2[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[2]_i_1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_2_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_3_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_4_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_5_n_0\ : STD_LOGIC;
  signal \n1q_m_2[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[0]_i_1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_i_3_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_i_4_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_rep_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_rep_i_1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_3_n_0\ : STD_LOGIC;
  signal \n[0]_i_1_n_0\ : STD_LOGIC;
  signal \n[1]_i_1_n_0\ : STD_LOGIC;
  signal \n[2]_i_1_n_0\ : STD_LOGIC;
  signal \n[3]_i_1_n_0\ : STD_LOGIC;
  signal \n[4]_i_1_n_0\ : STD_LOGIC;
  signal \n[5]_i_1_n_0\ : STD_LOGIC;
  signal \ok1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal ok1_carry_i_1_n_0 : STD_LOGIC;
  signal ok1_carry_i_2_n_0 : STD_LOGIC;
  signal ok1_carry_i_3_n_0 : STD_LOGIC;
  signal ok1_carry_i_4_n_0 : STD_LOGIC;
  signal ok1_carry_i_5_n_0 : STD_LOGIC;
  signal ok1_carry_i_6_n_0 : STD_LOGIC;
  signal \pDataOutRaw[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[0]_i_1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[1]_i_1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[3]_i_1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[5]_i_1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[6]_i_2_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[7]_i_1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[7]_i_2_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[9]_i_1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[9]_i_2__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[9]_i_2_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[9]_i_3_n_0\ : STD_LOGIC;
  signal \q_m_2[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \q_m_2[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \q_m_2[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[5]_i_1_n_0\ : STD_LOGIC;
  signal \q_m_2[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \q_m_2[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \q_m_2[5]_i_2_n_0\ : STD_LOGIC;
  signal \q_m_2[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[8]_i_1_n_0\ : STD_LOGIC;
  signal \sync[Hsync]_i_1_n_0\ : STD_LOGIC;
  signal \sync[Hsync]_i_4_n_0\ : STD_LOGIC;
  signal \sync[Hsync]_i_5_n_0\ : STD_LOGIC;
  signal \sync[Hsync]_i_6_n_0\ : STD_LOGIC;
  signal \sync[Hsync]_i_7_n_0\ : STD_LOGIC;
  signal \sync[Hsync]_i_8_n_0\ : STD_LOGIC;
  signal \sync[c][1][0]_i_1_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][4]_i_3_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][4]_i_4_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][4]_i_5_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][4]_i_6_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][5]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][5]_rep_i_1_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][8]_i_3_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][8]_i_4_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][8]_i_5_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][8]_i_6_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][8]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][8]_rep_i_1_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][9]_i_3_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][9]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \sync_c_q[0][9]_rep_i_1_n_0\ : STD_LOGIC;
  signal \sync_c_q[1][4]_i_3_n_0\ : STD_LOGIC;
  signal \sync_c_q[1][4]_i_4_n_0\ : STD_LOGIC;
  signal \sync_c_q[1][4]_i_5_n_0\ : STD_LOGIC;
  signal \sync_c_q[1][4]_i_6_n_0\ : STD_LOGIC;
  signal \sync_c_q[1][8]_i_3_n_0\ : STD_LOGIC;
  signal \sync_c_q[1][8]_i_4_n_0\ : STD_LOGIC;
  signal \sync_c_q[1][8]_i_5_n_0\ : STD_LOGIC;
  signal \sync_c_q[1][8]_i_6_n_0\ : STD_LOGIC;
  signal \sync_c_q[1][9]_i_3_n_0\ : STD_LOGIC;
  signal \sync_c_q_reg[0][4]_i_2_n_0\ : STD_LOGIC;
  signal \sync_c_q_reg[0][4]_i_2_n_1\ : STD_LOGIC;
  signal \sync_c_q_reg[0][4]_i_2_n_2\ : STD_LOGIC;
  signal \sync_c_q_reg[0][4]_i_2_n_3\ : STD_LOGIC;
  signal \sync_c_q_reg[0][8]_i_2_n_0\ : STD_LOGIC;
  signal \sync_c_q_reg[0][8]_i_2_n_1\ : STD_LOGIC;
  signal \sync_c_q_reg[0][8]_i_2_n_2\ : STD_LOGIC;
  signal \sync_c_q_reg[0][8]_i_2_n_3\ : STD_LOGIC;
  signal \sync_c_q_reg[0][9]_i_2_n_6\ : STD_LOGIC;
  signal \sync_c_q_reg[1][4]_i_2_n_0\ : STD_LOGIC;
  signal \sync_c_q_reg[1][4]_i_2_n_1\ : STD_LOGIC;
  signal \sync_c_q_reg[1][4]_i_2_n_2\ : STD_LOGIC;
  signal \sync_c_q_reg[1][4]_i_2_n_3\ : STD_LOGIC;
  signal \sync_c_q_reg[1][8]_i_2_n_0\ : STD_LOGIC;
  signal \sync_c_q_reg[1][8]_i_2_n_1\ : STD_LOGIC;
  signal \sync_c_q_reg[1][8]_i_2_n_2\ : STD_LOGIC;
  signal \sync_c_q_reg[1][8]_i_2_n_3\ : STD_LOGIC;
  signal \sync_c_q_reg[1][9]_i_2_n_6\ : STD_LOGIC;
  signal \sync_reg[Hsync]_i_3_n_2\ : STD_LOGIC;
  signal \sync_reg[Hsync]_i_3_n_3\ : STD_LOGIC;
  signal \vga_dbg[data][0][7]_i_2_n_0\ : STD_LOGIC;
  signal \vga_dbg[data][0][7]_i_3_n_0\ : STD_LOGIC;
  signal \vga_dbg[data][1][7]_i_2_n_0\ : STD_LOGIC;
  signal \vga_dbg[data][1][7]_i_3_n_0\ : STD_LOGIC;
  signal \vga_dbg_reg[data_n_0_][0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \vga_dbg_reg[data_n_0_][1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \vga_dbg_reg[data_n_0_][2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \vga_mire_data[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \vga_mire_data[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \vga_mire_data[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \vga_out[data][2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \vga_out[sync][active]\ : STD_LOGIC;
  signal \vga_out[sync][c][0]\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \vga_out[sync][c][1]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \vga_q_q[data][0][7]_i_1_n_0\ : STD_LOGIC;
  signal vid_pData : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/ok1_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/ok1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/ok1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/divOp[0]3_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/divOp[0]3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/divOp[0]3_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/divOp[0]3_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/divOp[1]3_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/divOp[1]3_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/divOp[1]3_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/divOp[1]3_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_VGA_r/vga_mem_rd/index0__23_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_VGA_r/vga_mem_rd/index0__23_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_VGA_r/vga_mem_rd/index0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_VGA_r/vga_mem_rd/index0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_hdmi/ClockSerializer/SerializerMaster_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/ClockSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/ClockSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/ClockSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/ClockSerializer/SerializerMaster_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/ClockSerializer/SerializerMaster_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/ClockSerializer/SerializerSlave_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/ClockSerializer/SerializerSlave_OQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/ClockSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/ClockSerializer/SerializerSlave_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/ClockSerializer/SerializerSlave_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_OQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_OQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_OFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_OQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_TFB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_TQ_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_index0_carry__0_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_57_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_57_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sync_c_q_reg[0][9]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sync_c_q_reg[0][9]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sync_c_q_reg[1][9]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sync_c_q_reg[1][9]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sync_reg[Hsync]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sync_reg[Hsync]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute syn_black_box : string;
  attribute syn_black_box of \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i\ : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i\ : label is "blk_mem_gen_v8_3_6,Vivado 2017.1";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]\ : label is "sync_c_q_reg[0][5]";
  attribute IS_FANOUT_CONSTRAINED : integer;
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep\ : label is "sync_c_q_reg[0][5]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0\ : label is "sync_c_q_reg[0][5]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]\ : label is "sync_c_q_reg[0][8]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep\ : label is "sync_c_q_reg[0][8]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0\ : label is "sync_c_q_reg[0][8]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]\ : label is "sync_c_q_reg[0][9]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep\ : label is "sync_c_q_reg[0][9]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0\ : label is "sync_c_q_reg[0][9]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]\ : label is "sync_reg[c][0][1]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep\ : label is "sync_reg[c][0][1]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]\ : label is "sync_reg[c][0][2]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep\ : label is "sync_reg[c][0][2]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]\ : label is "sync_reg[c][0][31]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep\ : label is "sync_reg[c][0][31]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0\ : label is "sync_reg[c][0][31]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1\ : label is "sync_reg[c][0][31]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2\ : label is "sync_reg[c][0][31]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]\ : label is "sync_reg[c][0][3]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep\ : label is "sync_reg[c][0][3]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]\ : label is "sync_reg[c][0][4]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep\ : label is "sync_reg[c][0][4]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]\ : label is "sync_reg[c][1][1]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep\ : label is "sync_reg[c][1][1]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0\ : label is "sync_reg[c][1][1]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]\ : label is "sync_reg[c][1][2]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep\ : label is "sync_reg[c][1][2]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]\ : label is "sync_reg[c][1][31]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep\ : label is "sync_reg[c][1][31]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0\ : label is "sync_reg[c][1][31]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1\ : label is "sync_reg[c][1][31]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2\ : label is "sync_reg[c][1][31]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]\ : label is "sync_reg[c][1][3]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep\ : label is "sync_reg[c][1][3]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]\ : label is "sync_reg[c][1][4]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep\ : label is "sync_reg[c][1][4]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]\ : label is "sync_reg[c][1][5]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep\ : label is "sync_reg[c][1][5]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]\ : label is "sync_reg[c][1][6]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep\ : label is "sync_reg[c][1][6]";
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/vga_out_reg[sync][active]\ : label is "vga_out_reg[sync][active]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep\ : label is "vga_out_reg[sync][active]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0\ : label is "vga_out_reg[sync][active]";
  attribute IS_FANOUT_CONSTRAINED of \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1\ : label is 1;
  attribute ORIG_CELL_NAME of \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1\ : label is "vga_out_reg[sync][active]";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][0]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0] ";
  attribute srl_name : string;
  attribute srl_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][0]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][0]_srl2 ";
  attribute srl_bus_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][1]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0] ";
  attribute srl_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][1]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][1]_srl2 ";
  attribute srl_bus_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][2]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0] ";
  attribute srl_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][2]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][2]_srl2 ";
  attribute srl_bus_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][3]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0] ";
  attribute srl_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][3]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][3]_srl2 ";
  attribute srl_bus_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][4]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0] ";
  attribute srl_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][4]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][4]_srl2 ";
  attribute srl_bus_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][0]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1] ";
  attribute srl_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][0]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][0]_srl2 ";
  attribute srl_bus_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][1]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1] ";
  attribute srl_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][1]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][1]_srl2 ";
  attribute srl_bus_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][2]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1] ";
  attribute srl_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][2]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][2]_srl2 ";
  attribute srl_bus_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][3]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1] ";
  attribute srl_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][3]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][3]_srl2 ";
  attribute srl_bus_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][4]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1] ";
  attribute srl_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][4]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][4]_srl2 ";
  attribute srl_bus_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][5]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1] ";
  attribute srl_name of \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][5]_srl2\ : label is "\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][5]_srl2 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_2__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_2__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_3__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_3__1\ : label is "soft_lutpair22";
  attribute IS_FANOUT_CONSTRAINED of \cnt_t_3[2]_i_4__1\ : label is 1;
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_4\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_4__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_4__1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_5\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_5__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_5__1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_6__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_6__1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_7\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_7__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_7__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_11__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_11__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_12__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_6__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_6__1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_7__1\ : label is "soft_lutpair59";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of \hdmi/ClockSerializer/OutputBuffer\ : label is "DONT_CARE";
  attribute box_type : string;
  attribute box_type of \hdmi/ClockSerializer/OutputBuffer\ : label is "PRIMITIVE";
  attribute box_type of \hdmi/ClockSerializer/SerializerMaster\ : label is "PRIMITIVE";
  attribute box_type of \hdmi/ClockSerializer/SerializerSlave\ : label is "PRIMITIVE";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]\ : label is "n0q_m_2_reg[1]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep\ : label is "n0q_m_2_reg[1]";
  attribute SOFT_HLUTNM of \hdmi/DataEncoders[0].DataEncoder/n1d_1[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4\ : label is "soft_lutpair7";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]\ : label is "n1q_m_2_reg[1]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep\ : label is "n1q_m_2_reg[1]";
  attribute srl_bus_name of \hdmi/DataEncoders[0].DataEncoder/pC0_1_reg_srl6\ : label is "\hdmi/DataEncoders ";
  attribute srl_name of \hdmi/DataEncoders[0].DataEncoder/pC0_1_reg_srl6\ : label is "\hdmi/DataEncoders[0].DataEncoder/pC0_1_reg_srl6 ";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/pC0_2_reg\ : label is "pC0_2_reg";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep\ : label is "pC0_2_reg";
  attribute srl_bus_name of \hdmi/DataEncoders[0].DataEncoder/pC1_1_reg_srl6\ : label is "\hdmi/DataEncoders ";
  attribute srl_name of \hdmi/DataEncoders[0].DataEncoder/pC1_1_reg_srl6\ : label is "\hdmi/DataEncoders[0].DataEncoder/pC1_1_reg_srl6 ";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/pC1_2_reg\ : label is "pC1_2_reg";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep\ : label is "pC1_2_reg";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]\ : label is "pDataOut_1_reg[0]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep\ : label is "pDataOut_1_reg[0]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0\ : label is "pDataOut_1_reg[0]";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]\ : label is "pDataOut_1_reg[1]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep\ : label is "pDataOut_1_reg[1]";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]\ : label is "pDataOut_1_reg[3]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep\ : label is "pDataOut_1_reg[3]";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]\ : label is "pDataOut_1_reg[6]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep\ : label is "pDataOut_1_reg[6]";
  attribute CAPACITANCE of \hdmi/DataEncoders[0].DataSerializer/OutputBuffer\ : label is "DONT_CARE";
  attribute box_type of \hdmi/DataEncoders[0].DataSerializer/OutputBuffer\ : label is "PRIMITIVE";
  attribute box_type of \hdmi/DataEncoders[0].DataSerializer/SerializerMaster\ : label is "PRIMITIVE";
  attribute box_type of \hdmi/DataEncoders[0].DataSerializer/SerializerSlave\ : label is "PRIMITIVE";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]\ : label is "n0q_m_2_reg[1]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep\ : label is "n0q_m_2_reg[1]";
  attribute SOFT_HLUTNM of \hdmi/DataEncoders[1].DataEncoder/n1d_1[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4\ : label is "soft_lutpair9";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]\ : label is "n1q_m_2_reg[1]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep\ : label is "n1q_m_2_reg[1]";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]\ : label is "pDataOut_1_reg[0]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep\ : label is "pDataOut_1_reg[0]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0\ : label is "pDataOut_1_reg[0]";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]\ : label is "pDataOut_1_reg[1]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep\ : label is "pDataOut_1_reg[1]";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]\ : label is "pDataOut_1_reg[3]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep\ : label is "pDataOut_1_reg[3]";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]\ : label is "pDataOut_1_reg[6]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep\ : label is "pDataOut_1_reg[6]";
  attribute CAPACITANCE of \hdmi/DataEncoders[1].DataSerializer/OutputBuffer\ : label is "DONT_CARE";
  attribute box_type of \hdmi/DataEncoders[1].DataSerializer/OutputBuffer\ : label is "PRIMITIVE";
  attribute box_type of \hdmi/DataEncoders[1].DataSerializer/SerializerMaster\ : label is "PRIMITIVE";
  attribute box_type of \hdmi/DataEncoders[1].DataSerializer/SerializerSlave\ : label is "PRIMITIVE";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]\ : label is "n0q_m_2_reg[1]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep\ : label is "n0q_m_2_reg[1]";
  attribute SOFT_HLUTNM of \hdmi/DataEncoders[2].DataEncoder/n1d_1[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4\ : label is "soft_lutpair11";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]\ : label is "n1q_m_2_reg[1]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep\ : label is "n1q_m_2_reg[1]";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]\ : label is "pDataOut_1_reg[0]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep\ : label is "pDataOut_1_reg[0]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0\ : label is "pDataOut_1_reg[0]";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]\ : label is "pDataOut_1_reg[1]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep\ : label is "pDataOut_1_reg[1]";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]\ : label is "pDataOut_1_reg[3]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep\ : label is "pDataOut_1_reg[3]";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]\ : label is "pDataOut_1_reg[6]";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep\ : label is "pDataOut_1_reg[6]";
  attribute srl_bus_name of \hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3\ : label is "\hdmi/DataEncoders ";
  attribute srl_name of \hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3\ : label is "\hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3 ";
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg\ : label is "pVde_2_reg";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep\ : label is "pVde_2_reg";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0\ : label is "pVde_2_reg";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1\ : label is "pVde_2_reg";
  attribute IS_FANOUT_CONSTRAINED of \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2\ : label is 1;
  attribute ORIG_CELL_NAME of \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2\ : label is "pVde_2_reg";
  attribute CAPACITANCE of \hdmi/DataEncoders[2].DataSerializer/OutputBuffer\ : label is "DONT_CARE";
  attribute box_type of \hdmi/DataEncoders[2].DataSerializer/OutputBuffer\ : label is "PRIMITIVE";
  attribute box_type of \hdmi/DataEncoders[2].DataSerializer/SerializerMaster\ : label is "PRIMITIVE";
  attribute box_type of \hdmi/DataEncoders[2].DataSerializer/SerializerSlave\ : label is "PRIMITIVE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \hdmi/LockLostReset/SyncAsyncx/oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \hdmi/LockLostReset/SyncAsyncx/oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \hdmi/LockLostReset/SyncAsyncx/oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \hdmi/LockLostReset/SyncAsyncx/oSyncStages_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \index0_carry__0_i_11\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \index0_carry__0_i_17\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mem2p_76800_8_g.mem2p_76800_8_i_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mem2p_76800_8_g.mem2p_76800_8_i_i_30\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mem2p_76800_8_g.mem2p_76800_8_i_i_33\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mem2p_76800_8_g.mem2p_76800_8_i_i_40\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \n0q_m_2[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \n0q_m_2[1]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \n0q_m_2[1]_i_1__1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \n0q_m_2[1]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \n0q_m_2[1]_i_4__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \n0q_m_2[1]_i_4__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \n0q_m_2[3]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \n0q_m_2[3]_i_3__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \n0q_m_2[3]_i_3__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \n0q_m_2[3]_i_4\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \n0q_m_2[3]_i_4__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \n0q_m_2[3]_i_4__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \n0q_m_2[3]_i_5\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \n0q_m_2[3]_i_5__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \n0q_m_2[3]_i_5__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \n1q_m_2[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \n1q_m_2[0]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \n1q_m_2[0]_i_1__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \n1q_m_2[1]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \n1q_m_2[1]_i_2__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \n1q_m_2[1]_i_2__1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \n1q_m_2[1]_i_4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \n1q_m_2[1]_i_4__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \n1q_m_2[1]_i_4__1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \n1q_m_2[2]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \n1q_m_2[2]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \n1q_m_2[2]_i_1__1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_1__1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \n[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \n[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \n[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \n[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pDataOutRaw[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \pDataOutRaw[0]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \pDataOutRaw[0]_i_1__1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \pDataOutRaw[1]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \pDataOutRaw[1]_i_1__1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \pDataOutRaw[2]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pDataOutRaw[2]_i_1__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pDataOutRaw[3]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \pDataOutRaw[3]_i_1__1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \pDataOutRaw[4]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \pDataOutRaw[4]_i_1__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \pDataOutRaw[5]_i_1__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \pDataOutRaw[5]_i_1__1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \pDataOutRaw[6]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \pDataOutRaw[6]_i_1__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pDataOutRaw[6]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \pDataOutRaw[7]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \pDataOutRaw[7]_i_1__1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \pDataOutRaw[8]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pDataOutRaw[8]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \pDataOutRaw[8]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \pDataOutRaw[9]_i_1__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \pDataOutRaw[9]_i_1__1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \pDataOutRaw[9]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \pDataOutRaw[9]_i_2__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \pDataOutRaw[9]_i_2__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \q_m_2[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q_m_2[2]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q_m_2[2]_i_1__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \q_m_2[3]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q_m_2[3]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \q_m_2[3]_i_1__1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \q_m_2[4]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q_m_2[4]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \q_m_2[4]_i_1__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \q_m_2[5]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \q_m_2[5]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \q_m_2[5]_i_1__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \q_m_2[6]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \q_m_2[6]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \q_m_2[6]_i_1__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_1__1\ : label is "soft_lutpair43";
  attribute IS_FANOUT_CONSTRAINED of \q_m_2[8]_i_1\ : label is 1;
  attribute IS_FANOUT_CONSTRAINED of \q_m_2[8]_i_1__0\ : label is 1;
  attribute IS_FANOUT_CONSTRAINED of \q_m_2[8]_i_1__1\ : label is 1;
  attribute SOFT_HLUTNM of \sync_c_q[0][0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sync_c_q[0][1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sync_c_q[1][0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sync_c_q[1][9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \vga_dbg[data][0][7]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \vga_dbg[data][1][7]_i_2\ : label is "soft_lutpair49";
begin
  \^clk_display\ <= clk_display;
  clk_proc <= \^clk_display\;
  led(0) <= 'Z';
  led(1) <= 'Z';
  led(2) <= 'Z';
  led(3) <= 'Z';
LockLostReseti_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => \hdmi/LockLostReset/aRst_int\
    );
\VGA_BLUE_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][2]\(0),
      Q => vid_pData(8),
      R => '0'
    );
\VGA_BLUE_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][2]\(1),
      Q => vid_pData(9),
      R => '0'
    );
\VGA_BLUE_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][2]\(2),
      Q => vid_pData(10),
      R => '0'
    );
\VGA_BLUE_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][2]\(3),
      Q => vid_pData(11),
      R => '0'
    );
\VGA_BLUE_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][2]\(4),
      Q => vid_pData(12),
      R => '0'
    );
\VGA_BLUE_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][2]\(5),
      Q => vid_pData(13),
      R => '0'
    );
\VGA_BLUE_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][2]\(6),
      Q => vid_pData(14),
      R => '0'
    );
\VGA_BLUE_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][2]\(7),
      Q => vid_pData(15),
      R => '0'
    );
\VGA_GREEN_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][1]\(0),
      Q => vid_pData(0),
      R => '0'
    );
\VGA_GREEN_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][1]\(1),
      Q => vid_pData(1),
      R => '0'
    );
\VGA_GREEN_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][1]\(2),
      Q => vid_pData(2),
      R => '0'
    );
\VGA_GREEN_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][1]\(3),
      Q => vid_pData(3),
      R => '0'
    );
\VGA_GREEN_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][1]\(4),
      Q => vid_pData(4),
      R => '0'
    );
\VGA_GREEN_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][1]\(5),
      Q => vid_pData(5),
      R => '0'
    );
\VGA_GREEN_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][1]\(6),
      Q => vid_pData(6),
      R => '0'
    );
\VGA_GREEN_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][1]\(7),
      Q => vid_pData(7),
      R => '0'
    );
\VGA_RED_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][0]\(0),
      Q => vid_pData(16),
      R => '0'
    );
\VGA_RED_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][0]\(1),
      Q => vid_pData(17),
      R => '0'
    );
\VGA_RED_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][0]\(2),
      Q => vid_pData(18),
      R => '0'
    );
\VGA_RED_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][0]\(3),
      Q => vid_pData(19),
      R => '0'
    );
\VGA_RED_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][0]\(4),
      Q => vid_pData(20),
      R => '0'
    );
\VGA_RED_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][0]\(5),
      Q => vid_pData(21),
      R => '0'
    );
\VGA_RED_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][0]\(6),
      Q => vid_pData(22),
      R => '0'
    );
\VGA_RED_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_dbg_reg[data_n_0_][0]\(7),
      Q => vid_pData(23),
      R => '0'
    );
\VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i\: entity work.system_HDMI_proc_0_2_mem2p_76800_8
     port map (
      addra(16 downto 0) => \proc_display_mem_ctl[addr]\(16 downto 0),
      addrb(16) => \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_5\,
      addrb(15) => \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_6\,
      addrb(14) => \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_7\,
      addrb(13) => \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_4\,
      addrb(12) => \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_5\,
      addrb(11) => \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_6\,
      addrb(10) => \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_7\,
      addrb(9) => \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_4\,
      addrb(8) => \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_5\,
      addrb(7) => \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_6\,
      addrb(6) => \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_4_n_0\,
      addrb(5 downto 1) => \VGA_r/vga_mem_rd/v[0]\(5 downto 1),
      addrb(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_10_n_0\,
      clka => \^clk_display\,
      clkb => \^clk_display\,
      dina(7 downto 0) => proc_display_mem_data(7 downto 0),
      dinb(7 downto 0) => B"00000000",
      douta(7) => \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_0\,
      douta(6) => \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_1\,
      douta(5) => \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_2\,
      douta(4) => \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_3\,
      douta(3) => \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_4\,
      douta(2) => \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_5\,
      douta(1) => \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_6\,
      douta(0) => \VGA_r/display_ram/ram/synth.mem2p_syn_inst/mem2p_76800_8_g.mem2p_76800_8_i_n_7\,
      doutb(7 downto 0) => \VGA_r/vga_mem_data\(7 downto 0),
      ena => \proc_display_mem_ctl[en]\,
      enb => \VGA_r/vga_mem_rd/C_Sync/sync_reg[active_n_0_]\,
      wea(0) => \proc_display_mem_ctl[we]\,
      web(0) => '0'
    );
\VGA_r/n_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \VGA_r/rst0_n_0\,
      D => \n[0]_i_1_n_0\,
      Q => \VGA_r/n_reg_n_0_\(0),
      R => '0'
    );
\VGA_r/n_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \VGA_r/rst0_n_0\,
      D => \n[1]_i_1_n_0\,
      Q => \VGA_r/n_reg_n_0_\(1),
      R => '0'
    );
\VGA_r/n_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \VGA_r/rst0_n_0\,
      D => \n[2]_i_1_n_0\,
      Q => \VGA_r/n_reg_n_0_\(2),
      R => '0'
    );
\VGA_r/n_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \VGA_r/rst0_n_0\,
      D => \n[3]_i_1_n_0\,
      Q => \VGA_r/n_reg\(3),
      R => '0'
    );
\VGA_r/n_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \VGA_r/rst0_n_0\,
      D => \n[4]_i_1_n_0\,
      Q => \VGA_r/n_reg\(4),
      R => '0'
    );
\VGA_r/n_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \VGA_r/rst0_n_0\,
      D => \n[5]_i_1_n_0\,
      Q => \VGA_r/n_reg\(5),
      R => '0'
    );
\VGA_r/rst0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => \VGA_r/n_reg\(5),
      I1 => \VGA_r/n_reg\(4),
      I2 => \VGA_r/n_reg\(3),
      O => \VGA_r/rst0_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/geqOp0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_3\,
      CYINIT => '1',
      DI(3) => geqOp0_carry_i_1_n_0,
      DI(2) => geqOp0_carry_i_2_n_0,
      DI(1) => geqOp0_carry_i_3_n_0,
      DI(0) => geqOp0_carry_i_4_n_0,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => geqOp0_carry_i_5_n_0,
      S(2) => geqOp0_carry_i_6_n_0,
      S(1) => geqOp0_carry_i_7_n_0,
      S(0) => geqOp0_carry_i_8_n_0
    );
\VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry_n_0\,
      CO(3 downto 1) => \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \geqOp0_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \geqOp0_carry__0_i_2_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(7),
      DI(2) => \i__carry_i_1_n_0\,
      DI(1) => \i__carry_i_2__2_n_0\,
      DI(0) => \i__carry_i_3__2_n_0\,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_4__1_n_0\,
      S(2) => \i__carry_i_5__2_n_0\,
      S(1) => \i__carry_i_6__2_n_0\,
      S(0) => \i__carry_i_7__1_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry_n_0\,
      CO(3 downto 1) => \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/p_1_in9_in\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry__0_i_1__1_n_0\,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_2__2_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(1),
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_4__0_n_0\,
      S(2) => \i__carry_i_5__0_n_0\,
      S(1) => \i__carry_i_6__0_n_0\,
      S(0) => \i__carry_i_7_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry_n_0\,
      CO(3 downto 1) => \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_2__0_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(5),
      DI(1) => \i__carry_i_2__1_n_0\,
      DI(0) => \i__carry_i_3__1_n_0\,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_4__3_n_0\,
      S(2) => \i__carry_i_5__1_n_0\,
      S(1) => \i__carry_i_6__1_n_0\,
      S(0) => \i__carry_i_7__0_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry_n_0\,
      CO(3 downto 1) => \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/p_1_in3_in\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry__0_i_1__0_n_0\,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_2__1_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/ltOp0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_3\,
      CYINIT => '0',
      DI(3) => ltOp0_carry_i_1_n_0,
      DI(2 downto 1) => B"00",
      DI(0) => ltOp0_carry_i_2_n_0,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => ltOp0_carry_i_3_n_0,
      S(2) => ltOp0_carry_i_4_n_0,
      S(1) => ltOp0_carry_i_5_n_0,
      S(0) => ltOp0_carry_i_6_n_0
    );
\VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry_i_1__3_n_0\,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2__4_n_0\,
      S(2) => \i__carry_i_3__3_n_0\,
      S(1) => \i__carry_i_4__4_n_0\,
      S(0) => \i__carry_i_5__3_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry_n_0\,
      CO(3 downto 1) => \NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry__0_i_1__2_n_0\,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_2_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_CO_UNCONNECTED\(3),
      CO(2) => \VGA_r/vga_mem_rd/C_Sync/p_0_in2_in\,
      CO(1) => \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry_i_1__4_n_0\,
      DI(1) => '0',
      DI(0) => \i__carry_i_2__3_n_0\,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_3__0_n_0\,
      S(1) => \i__carry_i_4__2_n_0\,
      S(0) => \i__carry_i_5__4_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(6 downto 4),
      DI(0) => '0',
      O(3) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_4\,
      O(2) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_5\,
      O(1) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_6\,
      O(0) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_7\,
      S(3) => \minusOp[0]_carry_i_1_n_0\,
      S(2) => \minusOp[0]_carry_i_2_n_0\,
      S(1) => \minusOp[0]_carry_i_3_n_0\,
      S(0) => \minusOp[0]_carry_i_4_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_0\,
      CO(3) => \NLW_VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 1) => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(9 downto 8),
      DI(0) => '0',
      O(3) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_4\,
      O(2) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_5\,
      O(1) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_6\,
      O(0) => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_7\,
      S(3) => '1',
      S(2) => \minusOp[0]_carry__0_i_1_n_0\,
      S(1) => \minusOp[0]_carry__0_i_2_n_0\,
      S(0) => \minusOp[0]_carry__0_i_3_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_3\,
      CYINIT => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(0),
      DI(3 downto 0) => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(4 downto 1),
      O(3) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_4\,
      O(2) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_5\,
      O(1) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_6\,
      O(0) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_7\,
      S(3) => \minusOp[1]_carry_i_1_n_0\,
      S(2) => \minusOp[1]_carry_i_2_n_0\,
      S(1) => \minusOp[1]_carry_i_3_n_0\,
      S(0) => \minusOp[1]_carry_i_4_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_0\,
      CO(3) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(8 downto 6),
      DI(0) => '0',
      O(3) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_4\,
      O(2) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_5\,
      O(1) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_6\,
      O(0) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_7\,
      S(3) => \minusOp[1]_carry__0_i_1_n_0\,
      S(2) => \minusOp[1]_carry__0_i_2_n_0\,
      S(1) => \minusOp[1]_carry__0_i_3_n_0\,
      S(0) => \minusOp[1]_carry__0_i_4_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_0\,
      CO(3 downto 1) => \NLW_VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(9),
      O(3 downto 2) => \NLW_VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_6\,
      O(0) => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \minusOp[1]_carry__1_i_1_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/ok1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_3\,
      CYINIT => '0',
      DI(3) => ok1_carry_i_1_n_0,
      DI(2 downto 1) => B"00",
      DI(0) => ok1_carry_i_2_n_0,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/ok1_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => ok1_carry_i_3_n_0,
      S(2) => ok1_carry_i_4_n_0,
      S(1) => ok1_carry_i_5_n_0,
      S(0) => ok1_carry_i_6_n_0
    );
\VGA_r/vga_mem_rd/C_Sync/ok1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/C_Sync/ok1_carry_n_0\,
      CO(3 downto 1) => \NLW_VGA_r/vga_mem_rd/C_Sync/ok1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/ok1\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/ok1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \ok1_carry__0_i_1_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      CO(2) => \VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry_i_1__2_n_0\,
      DI(1) => '0',
      DI(0) => \i__carry_i_2_n_0\,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/C_Sync/ok1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_3__4_n_0\,
      S(2) => \i__carry_i_4_n_0\,
      S(1) => \i__carry_i_5_n_0\,
      S(0) => \i__carry_i_6_n_0\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[0]\(0),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(0),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[0]\(1),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(1),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[0]\(2),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(2),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[0]\(3),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(3),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[0]\(4),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(4),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[0]\(5),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(5),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \sync_c_q[0][5]_rep_i_1_n_0\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep_n_0\,
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \sync_c_q[0][5]_rep_i_1__0_n_0\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0_n_0\,
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[0]\(6),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(6),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[0]\(7),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(7),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[0]\(8),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(8),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \sync_c_q[0][8]_rep_i_1_n_0\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep_n_0\,
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \sync_c_q[0][8]_rep_i_1__0_n_0\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0_n_0\,
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[0]\(9),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(9),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \sync_c_q[0][9]_rep_i_1_n_0\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep_n_0\,
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \sync_c_q[0][9]_rep_i_1__0_n_0\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0_n_0\,
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[1]\(0),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(0),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[1]\(1),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(1),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[1]\(2),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(2),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[1]\(3),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(3),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[1]\(4),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(4),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[1]\(5),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(5),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[1]\(6),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(6),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[1]\(7),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(7),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[1]\(8),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(8),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/v[1]\(9),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(9),
      R => \VGA_r/rst\
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[Hsync]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/andv\(0),
      Q => \VGA_r/vga_mem_rd/sync[Hsync]\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[Vsync]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/andv\(1),
      Q => \VGA_r/vga_mem_rd/sync[Vsync]\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[active]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_reg[active]0\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[active_n_0_]\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(0),
      Q => \VGA_r/vga_mem_rd/sync[c][0]\(0),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(1),
      Q => \VGA_r/vga_mem_rd/sync[c][0]\(1),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(1),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(2),
      Q => \VGA_r/vga_mem_rd/sync[c][0]\(2),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(2),
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_4\,
      Q => \VGA_r/vga_mem_rd/sync[c][0]\(31),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_4\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_4\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_4\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_4\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_7\,
      Q => \VGA_r/vga_mem_rd/sync[c][0]\(3),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_7\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_6\,
      Q => \VGA_r/vga_mem_rd/sync[c][0]\(4),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_6\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_5\,
      Q => \VGA_r/vga_mem_rd/sync[c][0]\(5),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry_n_4\,
      Q => \VGA_r/vga_mem_rd/sync[c][0]\(6),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_7\,
      Q => \VGA_r/vga_mem_rd/sync[c][0]\(7),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_6\,
      Q => \VGA_r/vga_mem_rd/sync[c][0]\(8),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[0]_carry__0_n_5\,
      Q => \VGA_r/vga_mem_rd/sync[c][0]\(9),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \sync[c][1][0]_i_1_n_0\,
      Q => \VGA_r/vga_mem_rd/sync[c][1]\(0),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_7\,
      Q => \VGA_r/vga_mem_rd/sync[c][1]\(1),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_7\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_7\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_6\,
      Q => \VGA_r/vga_mem_rd/sync[c][1]\(2),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_6\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_6\,
      Q => \VGA_r/vga_mem_rd/sync[c][1]\(31),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_6\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_6\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_6\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_6\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_5\,
      Q => \VGA_r/vga_mem_rd/sync[c][1]\(3),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_5\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_4\,
      Q => \VGA_r/vga_mem_rd/sync[c][1]\(4),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry_n_4\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_7\,
      Q => \VGA_r/vga_mem_rd/sync[c][1]\(5),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_7\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_6\,
      Q => \VGA_r/vga_mem_rd/sync[c][1]\(6),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_6\,
      Q => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_5\,
      Q => \VGA_r/vga_mem_rd/sync[c][1]\(7),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__0_n_4\,
      Q => \VGA_r/vga_mem_rd/sync[c][1]\(8),
      R => '0'
    );
\VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => \sync[Hsync]_i_1_n_0\,
      D => \VGA_r/vga_mem_rd/C_Sync/minusOp[1]_carry__1_n_7\,
      Q => \VGA_r/vga_mem_rd/sync[c][1]\(9),
      R => '0'
    );
\VGA_r/vga_mem_rd/divOp[0]3_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \VGA_r/vga_mem_rd/divOp[0]3_carry_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/divOp[0]3_carry_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/divOp[0]3_carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/divOp[0]3_carry_n_3\,
      CYINIT => '1',
      DI(3) => \divOp[0]3_carry_i_1_n_0\,
      DI(2) => \divOp[0]3_carry_i_2_n_0\,
      DI(1) => \divOp[0]3_carry_i_3_n_0\,
      DI(0) => \divOp[0]3_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/divOp[0]3_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \divOp[0]3_carry_i_5_n_0\,
      S(2) => \divOp[0]3_carry_i_6_n_0\,
      S(1) => \divOp[0]3_carry_i_7_n_0\,
      S(0) => \divOp[0]3_carry_i_8_n_0\
    );
\VGA_r/vga_mem_rd/divOp[0]3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/divOp[0]3_carry_n_0\,
      CO(3) => \VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \VGA_r/vga_mem_rd/sync[c][0]\(31),
      DI(2) => \VGA_r/vga_mem_rd/sync[c][0]\(31),
      DI(1) => \VGA_r/vga_mem_rd/sync[c][0]\(31),
      DI(0) => \divOp[0]3_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/divOp[0]3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \divOp[0]3_carry__0_i_2_n_0\,
      S(2) => \divOp[0]3_carry__0_i_3_n_0\,
      S(1) => \divOp[0]3_carry__0_i_4_n_0\,
      S(0) => \divOp[0]3_carry__0_i_5_n_0\
    );
\VGA_r/vga_mem_rd/divOp[0]3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/divOp[0]3_carry__0_n_0\,
      CO(3) => \VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \VGA_r/vga_mem_rd/sync[c][0]\(31),
      DI(2) => \VGA_r/vga_mem_rd/sync[c][0]\(31),
      DI(1) => \VGA_r/vga_mem_rd/sync[c][0]\(31),
      DI(0) => \VGA_r/vga_mem_rd/sync[c][0]\(31),
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/divOp[0]3_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \divOp[0]3_carry__1_i_1_n_0\,
      S(2) => \divOp[0]3_carry__1_i_2_n_0\,
      S(1) => \divOp[0]3_carry__1_i_3_n_0\,
      S(0) => \divOp[0]3_carry__1_i_4_n_0\
    );
\VGA_r/vga_mem_rd/divOp[0]3_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/divOp[0]3_carry__1_n_0\,
      CO(3) => \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \VGA_r/vga_mem_rd/sync[c][0]\(31),
      DI(1) => \VGA_r/vga_mem_rd/sync[c][0]\(31),
      DI(0) => \VGA_r/vga_mem_rd/sync[c][0]\(31),
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/divOp[0]3_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \divOp[0]3_carry__2_i_1_n_0\,
      S(2) => \divOp[0]3_carry__2_i_2_n_0\,
      S(1) => \divOp[0]3_carry__2_i_3_n_0\,
      S(0) => \divOp[0]3_carry__2_i_4_n_0\
    );
\VGA_r/vga_mem_rd/divOp[1]3_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \VGA_r/vga_mem_rd/divOp[1]3_carry_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/divOp[1]3_carry_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/divOp[1]3_carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/divOp[1]3_carry_n_3\,
      CYINIT => '1',
      DI(3) => \divOp[1]3_carry_i_1_n_0\,
      DI(2) => \divOp[1]3_carry_i_2_n_0\,
      DI(1) => \divOp[1]3_carry_i_3_n_0\,
      DI(0) => \divOp[1]3_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/divOp[1]3_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \divOp[1]3_carry_i_5_n_0\,
      S(2) => \divOp[1]3_carry_i_6_n_0\,
      S(1) => \divOp[1]3_carry_i_7_n_0\,
      S(0) => \divOp[1]3_carry_i_8_n_0\
    );
\VGA_r/vga_mem_rd/divOp[1]3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/divOp[1]3_carry_n_0\,
      CO(3) => \VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \VGA_r/vga_mem_rd/sync[c][1]\(31),
      DI(2) => \VGA_r/vga_mem_rd/sync[c][1]\(31),
      DI(1) => \VGA_r/vga_mem_rd/sync[c][1]\(31),
      DI(0) => \divOp[1]3_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/divOp[1]3_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \divOp[1]3_carry__0_i_2_n_0\,
      S(2) => \divOp[1]3_carry__0_i_3_n_0\,
      S(1) => \divOp[1]3_carry__0_i_4_n_0\,
      S(0) => \divOp[1]3_carry__0_i_5_n_0\
    );
\VGA_r/vga_mem_rd/divOp[1]3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/divOp[1]3_carry__0_n_0\,
      CO(3) => \VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \VGA_r/vga_mem_rd/sync[c][1]\(31),
      DI(2) => \VGA_r/vga_mem_rd/sync[c][1]\(31),
      DI(1) => \VGA_r/vga_mem_rd/sync[c][1]\(31),
      DI(0) => \VGA_r/vga_mem_rd/sync[c][1]\(31),
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/divOp[1]3_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \divOp[1]3_carry__1_i_1_n_0\,
      S(2) => \divOp[1]3_carry__1_i_2_n_0\,
      S(1) => \divOp[1]3_carry__1_i_3_n_0\,
      S(0) => \divOp[1]3_carry__1_i_4_n_0\
    );
\VGA_r/vga_mem_rd/divOp[1]3_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/divOp[1]3_carry__1_n_0\,
      CO(3) => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \VGA_r/vga_mem_rd/sync[c][1]\(31),
      DI(1) => \VGA_r/vga_mem_rd/sync[c][1]\(31),
      DI(0) => \VGA_r/vga_mem_rd/sync[c][1]\(31),
      O(3 downto 0) => \NLW_VGA_r/vga_mem_rd/divOp[1]3_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \divOp[1]3_carry__2_i_1_n_0\,
      S(2) => \divOp[1]3_carry__2_i_2_n_0\,
      S(1) => \divOp[1]3_carry__2_i_3_n_0\,
      S(0) => \divOp[1]3_carry__2_i_4_n_0\
    );
\VGA_r/vga_mem_rd/index0__23_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_VGA_r/vga_mem_rd/index0__23_carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \VGA_r/vga_mem_rd/index0__23_carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/index0__23_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \VGA_r/vga_mem_rd/index0_carry__1_n_7\,
      DI(0) => '0',
      O(3) => \NLW_VGA_r/vga_mem_rd/index0__23_carry_O_UNCONNECTED\(3),
      O(2) => \VGA_r/vga_mem_rd/index0__23_carry_n_5\,
      O(1) => \VGA_r/vga_mem_rd/index0__23_carry_n_6\,
      O(0) => \VGA_r/vga_mem_rd/index0__23_carry_n_7\,
      S(3) => '0',
      S(2) => \index0__23_carry_i_1_n_0\,
      S(1) => \index0__23_carry_i_2_n_0\,
      S(0) => \index0__23_carry_i_3_n_0\
    );
\VGA_r/vga_mem_rd/index0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \VGA_r/vga_mem_rd/index0_carry_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/index0_carry_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/index0_carry_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/index0_carry_n_3\,
      CYINIT => '0',
      DI(3) => index0_carry_i_1_n_0,
      DI(2 downto 1) => \VGA_r/vga_mem_rd/v[1]\(3 downto 2),
      DI(0) => '0',
      O(3) => \VGA_r/vga_mem_rd/index0_carry_n_4\,
      O(2) => \VGA_r/vga_mem_rd/index0_carry_n_5\,
      O(1) => \VGA_r/vga_mem_rd/index0_carry_n_6\,
      O(0) => \VGA_r/vga_mem_rd/index0_carry_n_7\,
      S(3) => index0_carry_i_4_n_0,
      S(2) => index0_carry_i_5_n_0,
      S(1) => index0_carry_i_6_n_0,
      S(0) => index0_carry_i_7_n_0
    );
\VGA_r/vga_mem_rd/index0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/index0_carry_n_0\,
      CO(3) => \VGA_r/vga_mem_rd/index0_carry__0_n_0\,
      CO(2) => \VGA_r/vga_mem_rd/index0_carry__0_n_1\,
      CO(1) => \VGA_r/vga_mem_rd/index0_carry__0_n_2\,
      CO(0) => \VGA_r/vga_mem_rd/index0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \VGA_r/vga_mem_rd/v[1]\(7 downto 5),
      O(3) => \VGA_r/vga_mem_rd/index0_carry__0_n_4\,
      O(2) => \VGA_r/vga_mem_rd/index0_carry__0_n_5\,
      O(1) => \VGA_r/vga_mem_rd/index0_carry__0_n_6\,
      O(0) => \VGA_r/vga_mem_rd/index0_carry__0_n_7\,
      S(3) => \index0_carry__0_i_4_n_0\,
      S(2) => \index0_carry__0_i_5_n_0\,
      S(1) => \index0_carry__0_i_6_n_0\,
      S(0) => \index0_carry__0_i_7_n_0\
    );
\VGA_r/vga_mem_rd/index0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \VGA_r/vga_mem_rd/index0_carry__0_n_0\,
      CO(3 downto 1) => \NLW_VGA_r/vga_mem_rd/index0_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \VGA_r/vga_mem_rd/index0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \VGA_r/vga_mem_rd/v[1]\(7),
      O(3 downto 2) => \NLW_VGA_r/vga_mem_rd/index0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \VGA_r/vga_mem_rd/index0_carry__1_n_6\,
      O(0) => \VGA_r/vga_mem_rd/index0_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \index0_carry__1_i_1_n_0\
    );
\VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_37_n_0\,
      I1 => \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_38_n_0\,
      I3 => \VGA_r/vga_mem_rd/index0_carry_n_6\,
      O => \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_20_n_0\
    );
\VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_39_n_0\,
      I1 => \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_40_n_0\,
      I3 => \VGA_r/vga_mem_rd/index0_carry_n_7\,
      O => \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_21_n_0\
    );
\VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/v[0]__0\(6),
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7\,
      I2 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I3 => \VGA_r/vga_mem_rd/sync[c][1]\(1),
      O => \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_22_n_0\
    );
\VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/v[0]__0\(6),
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7\,
      I2 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0_n_0\,
      O => \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_4_n_0\
    );
\VGA_r/vga_mem_rd/vga_out_reg[data][0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(0),
      Q => \vga_out[data][2]\(0),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[data][0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(1),
      Q => \vga_out[data][2]\(1),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[data][0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(2),
      Q => \vga_out[data][2]\(2),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[data][0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(3),
      Q => \vga_out[data][2]\(3),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[data][0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(4),
      Q => \vga_out[data][2]\(4),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[data][0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(5),
      Q => \vga_out[data][2]\(5),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[data][0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(6),
      Q => \vga_out[data][2]\(6),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[data][0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(7),
      Q => \vga_out[data][2]\(7),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][active]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][active_n_0_]\,
      Q => \vga_out[sync][active]\,
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][active_n_0_]\,
      Q => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][active_n_0_]\,
      Q => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][active_n_0_]\,
      Q => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1_n_0\,
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][c][0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][0]_srl2_n_0\,
      Q => \vga_out[sync][c][0]\(0),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][c][0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][1]_srl2_n_0\,
      Q => \vga_out[sync][c][0]\(1),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][c][0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][2]_srl2_n_0\,
      Q => \vga_out[sync][c][0]\(2),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][c][0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][3]_srl2_n_0\,
      Q => \vga_out[sync][c][0]\(3),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][c][0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][4]_srl2_n_0\,
      Q => \vga_out[sync][c][0]\(4),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][c][1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][0]_srl2_n_0\,
      Q => \vga_out[sync][c][1]\(0),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][c][1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][1]_srl2_n_0\,
      Q => \vga_out[sync][c][1]\(1),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][c][1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][2]_srl2_n_0\,
      Q => \vga_out[sync][c][1]\(2),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][c][1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][3]_srl2_n_0\,
      Q => \vga_out[sync][c][1]\(3),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][c][1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][4]_srl2_n_0\,
      Q => \vga_out[sync][c][1]\(4),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_out_reg[sync][c][1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][5]_srl2_n_0\,
      Q => \vga_out[sync][c][1]\(5),
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[data][0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_data\(0),
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(0),
      R => \vga_q_q[data][0][7]_i_1_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[data][0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_data\(1),
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(1),
      R => \vga_q_q[data][0][7]_i_1_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[data][0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_data\(2),
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(2),
      R => \vga_q_q[data][0][7]_i_1_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[data][0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_data\(3),
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(3),
      R => \vga_q_q[data][0][7]_i_1_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[data][0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_data\(4),
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(4),
      R => \vga_q_q[data][0][7]_i_1_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[data][0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_data\(5),
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(5),
      R => \vga_q_q[data][0][7]_i_1_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[data][0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_data\(6),
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(6),
      R => \vga_q_q[data][0][7]_i_1_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[data][0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_data\(7),
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[data_n_0_][0]\(7),
      R => \vga_q_q[data][0][7]_i_1_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[sync][active]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/vga_q_reg[sync][active_n_0_]\,
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][active_n_0_]\,
      R => '0'
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][0]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \^clk_display\,
      D => \VGA_r/vga_mem_rd/sync[c][0]\(0),
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][0]_srl2_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][1]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \^clk_display\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep_n_0\,
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][1]_srl2_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][2]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \^clk_display\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep_n_0\,
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][2]_srl2_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][3]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \^clk_display\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep_n_0\,
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][3]_srl2_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][4]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \^clk_display\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep_n_0\,
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][0][4]_srl2_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][0]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \^clk_display\,
      D => \VGA_r/vga_mem_rd/sync[c][1]\(0),
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][0]_srl2_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][1]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \^clk_display\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0_n_0\,
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][1]_srl2_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][2]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \^clk_display\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0\,
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][2]_srl2_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][3]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \^clk_display\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep_n_0\,
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][3]_srl2_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][4]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \^clk_display\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep_n_0\,
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][4]_srl2_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][5]_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \^clk_display\,
      D => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep_n_0\,
      Q => \VGA_r/vga_mem_rd/vga_q_q_reg[sync][c][1][5]_srl2_n_0\
    );
\VGA_r/vga_mem_rd/vga_q_reg[sync][active]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/vga_mem_rd/C_Sync/sync_reg[active_n_0_]\,
      Q => \VGA_r/vga_mem_rd/vga_q_reg[sync][active_n_0_]\,
      R => '0'
    );
\VGA_r/vga_rst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \VGA_r/rst0_n_0\,
      Q => \VGA_r/rst\,
      R => '0'
    );
\cnt_t_3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB1414EB14EBEB14"
    )
        port map (
      I0 => \cnt_t_3[4]_i_3_n_0\,
      I1 => \cnt_t_3[2]_i_4__1_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/p_0_in\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I5 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(1),
      O => \hdmi/DataEncoders[0].DataEncoder/cnt_t_2\(1)
    );
\cnt_t_3[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB1414EB14EBEB14"
    )
        port map (
      I0 => \cnt_t_3[4]_i_2_n_0\,
      I1 => \cnt_t_3[2]_i_4_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/p_0_in\,
      I3 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I4 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I5 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(1),
      O => \hdmi/DataEncoders[1].DataEncoder/cnt_t_2\(1)
    );
\cnt_t_3[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB1414EB14EBEB14"
    )
        port map (
      I0 => \cnt_t_3[4]_i_2__0_n_0\,
      I1 => \cnt_t_3[2]_i_4__0_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/p_0_in\,
      I3 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I4 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I5 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(1),
      O => \hdmi/DataEncoders[2].DataEncoder/cnt_t_2\(1)
    );
\cnt_t_3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65AA99A9559A9AAA"
    )
        port map (
      I0 => \cnt_t_3[2]_i_2__1_n_0\,
      I1 => \cnt_t_3[4]_i_2_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/p_0_in\,
      I3 => \cnt_t_3[2]_i_3__1_n_0\,
      I4 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I5 => \cnt_t_3[2]_i_4_n_0\,
      O => \hdmi/DataEncoders[1].DataEncoder/cnt_t_2\(2)
    );
\cnt_t_3[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65AA99A9559A9AAA"
    )
        port map (
      I0 => \cnt_t_3[2]_i_2__0_n_0\,
      I1 => \cnt_t_3[4]_i_2__0_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/p_0_in\,
      I3 => \cnt_t_3[2]_i_3_n_0\,
      I4 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I5 => \cnt_t_3[2]_i_4__0_n_0\,
      O => \hdmi/DataEncoders[2].DataEncoder/cnt_t_2\(2)
    );
\cnt_t_3[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9595959565A6A995"
    )
        port map (
      I0 => \cnt_t_3[2]_i_2_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I2 => \cnt_t_3[2]_i_3__0_n_0\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/p_0_in\,
      I4 => \cnt_t_3[2]_i_4__1_n_0\,
      I5 => \cnt_t_3[4]_i_3_n_0\,
      O => \cnt_t_3[2]_i_1__1_n_0\
    );
\cnt_t_3[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I1 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I2 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(2),
      I3 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(1),
      O => \cnt_t_3[2]_i_2_n_0\
    );
\cnt_t_3[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96699696"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I1 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I2 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(2),
      I3 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I4 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(1),
      O => \cnt_t_3[2]_i_2__0_n_0\
    );
\cnt_t_3[2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96699696"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I1 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I2 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(2),
      I3 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I4 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(1),
      O => \cnt_t_3[2]_i_2__1_n_0\
    );
\cnt_t_3[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(1),
      I1 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(1),
      O => \cnt_t_3[2]_i_3_n_0\
    );
\cnt_t_3[2]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(1),
      I1 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(1),
      O => \cnt_t_3[2]_i_3__0_n_0\
    );
\cnt_t_3[2]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(1),
      I1 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(1),
      O => \cnt_t_3[2]_i_3__1_n_0\
    );
\cnt_t_3[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00F0F0F1FF"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(0),
      I2 => \cnt_t_3[4]_i_6__1_n_0\,
      I3 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I4 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(3),
      I5 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(4),
      O => \cnt_t_3[2]_i_4_n_0\
    );
\cnt_t_3[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00F0F0F1FF"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(0),
      I2 => \cnt_t_3[4]_i_6__0_n_0\,
      I3 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I4 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(3),
      I5 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(4),
      O => \cnt_t_3[2]_i_4__0_n_0\
    );
\cnt_t_3[2]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00F0F0F1FF"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(1),
      I1 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(0),
      I2 => \cnt_t_3[4]_i_7__1_n_0\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I4 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(3),
      I5 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(4),
      O => \cnt_t_3[2]_i_4__1_n_0\
    );
\cnt_t_3[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F3C8787B4B4C3F0"
    )
        port map (
      I0 => \cnt_t_3[3]_i_4_n_0\,
      I1 => \pDataOutRaw[7]_i_2_n_0\,
      I2 => \cnt_t_3[3]_i_5_n_0\,
      I3 => \cnt_t_3[3]_i_6_n_0\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I5 => \cnt_t_3[3]_i_7__0_n_0\,
      O => \cnt_t_3[3]_i_2_n_0\
    );
\cnt_t_3[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C0F8787B4B4F0C3"
    )
        port map (
      I0 => \cnt_t_3[3]_i_4__1_n_0\,
      I1 => \cnt_t_3[2]_i_4_n_0\,
      I2 => \cnt_t_3[3]_i_5__1_n_0\,
      I3 => \cnt_t_3[3]_i_6__1_n_0\,
      I4 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I5 => \cnt_t_3[3]_i_7__1_n_0\,
      O => \cnt_t_3[3]_i_2__0_n_0\
    );
\cnt_t_3[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C0F8787B4B4F0C3"
    )
        port map (
      I0 => \cnt_t_3[3]_i_4__0_n_0\,
      I1 => \cnt_t_3[2]_i_4__0_n_0\,
      I2 => \cnt_t_3[3]_i_5__0_n_0\,
      I3 => \cnt_t_3[3]_i_6__0_n_0\,
      I4 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I5 => \cnt_t_3[3]_i_7_n_0\,
      O => \cnt_t_3[3]_i_2__1_n_0\
    );
\cnt_t_3[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65A6A66565656565"
    )
        port map (
      I0 => \cnt_t_3[3]_i_5_n_0\,
      I1 => \cnt_t_3[3]_i_7__0_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I3 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I5 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(1),
      O => \cnt_t_3[3]_i_3_n_0\
    );
\cnt_t_3[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65A6A66565656565"
    )
        port map (
      I0 => \cnt_t_3[3]_i_5__1_n_0\,
      I1 => \cnt_t_3[3]_i_7__1_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I3 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I4 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I5 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(1),
      O => \cnt_t_3[3]_i_3__0_n_0\
    );
\cnt_t_3[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65A6A66565656565"
    )
        port map (
      I0 => \cnt_t_3[3]_i_5__0_n_0\,
      I1 => \cnt_t_3[3]_i_7_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I3 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I4 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I5 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(1),
      O => \cnt_t_3[3]_i_3__1_n_0\
    );
\cnt_t_3[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"147D"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/p_0_in\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(1),
      I2 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(1),
      I3 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(1),
      O => \cnt_t_3[3]_i_4_n_0\
    );
\cnt_t_3[3]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"147D"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/p_0_in\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(1),
      I2 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(1),
      I3 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(1),
      O => \cnt_t_3[3]_i_4__0_n_0\
    );
\cnt_t_3[3]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"147D"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I1 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(1),
      I2 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(1),
      I3 => \hdmi/DataEncoders[1].DataEncoder/p_0_in\,
      O => \cnt_t_3[3]_i_4__1_n_0\
    );
\cnt_t_3[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(3),
      I1 => \cnt_t_3[4]_i_10_n_0\,
      O => \cnt_t_3[3]_i_5_n_0\
    );
\cnt_t_3[3]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(3),
      I1 => \cnt_t_3[4]_i_10__1_n_0\,
      O => \cnt_t_3[3]_i_5__0_n_0\
    );
\cnt_t_3[3]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(3),
      I1 => \cnt_t_3[4]_i_8__0_n_0\,
      O => \cnt_t_3[3]_i_5__1_n_0\
    );
\cnt_t_3[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"41D7"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/p_0_in\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(1),
      I2 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(1),
      I3 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(1),
      O => \cnt_t_3[3]_i_6_n_0\
    );
\cnt_t_3[3]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE28"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/p_0_in\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(1),
      I2 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(1),
      I3 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(1),
      O => \cnt_t_3[3]_i_6__0_n_0\
    );
\cnt_t_3[3]_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE28"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I1 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(1),
      I2 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(1),
      I3 => \hdmi/DataEncoders[1].DataEncoder/p_0_in\,
      O => \cnt_t_3[3]_i_6__1_n_0\
    );
\cnt_t_3[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(1),
      I1 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(1),
      I2 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(2),
      I3 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(2),
      O => \cnt_t_3[3]_i_7_n_0\
    );
\cnt_t_3[3]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(1),
      I1 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(1),
      I2 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(2),
      I3 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(2),
      O => \cnt_t_3[3]_i_7__0_n_0\
    );
\cnt_t_3[3]_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(1),
      I1 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(1),
      I2 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(2),
      I3 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(2),
      O => \cnt_t_3[3]_i_7__1_n_0\
    );
\cnt_t_3[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2_n_0\,
      O => \cnt_t_3[4]_i_1_n_0\
    );
\cnt_t_3[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22B2DD4DDD4D22B2"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I1 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(2),
      I2 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(3),
      I5 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(3),
      O => \cnt_t_3[4]_i_10_n_0\
    );
\cnt_t_3[4]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF222B2BBB"
    )
        port map (
      I0 => \cnt_t_3[3]_i_7__1_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I2 => \hdmi/DataEncoders[1].DataEncoder/p_0_in\,
      I3 => \cnt_t_3[2]_i_3__1_n_0\,
      I4 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I5 => \cnt_t_3[3]_i_5__1_n_0\,
      O => \cnt_t_3[4]_i_10__0_n_0\
    );
\cnt_t_3[4]_i_10__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22B2DD4DDD4D22B2"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I1 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(2),
      I2 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I3 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I4 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(3),
      I5 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(3),
      O => \cnt_t_3[4]_i_10__1_n_0\
    );
\cnt_t_3[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF222B2BBB"
    )
        port map (
      I0 => \cnt_t_3[3]_i_7__0_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I2 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I3 => \cnt_t_3[2]_i_3__0_n_0\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/p_0_in\,
      I5 => \cnt_t_3[3]_i_5_n_0\,
      O => \cnt_t_3[4]_i_11_n_0\
    );
\cnt_t_3[4]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D4DD"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I1 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(2),
      I2 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I3 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(1),
      O => \cnt_t_3[4]_i_11__0_n_0\
    );
\cnt_t_3[4]_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D4DD"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I1 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(2),
      I2 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I3 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(1),
      O => \cnt_t_3[4]_i_11__1_n_0\
    );
\cnt_t_3[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C7DF10F710F7C7DF"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I1 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I3 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I4 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I5 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(2),
      O => \cnt_t_3[4]_i_12_n_0\
    );
\cnt_t_3[4]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C7DF10F710F7C7DF"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I1 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I3 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I4 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I5 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(2),
      O => \cnt_t_3[4]_i_12__0_n_0\
    );
\cnt_t_3[4]_i_12__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D4DD"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I1 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(2),
      I2 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(1),
      O => \cnt_t_3[4]_i_12__1_n_0\
    );
\cnt_t_3[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C7DF10F710F7C7DF"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I1 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I4 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I5 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(2),
      O => \cnt_t_3[4]_i_13_n_0\
    );
\cnt_t_3[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04550404"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/p_0_in\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I2 => \cnt_t_3[4]_i_5__0_n_0\,
      I3 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(4),
      I4 => \cnt_t_3[4]_i_6__1_n_0\,
      O => \cnt_t_3[4]_i_2_n_0\
    );
\cnt_t_3[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04550404"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/p_0_in\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I2 => \cnt_t_3[4]_i_5__1_n_0\,
      I3 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(4),
      I4 => \cnt_t_3[4]_i_6__0_n_0\,
      O => \cnt_t_3[4]_i_2__0_n_0\
    );
\cnt_t_3[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04550404"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/p_0_in\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I2 => \cnt_t_3[4]_i_6_n_0\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(4),
      I4 => \cnt_t_3[4]_i_7__1_n_0\,
      O => \cnt_t_3[4]_i_3_n_0\
    );
\cnt_t_3[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B77B488784487BB"
    )
        port map (
      I0 => \cnt_t_3[4]_i_7_n_0\,
      I1 => \cnt_t_3[2]_i_4_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(3),
      I3 => \cnt_t_3[4]_i_8__0_n_0\,
      I4 => \cnt_t_3[4]_i_9__0_n_0\,
      I5 => \cnt_t_3[4]_i_10__0_n_0\,
      O => \cnt_t_3[4]_i_3__0_n_0\
    );
\cnt_t_3[4]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47B8B847748B748B"
    )
        port map (
      I0 => \cnt_t_3[4]_i_7__0_n_0\,
      I1 => \cnt_t_3[2]_i_4__0_n_0\,
      I2 => \cnt_t_3[4]_i_8__1_n_0\,
      I3 => \cnt_t_3[4]_i_9__1_n_0\,
      I4 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(3),
      I5 => \cnt_t_3[4]_i_10__1_n_0\,
      O => \cnt_t_3[4]_i_3__1_n_0\
    );
\cnt_t_3[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BB4787878874B4B"
    )
        port map (
      I0 => \cnt_t_3[4]_i_8_n_0\,
      I1 => \pDataOutRaw[7]_i_2_n_0\,
      I2 => \cnt_t_3[4]_i_9_n_0\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(3),
      I4 => \cnt_t_3[4]_i_10_n_0\,
      I5 => \cnt_t_3[4]_i_11_n_0\,
      O => \cnt_t_3[4]_i_4_n_0\
    );
\cnt_t_3[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A69A9A5965A6A69A"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(4),
      I1 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(3),
      I2 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(3),
      I3 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(3),
      I4 => \cnt_t_3[4]_i_11__1_n_0\,
      I5 => \cnt_t_3[4]_i_12_n_0\,
      O => \cnt_t_3[4]_i_4__0_n_0\
    );
\cnt_t_3[4]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A69A9A5965A6A69A"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(4),
      I1 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(3),
      I2 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(3),
      I3 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(3),
      I4 => \cnt_t_3[4]_i_11__0_n_0\,
      I5 => \cnt_t_3[4]_i_12__0_n_0\,
      O => \cnt_t_3[4]_i_4__1_n_0\
    );
\cnt_t_3[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A69A9A5965A6A69A"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(4),
      I1 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(3),
      I2 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(3),
      I3 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(3),
      I4 => \cnt_t_3[4]_i_12__1_n_0\,
      I5 => \cnt_t_3[4]_i_13_n_0\,
      O => \cnt_t_3[4]_i_5_n_0\
    );
\cnt_t_3[4]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(3),
      I1 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      O => \cnt_t_3[4]_i_5__0_n_0\
    );
\cnt_t_3[4]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(3),
      I1 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      O => \cnt_t_3[4]_i_5__1_n_0\
    );
\cnt_t_3[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(3),
      I1 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      O => \cnt_t_3[4]_i_6_n_0\
    );
\cnt_t_3[4]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(3),
      I1 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I2 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(2),
      O => \cnt_t_3[4]_i_6__0_n_0\
    );
\cnt_t_3[4]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(3),
      I1 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I2 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(2),
      O => \cnt_t_3[4]_i_6__1_n_0\
    );
\cnt_t_3[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"022A02022A2A022A"
    )
        port map (
      I0 => \cnt_t_3[3]_i_5__1_n_0\,
      I1 => \cnt_t_3[3]_i_7__1_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I3 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I4 => \cnt_t_3[2]_i_3__1_n_0\,
      I5 => \hdmi/DataEncoders[1].DataEncoder/p_0_in\,
      O => \cnt_t_3[4]_i_7_n_0\
    );
\cnt_t_3[4]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"022A02022A2A022A"
    )
        port map (
      I0 => \cnt_t_3[3]_i_5__0_n_0\,
      I1 => \cnt_t_3[3]_i_7_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I3 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I4 => \cnt_t_3[2]_i_3_n_0\,
      I5 => \hdmi/DataEncoders[2].DataEncoder/p_0_in\,
      O => \cnt_t_3[4]_i_7__0_n_0\
    );
\cnt_t_3[4]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(3),
      I1 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I2 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(2),
      O => \cnt_t_3[4]_i_7__1_n_0\
    );
\cnt_t_3[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"022A02022A2A022A"
    )
        port map (
      I0 => \cnt_t_3[3]_i_5_n_0\,
      I1 => \cnt_t_3[3]_i_7__0_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I3 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I4 => \cnt_t_3[2]_i_3__0_n_0\,
      I5 => \hdmi/DataEncoders[0].DataEncoder/p_0_in\,
      O => \cnt_t_3[4]_i_8_n_0\
    );
\cnt_t_3[4]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22B2DD4DDD4D22B2"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I1 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(2),
      I2 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I3 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      I4 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(3),
      I5 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(3),
      O => \cnt_t_3[4]_i_8__0_n_0\
    );
\cnt_t_3[4]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF222B2BBB"
    )
        port map (
      I0 => \cnt_t_3[3]_i_7_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(2),
      I2 => \hdmi/DataEncoders[2].DataEncoder/p_0_in\,
      I3 => \cnt_t_3[2]_i_3_n_0\,
      I4 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(1),
      I5 => \cnt_t_3[3]_i_5__0_n_0\,
      O => \cnt_t_3[4]_i_8__1_n_0\
    );
\cnt_t_3[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A59"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(4),
      I1 => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(3),
      I2 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(3),
      I3 => \cnt_t_3[4]_i_12__1_n_0\,
      O => \cnt_t_3[4]_i_9_n_0\
    );
\cnt_t_3[4]_i_9__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A59"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(4),
      I1 => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(3),
      I2 => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(3),
      I3 => \cnt_t_3[4]_i_11__1_n_0\,
      O => \cnt_t_3[4]_i_9__0_n_0\
    );
\cnt_t_3[4]_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9A59"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(4),
      I1 => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(3),
      I2 => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(3),
      I3 => \cnt_t_3[4]_i_11__0_n_0\,
      O => \cnt_t_3[4]_i_9__1_n_0\
    );
\cnt_t_3_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cnt_t_3[3]_i_2_n_0\,
      I1 => \cnt_t_3[3]_i_3_n_0\,
      O => \hdmi/DataEncoders[0].DataEncoder/cnt_t_2\(3),
      S => \cnt_t_3[4]_i_3_n_0\
    );
\cnt_t_3_reg[3]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cnt_t_3[3]_i_2__0_n_0\,
      I1 => \cnt_t_3[3]_i_3__0_n_0\,
      O => \hdmi/DataEncoders[1].DataEncoder/cnt_t_2\(3),
      S => \cnt_t_3[4]_i_2_n_0\
    );
\cnt_t_3_reg[3]_i_1__1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cnt_t_3[3]_i_2__1_n_0\,
      I1 => \cnt_t_3[3]_i_3__1_n_0\,
      O => \hdmi/DataEncoders[2].DataEncoder/cnt_t_2\(3),
      S => \cnt_t_3[4]_i_2__0_n_0\
    );
\cnt_t_3_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cnt_t_3[4]_i_3__0_n_0\,
      I1 => \cnt_t_3[4]_i_4__0_n_0\,
      O => \hdmi/DataEncoders[1].DataEncoder/cnt_t_2\(4),
      S => \cnt_t_3[4]_i_2_n_0\
    );
\cnt_t_3_reg[4]_i_1__0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cnt_t_3[4]_i_3__1_n_0\,
      I1 => \cnt_t_3[4]_i_4__1_n_0\,
      O => \hdmi/DataEncoders[2].DataEncoder/cnt_t_2\(4),
      S => \cnt_t_3[4]_i_2__0_n_0\
    );
\cnt_t_3_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cnt_t_3[4]_i_4_n_0\,
      I1 => \cnt_t_3[4]_i_5_n_0\,
      O => \hdmi/DataEncoders[0].DataEncoder/cnt_t_2\(4),
      S => \cnt_t_3[4]_i_3_n_0\
    );
\divOp[0]3_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(8),
      I1 => \VGA_r/vga_mem_rd/sync[c][0]\(9),
      O => \divOp[0]3_carry__0_i_1_n_0\
    );
\divOp[0]3_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0\,
      O => \divOp[0]3_carry__0_i_2_n_0\
    );
\divOp[0]3_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0\,
      O => \divOp[0]3_carry__0_i_3_n_0\
    );
\divOp[0]3_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0\,
      O => \divOp[0]3_carry__0_i_4_n_0\
    );
\divOp[0]3_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(9),
      I1 => \VGA_r/vga_mem_rd/sync[c][0]\(8),
      O => \divOp[0]3_carry__0_i_5_n_0\
    );
\divOp[0]3_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0\,
      O => \divOp[0]3_carry__1_i_1_n_0\
    );
\divOp[0]3_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0\,
      O => \divOp[0]3_carry__1_i_2_n_0\
    );
\divOp[0]3_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0\,
      O => \divOp[0]3_carry__1_i_3_n_0\
    );
\divOp[0]3_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0\,
      O => \divOp[0]3_carry__1_i_4_n_0\
    );
\divOp[0]3_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2_n_0\,
      O => \divOp[0]3_carry__2_i_1_n_0\
    );
\divOp[0]3_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0\,
      O => \divOp[0]3_carry__2_i_2_n_0\
    );
\divOp[0]3_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0\,
      O => \divOp[0]3_carry__2_i_3_n_0\
    );
\divOp[0]3_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0\,
      O => \divOp[0]3_carry__2_i_4_n_0\
    );
\divOp[0]3_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(6),
      I1 => \VGA_r/vga_mem_rd/sync[c][0]\(7),
      O => \divOp[0]3_carry_i_1_n_0\
    );
\divOp[0]3_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/sync[c][0]\(5),
      O => \divOp[0]3_carry_i_2_n_0\
    );
\divOp[0]3_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep_n_0\,
      O => \divOp[0]3_carry_i_3_n_0\
    );
\divOp[0]3_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/sync[c][0]\(0),
      O => \divOp[0]3_carry_i_4_n_0\
    );
\divOp[0]3_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(7),
      I1 => \VGA_r/vga_mem_rd/sync[c][0]\(6),
      O => \divOp[0]3_carry_i_5_n_0\
    );
\divOp[0]3_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(5),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep_n_0\,
      O => \divOp[0]3_carry_i_6_n_0\
    );
\divOp[0]3_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep_n_0\,
      O => \divOp[0]3_carry_i_7_n_0\
    );
\divOp[0]3_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(0),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep_n_0\,
      O => \divOp[0]3_carry_i_8_n_0\
    );
\divOp[1]3_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(9),
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(8),
      O => \divOp[1]3_carry__0_i_1_n_0\
    );
\divOp[1]3_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0\,
      O => \divOp[1]3_carry__0_i_2_n_0\
    );
\divOp[1]3_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0\,
      O => \divOp[1]3_carry__0_i_3_n_0\
    );
\divOp[1]3_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0\,
      O => \divOp[1]3_carry__0_i_4_n_0\
    );
\divOp[1]3_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(8),
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(9),
      O => \divOp[1]3_carry__0_i_5_n_0\
    );
\divOp[1]3_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0\,
      O => \divOp[1]3_carry__1_i_1_n_0\
    );
\divOp[1]3_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0\,
      O => \divOp[1]3_carry__1_i_2_n_0\
    );
\divOp[1]3_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0\,
      O => \divOp[1]3_carry__1_i_3_n_0\
    );
\divOp[1]3_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0\,
      O => \divOp[1]3_carry__1_i_4_n_0\
    );
\divOp[1]3_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0\,
      O => \divOp[1]3_carry__2_i_1_n_0\
    );
\divOp[1]3_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0\,
      O => \divOp[1]3_carry__2_i_2_n_0\
    );
\divOp[1]3_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0\,
      O => \divOp[1]3_carry__2_i_3_n_0\
    );
\divOp[1]3_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__0_n_0\,
      O => \divOp[1]3_carry__2_i_4_n_0\
    );
\divOp[1]3_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(6),
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(7),
      O => \divOp[1]3_carry_i_1_n_0\
    );
\divOp[1]3_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(4),
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(5),
      O => \divOp[1]3_carry_i_2_n_0\
    );
\divOp[1]3_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(3),
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(2),
      O => \divOp[1]3_carry_i_3_n_0\
    );
\divOp[1]3_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(0),
      O => \divOp[1]3_carry_i_4_n_0\
    );
\divOp[1]3_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(7),
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(6),
      O => \divOp[1]3_carry_i_5_n_0\
    );
\divOp[1]3_carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(5),
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(4),
      O => \divOp[1]3_carry_i_6_n_0\
    );
\divOp[1]3_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(2),
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(3),
      O => \divOp[1]3_carry_i_7_n_0\
    );
\divOp[1]3_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(0),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0\,
      O => \divOp[1]3_carry_i_8_n_0\
    );
\geqOp0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(8),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(9),
      O => \geqOp0_carry__0_i_1_n_0\
    );
\geqOp0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(8),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(9),
      O => \geqOp0_carry__0_i_2_n_0\
    );
geqOp0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(6),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(7),
      O => geqOp0_carry_i_1_n_0
    );
geqOp0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(4),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(5),
      O => geqOp0_carry_i_2_n_0
    );
geqOp0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(3),
      O => geqOp0_carry_i_3_n_0
    );
geqOp0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(0),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(1),
      O => geqOp0_carry_i_4_n_0
    );
geqOp0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(6),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(7),
      O => geqOp0_carry_i_5_n_0
    );
geqOp0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(4),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(5),
      O => geqOp0_carry_i_6_n_0
    );
geqOp0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(3),
      O => geqOp0_carry_i_7_n_0
    );
geqOp0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(1),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(0),
      O => geqOp0_carry_i_8_n_0
    );
\hdmi/ClockSerializer/OutputBuffer\: unisim.vcomponents.OBUFDS
     port map (
      I => \hdmi/ClockSerializer/I\,
      O => hdmi_TMDS_Clk_p,
      OB => hdmi_TMDS_Clk_n
    );
\hdmi/ClockSerializer/SerializerMaster\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => clk_hdmi,
      CLKDIV => \^clk_display\,
      D1 => '0',
      D2 => '0',
      D3 => '0',
      D4 => '0',
      D5 => '0',
      D6 => '1',
      D7 => '1',
      D8 => '1',
      OCE => '1',
      OFB => \NLW_hdmi/ClockSerializer/SerializerMaster_OFB_UNCONNECTED\,
      OQ => \hdmi/ClockSerializer/I\,
      RST => \hdmi/LockLostReset/SyncAsyncx/oSyncStages\(1),
      SHIFTIN1 => \hdmi/ClockSerializer/SHIFTIN1\,
      SHIFTIN2 => \hdmi/ClockSerializer/SHIFTIN2\,
      SHIFTOUT1 => \NLW_hdmi/ClockSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_hdmi/ClockSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => \NLW_hdmi/ClockSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED\,
      TCE => '0',
      TFB => \NLW_hdmi/ClockSerializer/SerializerMaster_TFB_UNCONNECTED\,
      TQ => \NLW_hdmi/ClockSerializer/SerializerMaster_TQ_UNCONNECTED\
    );
\hdmi/ClockSerializer/SerializerSlave\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => clk_hdmi,
      CLKDIV => \^clk_display\,
      D1 => '0',
      D2 => '0',
      D3 => '1',
      D4 => '1',
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_hdmi/ClockSerializer/SerializerSlave_OFB_UNCONNECTED\,
      OQ => \NLW_hdmi/ClockSerializer/SerializerSlave_OQ_UNCONNECTED\,
      RST => \hdmi/LockLostReset/SyncAsyncx/oSyncStages\(1),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \hdmi/ClockSerializer/SHIFTIN1\,
      SHIFTOUT2 => \hdmi/ClockSerializer/SHIFTIN2\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => \NLW_hdmi/ClockSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED\,
      TCE => '0',
      TFB => \NLW_hdmi/ClockSerializer/SerializerSlave_TFB_UNCONNECTED\,
      TQ => \NLW_hdmi/ClockSerializer/SerializerSlave_TQ_UNCONNECTED\
    );
\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/cnt_t_2\(1),
      Q => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(1),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \cnt_t_3[2]_i_1__1_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(2),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/cnt_t_2\(3),
      Q => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(3),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/cnt_t_2\(4),
      Q => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(4),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n0q_m_2[1]_i_1_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(1),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n0q_m_2[1]_i_1_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n0q_m_2[2]_i_1_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(2),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/n0q_m_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n0q_m_2[3]_i_1_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/n0q_m_2\(3),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/n1d_1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4_n_0\,
      I1 => vid_pData(12),
      I2 => vid_pData(14),
      I3 => vid_pData(13),
      O => \hdmi/DataEncoders[0].DataEncoder/sum_bits__0\(0)
    );
\hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7DD78228"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4_n_0\,
      I1 => vid_pData(12),
      I2 => vid_pData(14),
      I3 => vid_pData(13),
      I4 => \hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_2_n_0\,
      O => \hdmi/DataEncoders[0].DataEncoder/sum_bits__0\(1)
    );
\hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17717117E88E8EE8"
    )
        port map (
      I0 => vid_pData(8),
      I1 => vid_pData(15),
      I2 => vid_pData(10),
      I3 => vid_pData(11),
      I4 => vid_pData(9),
      I5 => \hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_3_n_0\,
      O => \hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_2_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => vid_pData(14),
      I1 => vid_pData(13),
      I2 => vid_pData(12),
      I3 => vid_pData(11),
      I4 => vid_pData(10),
      I5 => vid_pData(9),
      O => \hdmi/DataEncoders[0].DataEncoder/n1d_1[1]_i_3_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/n1d_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFEFEEAEAA8A880"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_3_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4_n_0\,
      I2 => vid_pData(12),
      I3 => vid_pData(13),
      I4 => vid_pData(14),
      I5 => \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_2_n_0\,
      O => \hdmi/DataEncoders[0].DataEncoder/sum_bits__0\(2)
    );
\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_2_n_0\,
      I1 => vid_pData(12),
      I2 => vid_pData(13),
      I3 => vid_pData(14),
      I4 => \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_3_n_0\,
      I5 => \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4_n_0\,
      O => \hdmi/DataEncoders[0].DataEncoder/sum_bits__0\(3)
    );
\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(9),
      I1 => vid_pData(10),
      I2 => vid_pData(11),
      O => \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_2_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => vid_pData(10),
      I1 => vid_pData(11),
      I2 => vid_pData(9),
      I3 => vid_pData(8),
      I4 => vid_pData(15),
      O => \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_3_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => vid_pData(10),
      I1 => vid_pData(11),
      I2 => vid_pData(9),
      I3 => vid_pData(8),
      I4 => vid_pData(15),
      O => \hdmi/DataEncoders[0].DataEncoder/n1d_1[3]_i_4_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/sum_bits__0\(0),
      Q => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(0),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/sum_bits__0\(1),
      Q => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(1),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/sum_bits__0\(2),
      Q => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(2),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/n1d_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/sum_bits__0\(3),
      Q => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(3),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n1q_m_2[0]_i_1_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(0),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/n1q_m_1\(1),
      Q => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(1),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n1q_m_2[1]_rep_i_1__1_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/n1q_m_1\(2),
      Q => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(2),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/n1q_m_1\(3),
      Q => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(3),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pC0_1_reg_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => \^clk_display\,
      D => \VGA_r/vga_mem_rd/sync[Hsync]\,
      Q => \hdmi/DataEncoders[0].DataEncoder/pC0_1_reg_srl6_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/pC0_2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/pC0_1_reg_srl6_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/pC0_2\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/pC0_1_reg_srl6_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pC1_1_reg_srl6\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => \^clk_display\,
      D => \VGA_r/vga_mem_rd/sync[Vsync]\,
      Q => \hdmi/DataEncoders[0].DataEncoder/pC1_1_reg_srl6_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/pC1_2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/pC1_1_reg_srl6_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/pC1_2\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/pC1_1_reg_srl6_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[0]_i_1_n_0\,
      Q => \hdmi/pDataOutRaw[0]\(0),
      R => \pDataOutRaw[9]_i_1_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[1]_i_1_n_0\,
      Q => \hdmi/pDataOutRaw[0]\(1),
      R => \pDataOutRaw[9]_i_1_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/q_out_2\(2),
      Q => \hdmi/pDataOutRaw[0]\(2),
      S => \pDataOutRaw[9]_i_1_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[3]_i_1_n_0\,
      Q => \hdmi/pDataOutRaw[0]\(3),
      R => \pDataOutRaw[9]_i_1_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/q_out_2\(4),
      Q => \hdmi/pDataOutRaw[0]\(4),
      S => \pDataOutRaw[9]_i_1_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[5]_i_1_n_0\,
      Q => \hdmi/pDataOutRaw[0]\(5),
      R => \pDataOutRaw[9]_i_1_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/q_out_2\(6),
      Q => \hdmi/pDataOutRaw[0]\(6),
      S => \pDataOutRaw[9]_i_1_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[7]_i_1_n_0\,
      Q => \hdmi/pDataOutRaw[0]\(7),
      R => \pDataOutRaw[9]_i_1_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/q_out_2\(8),
      Q => \hdmi/pDataOutRaw[0]\(8),
      S => \pDataOutRaw[9]_i_1_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOutRaw_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/q_out_2\(9),
      Q => \hdmi/pDataOutRaw[0]\(9),
      S => \pDataOutRaw[9]_i_1_n_0\
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(8),
      Q => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\(0),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(8),
      Q => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(8),
      Q => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(9),
      Q => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\(1),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(9),
      Q => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(10),
      Q => \hdmi/DataEncoders[0].DataEncoder/p_0_in0_in\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(11),
      Q => \hdmi/DataEncoders[0].DataEncoder/p_0_in2_in\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(11),
      Q => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(12),
      Q => \hdmi/DataEncoders[0].DataEncoder/p_0_in4_in\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(13),
      Q => \hdmi/DataEncoders[0].DataEncoder/p_0_in6_in\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(14),
      Q => \hdmi/DataEncoders[0].DataEncoder/p_0_in8_in\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(14),
      Q => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(15),
      Q => \hdmi/DataEncoders[0].DataEncoder/p_0_in10_in\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(0),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \q_m_2[1]_i_1_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(1),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/p_0_in9_in\,
      Q => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(2),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \q_m_2[3]_i_1_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(3),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/p_0_in7_in\,
      Q => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(4),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \q_m_2[5]_i_1_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(5),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/p_0_in5_in\,
      Q => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(6),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[0].DataEncoder/p_1_in12_in\,
      Q => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(7),
      R => '0'
    );
\hdmi/DataEncoders[0].DataEncoder/q_m_2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \q_m_2[8]_i_1_n_0\,
      Q => \hdmi/DataEncoders[0].DataEncoder/p_0_in\,
      R => '0'
    );
\hdmi/DataEncoders[0].DataSerializer/OutputBuffer\: unisim.vcomponents.OBUFDS
     port map (
      I => \hdmi/DataEncoders[0].DataSerializer/I\,
      O => hdmi_TMDS_Data_p(0),
      OB => hdmi_TMDS_Data_n(0)
    );
\hdmi/DataEncoders[0].DataSerializer/SerializerMaster\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => clk_hdmi,
      CLKDIV => \^clk_display\,
      D1 => \hdmi/pDataOutRaw[0]\(0),
      D2 => \hdmi/pDataOutRaw[0]\(1),
      D3 => \hdmi/pDataOutRaw[0]\(2),
      D4 => \hdmi/pDataOutRaw[0]\(3),
      D5 => \hdmi/pDataOutRaw[0]\(4),
      D6 => \hdmi/pDataOutRaw[0]\(5),
      D7 => \hdmi/pDataOutRaw[0]\(6),
      D8 => \hdmi/pDataOutRaw[0]\(7),
      OCE => '1',
      OFB => \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_OFB_UNCONNECTED\,
      OQ => \hdmi/DataEncoders[0].DataSerializer/I\,
      RST => \hdmi/LockLostReset/SyncAsyncx/oSyncStages\(1),
      SHIFTIN1 => \hdmi/DataEncoders[0].DataSerializer/SHIFTIN1\,
      SHIFTIN2 => \hdmi/DataEncoders[0].DataSerializer/SHIFTIN2\,
      SHIFTOUT1 => \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED\,
      TCE => '0',
      TFB => \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_TFB_UNCONNECTED\,
      TQ => \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerMaster_TQ_UNCONNECTED\
    );
\hdmi/DataEncoders[0].DataSerializer/SerializerSlave\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => clk_hdmi,
      CLKDIV => \^clk_display\,
      D1 => '0',
      D2 => '0',
      D3 => \hdmi/pDataOutRaw[0]\(8),
      D4 => \hdmi/pDataOutRaw[0]\(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_OFB_UNCONNECTED\,
      OQ => \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_OQ_UNCONNECTED\,
      RST => \hdmi/LockLostReset/SyncAsyncx/oSyncStages\(1),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \hdmi/DataEncoders[0].DataSerializer/SHIFTIN1\,
      SHIFTOUT2 => \hdmi/DataEncoders[0].DataSerializer/SHIFTIN2\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED\,
      TCE => '0',
      TFB => \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_TFB_UNCONNECTED\,
      TQ => \NLW_hdmi/DataEncoders[0].DataSerializer/SerializerSlave_TQ_UNCONNECTED\
    );
\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/cnt_t_2\(1),
      Q => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(1),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/cnt_t_2\(2),
      Q => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(2),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/cnt_t_2\(3),
      Q => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(3),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/cnt_t_2\(4),
      Q => \hdmi/DataEncoders[1].DataEncoder/cnt_t_3_reg_n_0_\(4),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n0q_m_2[1]_i_1__1_n_0\,
      Q => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(1),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n0q_m_2[1]_i_1__1_n_0\,
      Q => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n0q_m_2[2]_i_1__0_n_0\,
      Q => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(2),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/n0q_m_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n0q_m_2[3]_i_1__0_n_0\,
      Q => \hdmi/DataEncoders[1].DataEncoder/n0q_m_2\(3),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/n1d_1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4_n_0\,
      I1 => vid_pData(4),
      I2 => vid_pData(6),
      I3 => vid_pData(5),
      O => \hdmi/DataEncoders[1].DataEncoder/sum_bits__0\(0)
    );
\hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7DD78228"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4_n_0\,
      I1 => vid_pData(4),
      I2 => vid_pData(6),
      I3 => vid_pData(5),
      I4 => \hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_2_n_0\,
      O => \hdmi/DataEncoders[1].DataEncoder/sum_bits__0\(1)
    );
\hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17717117E88E8EE8"
    )
        port map (
      I0 => vid_pData(0),
      I1 => vid_pData(7),
      I2 => vid_pData(2),
      I3 => vid_pData(3),
      I4 => vid_pData(1),
      I5 => \hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_3_n_0\,
      O => \hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_2_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => vid_pData(6),
      I1 => vid_pData(5),
      I2 => vid_pData(4),
      I3 => vid_pData(3),
      I4 => vid_pData(2),
      I5 => vid_pData(1),
      O => \hdmi/DataEncoders[1].DataEncoder/n1d_1[1]_i_3_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/n1d_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFEFEEAEAA8A880"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_3_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4_n_0\,
      I2 => vid_pData(4),
      I3 => vid_pData(5),
      I4 => vid_pData(6),
      I5 => \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_2_n_0\,
      O => \hdmi/DataEncoders[1].DataEncoder/sum_bits__0\(2)
    );
\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_2_n_0\,
      I1 => vid_pData(4),
      I2 => vid_pData(5),
      I3 => vid_pData(6),
      I4 => \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_3_n_0\,
      I5 => \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4_n_0\,
      O => \hdmi/DataEncoders[1].DataEncoder/sum_bits__0\(3)
    );
\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(1),
      I1 => vid_pData(2),
      I2 => vid_pData(3),
      O => \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_2_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => vid_pData(2),
      I1 => vid_pData(3),
      I2 => vid_pData(1),
      I3 => vid_pData(0),
      I4 => vid_pData(7),
      O => \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_3_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => vid_pData(2),
      I1 => vid_pData(3),
      I2 => vid_pData(1),
      I3 => vid_pData(0),
      I4 => vid_pData(7),
      O => \hdmi/DataEncoders[1].DataEncoder/n1d_1[3]_i_4_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/sum_bits__0\(0),
      Q => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(0),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/sum_bits__0\(1),
      Q => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(1),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/sum_bits__0\(2),
      Q => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(2),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/n1d_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/sum_bits__0\(3),
      Q => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(3),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n1q_m_2[0]_i_1__0_n_0\,
      Q => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(0),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/n1q_m_1\(1),
      Q => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(1),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n1q_m_2[1]_rep_i_1__0_n_0\,
      Q => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/n1q_m_1\(2),
      Q => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(2),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/n1q_m_1\(3),
      Q => \hdmi/DataEncoders[1].DataEncoder/n1q_m_2_reg_n_0_\(3),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[0]_i_1__1_n_0\,
      Q => \hdmi/pDataOutRaw[1]\(0),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[1]_i_1__1_n_0\,
      Q => \hdmi/pDataOutRaw[1]\(1),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/q_out_2\(2),
      Q => \hdmi/pDataOutRaw[1]\(2),
      S => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[3]_i_1__1_n_0\,
      Q => \hdmi/pDataOutRaw[1]\(3),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/q_out_2\(4),
      Q => \hdmi/pDataOutRaw[1]\(4),
      S => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[5]_i_1__1_n_0\,
      Q => \hdmi/pDataOutRaw[1]\(5),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/q_out_2\(6),
      Q => \hdmi/pDataOutRaw[1]\(6),
      S => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[7]_i_1__1_n_0\,
      Q => \hdmi/pDataOutRaw[1]\(7),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/q_out_2\(8),
      Q => \hdmi/pDataOutRaw[1]\(8),
      S => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOutRaw_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[9]_i_1__0_n_0\,
      Q => \hdmi/pDataOutRaw[1]\(9),
      S => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(0),
      Q => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\(0),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(0),
      Q => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(0),
      Q => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(1),
      Q => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\(1),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(1),
      Q => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(2),
      Q => \hdmi/DataEncoders[1].DataEncoder/p_0_in0_in\,
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(3),
      Q => \hdmi/DataEncoders[1].DataEncoder/p_0_in2_in\,
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(3),
      Q => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(4),
      Q => \hdmi/DataEncoders[1].DataEncoder/p_0_in4_in\,
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(5),
      Q => \hdmi/DataEncoders[1].DataEncoder/p_0_in6_in\,
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(6),
      Q => \hdmi/DataEncoders[1].DataEncoder/p_0_in8_in\,
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(6),
      Q => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(7),
      Q => \hdmi/DataEncoders[1].DataEncoder/p_0_in10_in\,
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      Q => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(0),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \q_m_2[1]_i_1__0_n_0\,
      Q => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(1),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/p_0_in9_in\,
      Q => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(2),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \q_m_2[3]_i_1__0_n_0\,
      Q => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(3),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/p_0_in7_in\,
      Q => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(4),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \q_m_2[5]_i_1__0_n_0\,
      Q => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(5),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/p_0_in5_in\,
      Q => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(6),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[1].DataEncoder/p_1_in12_in\,
      Q => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(7),
      R => '0'
    );
\hdmi/DataEncoders[1].DataEncoder/q_m_2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \q_m_2[8]_i_1__0_n_0\,
      Q => \hdmi/DataEncoders[1].DataEncoder/p_0_in\,
      R => '0'
    );
\hdmi/DataEncoders[1].DataSerializer/OutputBuffer\: unisim.vcomponents.OBUFDS
     port map (
      I => \hdmi/DataEncoders[1].DataSerializer/I\,
      O => hdmi_TMDS_Data_p(1),
      OB => hdmi_TMDS_Data_n(1)
    );
\hdmi/DataEncoders[1].DataSerializer/SerializerMaster\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => clk_hdmi,
      CLKDIV => \^clk_display\,
      D1 => \hdmi/pDataOutRaw[1]\(0),
      D2 => \hdmi/pDataOutRaw[1]\(1),
      D3 => \hdmi/pDataOutRaw[1]\(2),
      D4 => \hdmi/pDataOutRaw[1]\(3),
      D5 => \hdmi/pDataOutRaw[1]\(4),
      D6 => \hdmi/pDataOutRaw[1]\(5),
      D7 => \hdmi/pDataOutRaw[1]\(6),
      D8 => \hdmi/pDataOutRaw[1]\(7),
      OCE => '1',
      OFB => \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_OFB_UNCONNECTED\,
      OQ => \hdmi/DataEncoders[1].DataSerializer/I\,
      RST => \hdmi/LockLostReset/SyncAsyncx/oSyncStages\(1),
      SHIFTIN1 => \hdmi/DataEncoders[1].DataSerializer/SHIFTIN1\,
      SHIFTIN2 => \hdmi/DataEncoders[1].DataSerializer/SHIFTIN2\,
      SHIFTOUT1 => \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED\,
      TCE => '0',
      TFB => \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_TFB_UNCONNECTED\,
      TQ => \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerMaster_TQ_UNCONNECTED\
    );
\hdmi/DataEncoders[1].DataSerializer/SerializerSlave\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => clk_hdmi,
      CLKDIV => \^clk_display\,
      D1 => '0',
      D2 => '0',
      D3 => \hdmi/pDataOutRaw[1]\(8),
      D4 => \hdmi/pDataOutRaw[1]\(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_OFB_UNCONNECTED\,
      OQ => \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_OQ_UNCONNECTED\,
      RST => \hdmi/LockLostReset/SyncAsyncx/oSyncStages\(1),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \hdmi/DataEncoders[1].DataSerializer/SHIFTIN1\,
      SHIFTOUT2 => \hdmi/DataEncoders[1].DataSerializer/SHIFTIN2\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED\,
      TCE => '0',
      TFB => \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_TFB_UNCONNECTED\,
      TQ => \NLW_hdmi/DataEncoders[1].DataSerializer/SerializerSlave_TQ_UNCONNECTED\
    );
\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/cnt_t_2\(1),
      Q => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(1),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/cnt_t_2\(2),
      Q => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(2),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/cnt_t_2\(3),
      Q => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(3),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/cnt_t_2\(4),
      Q => \hdmi/DataEncoders[2].DataEncoder/cnt_t_3_reg_n_0_\(4),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n0q_m_2[1]_i_1__0_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(1),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n0q_m_2[1]_i_1__0_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[1]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n0q_m_2[2]_i_1__1_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(2),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/n0q_m_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n0q_m_2[3]_i_1__1_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/n0q_m_2\(3),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/n1d_1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4_n_0\,
      I1 => vid_pData(20),
      I2 => vid_pData(22),
      I3 => vid_pData(21),
      O => \hdmi/DataEncoders[2].DataEncoder/sum_bits__0\(0)
    );
\hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7DD78228"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4_n_0\,
      I1 => vid_pData(20),
      I2 => vid_pData(22),
      I3 => vid_pData(21),
      I4 => \hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_2_n_0\,
      O => \hdmi/DataEncoders[2].DataEncoder/sum_bits__0\(1)
    );
\hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17717117E88E8EE8"
    )
        port map (
      I0 => vid_pData(16),
      I1 => vid_pData(23),
      I2 => vid_pData(18),
      I3 => vid_pData(19),
      I4 => vid_pData(17),
      I5 => \hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_3_n_0\,
      O => \hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_2_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => vid_pData(22),
      I1 => vid_pData(21),
      I2 => vid_pData(20),
      I3 => vid_pData(19),
      I4 => vid_pData(18),
      I5 => vid_pData(17),
      O => \hdmi/DataEncoders[2].DataEncoder/n1d_1[1]_i_3_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/n1d_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFEFEEAEAA8A880"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_3_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4_n_0\,
      I2 => vid_pData(20),
      I3 => vid_pData(21),
      I4 => vid_pData(22),
      I5 => \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_2_n_0\,
      O => \hdmi/DataEncoders[2].DataEncoder/sum_bits__0\(2)
    );
\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_2_n_0\,
      I1 => vid_pData(20),
      I2 => vid_pData(21),
      I3 => vid_pData(22),
      I4 => \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_3_n_0\,
      I5 => \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4_n_0\,
      O => \hdmi/DataEncoders[2].DataEncoder/sum_bits__0\(3)
    );
\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(17),
      I1 => vid_pData(18),
      I2 => vid_pData(19),
      O => \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_2_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF969600"
    )
        port map (
      I0 => vid_pData(17),
      I1 => vid_pData(19),
      I2 => vid_pData(18),
      I3 => vid_pData(23),
      I4 => vid_pData(16),
      O => \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_3_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => vid_pData(17),
      I1 => vid_pData(19),
      I2 => vid_pData(18),
      I3 => vid_pData(23),
      I4 => vid_pData(16),
      O => \hdmi/DataEncoders[2].DataEncoder/n1d_1[3]_i_4_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/sum_bits__0\(0),
      Q => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(0),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/sum_bits__0\(1),
      Q => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(1),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/sum_bits__0\(2),
      Q => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(2),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/n1d_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/sum_bits__0\(3),
      Q => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(3),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n1q_m_2[0]_i_1__1_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(0),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/n1q_m_1\(1),
      Q => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(1),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \n1q_m_2[1]_rep_i_1_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/n1q_m_1\(2),
      Q => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(2),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/n1q_m_1\(3),
      Q => \hdmi/DataEncoders[2].DataEncoder/n1q_m_2_reg_n_0_\(3),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[0]_i_1__0_n_0\,
      Q => \hdmi/pDataOutRaw[2]\(0),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[1]_i_1__0_n_0\,
      Q => \hdmi/pDataOutRaw[2]\(1),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/q_out_2\(2),
      Q => \hdmi/pDataOutRaw[2]\(2),
      S => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[3]_i_1__0_n_0\,
      Q => \hdmi/pDataOutRaw[2]\(3),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/q_out_2\(4),
      Q => \hdmi/pDataOutRaw[2]\(4),
      S => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[5]_i_1__0_n_0\,
      Q => \hdmi/pDataOutRaw[2]\(5),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/q_out_2\(6),
      Q => \hdmi/pDataOutRaw[2]\(6),
      S => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[7]_i_1__0_n_0\,
      Q => \hdmi/pDataOutRaw[2]\(7),
      R => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/q_out_2\(8),
      Q => \hdmi/pDataOutRaw[2]\(8),
      S => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOutRaw_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \pDataOutRaw[9]_i_1__1_n_0\,
      Q => \hdmi/pDataOutRaw[2]\(9),
      S => \cnt_t_3[4]_i_1_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(16),
      Q => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\(0),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(16),
      Q => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(16),
      Q => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(17),
      Q => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\(1),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(17),
      Q => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(18),
      Q => \hdmi/DataEncoders[2].DataEncoder/p_0_in0_in\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(19),
      Q => \hdmi/DataEncoders[2].DataEncoder/p_0_in2_in\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(19),
      Q => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(20),
      Q => \hdmi/DataEncoders[2].DataEncoder/p_0_in4_in\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(21),
      Q => \hdmi/DataEncoders[2].DataEncoder/p_0_in6_in\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(22),
      Q => \hdmi/DataEncoders[2].DataEncoder/p_0_in8_in\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(22),
      Q => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => vid_pData(23),
      Q => \hdmi/DataEncoders[2].DataEncoder/p_0_in10_in\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => \^clk_display\,
      D => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3_n_0\
    );
\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/pVde_2\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/pVde_1_reg_srl3_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2_n_0\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(0),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \q_m_2[1]_i_1__1_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(1),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/p_0_in9_in\,
      Q => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(2),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \q_m_2[3]_i_1__1_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(3),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/p_0_in7_in\,
      Q => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(4),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \q_m_2[5]_i_1__1_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(5),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/p_0_in5_in\,
      Q => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(6),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/DataEncoders[2].DataEncoder/p_1_in12_in\,
      Q => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(7),
      R => '0'
    );
\hdmi/DataEncoders[2].DataEncoder/q_m_2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \q_m_2[8]_i_1__1_n_0\,
      Q => \hdmi/DataEncoders[2].DataEncoder/p_0_in\,
      R => '0'
    );
\hdmi/DataEncoders[2].DataSerializer/OutputBuffer\: unisim.vcomponents.OBUFDS
     port map (
      I => \hdmi/DataEncoders[2].DataSerializer/I\,
      O => hdmi_TMDS_Data_p(2),
      OB => hdmi_TMDS_Data_n(2)
    );
\hdmi/DataEncoders[2].DataSerializer/SerializerMaster\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => clk_hdmi,
      CLKDIV => \^clk_display\,
      D1 => \hdmi/pDataOutRaw[2]\(0),
      D2 => \hdmi/pDataOutRaw[2]\(1),
      D3 => \hdmi/pDataOutRaw[2]\(2),
      D4 => \hdmi/pDataOutRaw[2]\(3),
      D5 => \hdmi/pDataOutRaw[2]\(4),
      D6 => \hdmi/pDataOutRaw[2]\(5),
      D7 => \hdmi/pDataOutRaw[2]\(6),
      D8 => \hdmi/pDataOutRaw[2]\(7),
      OCE => '1',
      OFB => \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_OFB_UNCONNECTED\,
      OQ => \hdmi/DataEncoders[2].DataSerializer/I\,
      RST => \hdmi/LockLostReset/SyncAsyncx/oSyncStages\(1),
      SHIFTIN1 => \hdmi/DataEncoders[2].DataSerializer/SHIFTIN1\,
      SHIFTIN2 => \hdmi/DataEncoders[2].DataSerializer/SHIFTIN2\,
      SHIFTOUT1 => \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_SHIFTOUT2_UNCONNECTED\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_TBYTEOUT_UNCONNECTED\,
      TCE => '0',
      TFB => \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_TFB_UNCONNECTED\,
      TQ => \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerMaster_TQ_UNCONNECTED\
    );
\hdmi/DataEncoders[2].DataSerializer/SerializerSlave\: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => clk_hdmi,
      CLKDIV => \^clk_display\,
      D1 => '0',
      D2 => '0',
      D3 => \hdmi/pDataOutRaw[2]\(8),
      D4 => \hdmi/pDataOutRaw[2]\(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_OFB_UNCONNECTED\,
      OQ => \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_OQ_UNCONNECTED\,
      RST => \hdmi/LockLostReset/SyncAsyncx/oSyncStages\(1),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \hdmi/DataEncoders[2].DataSerializer/SHIFTIN1\,
      SHIFTOUT2 => \hdmi/DataEncoders[2].DataSerializer/SHIFTIN2\,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_TBYTEOUT_UNCONNECTED\,
      TCE => '0',
      TFB => \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_TFB_UNCONNECTED\,
      TQ => \NLW_hdmi/DataEncoders[2].DataSerializer/SerializerSlave_TQ_UNCONNECTED\
    );
\hdmi/LockLostReset/SyncAsyncx/oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => '0',
      PRE => \hdmi/LockLostReset/aRst_int\,
      Q => \hdmi/LockLostReset/SyncAsyncx/oSyncStages\(0)
    );
\hdmi/LockLostReset/SyncAsyncx/oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \hdmi/LockLostReset/SyncAsyncx/oSyncStages\(0),
      PRE => \hdmi/LockLostReset/aRst_int\,
      Q => \hdmi/LockLostReset/SyncAsyncx/oSyncStages\(1)
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(8),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(9),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0_n_0\,
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep_n_0\,
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(9),
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(9),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(8),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(8),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(9),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0_n_0\,
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep_n_0\,
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(4),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0_n_0\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(6),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(7),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(6),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(7),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(8),
      I1 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(9),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(0),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(1),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0_n_0\,
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(4),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(5),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(3),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(3),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(4),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0_n_0\,
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(6),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(7),
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0_n_0\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(0),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(1),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(0),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(1),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(4),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(5),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sync_c_q_reg[0][9]_i_2_n_6\,
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(8),
      I1 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(9),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(6),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(7),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(6),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(7),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(6),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(7),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(7),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(6),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(3),
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(6),
      I1 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(5),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(4),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(4),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0_n_0\,
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(4),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_5__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(0),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(1),
      O => \i__carry_i_5__3_n_0\
    );
\i__carry_i_5__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(4),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep_n_0\,
      O => \i__carry_i_5__4_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(5),
      I1 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(4),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(3),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(3),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(3),
      O => \i__carry_i_6__2_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(0),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(1),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(0),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(1),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(0),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(1),
      O => \i__carry_i_7__1_n_0\
    );
\index0__23_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/index0_carry__1_n_6\,
      O => \index0__23_carry_i_1_n_0\
    );
\index0__23_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/index0_carry__1_n_7\,
      O => \index0__23_carry_i_2_n_0\
    );
\index0__23_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/index0_carry__0_n_4\,
      O => \index0__23_carry_i_3_n_0\
    );
\index0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFC0FFFFAFC00000"
    )
        port map (
      I0 => \index0_carry__0_i_8_n_0\,
      I1 => \index0_carry__0_i_9_n_0\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0\,
      I3 => \VGA_r/vga_mem_rd/sync[c][1]\(8),
      I4 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I5 => \index0_carry__0_i_10_n_0\,
      O => \VGA_r/vga_mem_rd/v[1]\(7)
    );
\index0_carry__0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AFFFC00"
    )
        port map (
      I0 => \index0_carry__0_i_12_n_0\,
      I1 => \index0_carry__0_i_13_n_0\,
      I2 => \index0_carry__0_i_14_n_5\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0\,
      I4 => \index0_carry__0_i_14_n_4\,
      O => \index0_carry__0_i_10_n_0\
    );
\index0_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACF0"
    )
        port map (
      I0 => \index0_carry__0_i_18_n_0\,
      I1 => \index0_carry__0_i_19_n_0\,
      I2 => \VGA_r/vga_mem_rd/sync[c][1]\(7),
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0\,
      O => \index0_carry__0_i_11_n_0\
    );
\index0_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \index0_carry__0_i_14_n_7\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6\,
      I4 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_4\,
      I5 => \index0_carry__0_i_14_n_6\,
      O => \index0_carry__0_i_12_n_0\
    );
\index0_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \index0_carry__0_i_14_n_7\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7\,
      I4 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_4\,
      I5 => \index0_carry__0_i_14_n_6\,
      O => \index0_carry__0_i_13_n_0\
    );
\index0_carry__0_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_0\,
      CO(3) => \NLW_index0_carry__0_i_14_CO_UNCONNECTED\(3),
      CO(2) => \index0_carry__0_i_14_n_1\,
      CO(1) => \index0_carry__0_i_14_n_2\,
      CO(0) => \index0_carry__0_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \index0_carry__0_i_14_n_4\,
      O(2) => \index0_carry__0_i_14_n_5\,
      O(1) => \index0_carry__0_i_14_n_6\,
      O(0) => \index0_carry__0_i_14_n_7\,
      S(3) => \index0_carry__0_i_20_n_0\,
      S(2) => \index0_carry__0_i_21_n_0\,
      S(1) => \index0_carry__0_i_22_n_0\,
      S(0) => \index0_carry__0_i_23_n_0\
    );
\index0_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep_n_0\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep_n_0\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0\,
      I5 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep_n_0\,
      O => \index0_carry__0_i_15_n_0\
    );
\index0_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => \index0_carry__0_i_14_n_6\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_4\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6\,
      I4 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5\,
      I5 => \index0_carry__0_i_14_n_7\,
      O => \index0_carry__0_i_16_n_0\
    );
\index0_carry__0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AFFFC00"
    )
        port map (
      I0 => \index0_carry__0_i_18_n_0\,
      I1 => \index0_carry__0_i_19_n_0\,
      I2 => \VGA_r/vga_mem_rd/sync[c][1]\(7),
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0\,
      I4 => \VGA_r/vga_mem_rd/sync[c][1]\(8),
      O => \index0_carry__0_i_17_n_0\
    );
\index0_carry__0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(5),
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(1),
      I2 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0\,
      I3 => \VGA_r/vga_mem_rd/sync[c][1]\(3),
      I4 => \VGA_r/vga_mem_rd/sync[c][1]\(4),
      I5 => \VGA_r/vga_mem_rd/sync[c][1]\(6),
      O => \index0_carry__0_i_18_n_0\
    );
\index0_carry__0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(5),
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(1),
      I2 => \VGA_r/vga_mem_rd/sync[c][1]\(3),
      I3 => \VGA_r/vga_mem_rd/sync[c][1]\(2),
      I4 => \VGA_r/vga_mem_rd/sync[c][1]\(4),
      I5 => \VGA_r/vga_mem_rd/sync[c][1]\(6),
      O => \index0_carry__0_i_19_n_0\
    );
\index0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8BBBBBB888888"
    )
        port map (
      I0 => \index0_carry__0_i_11_n_0\,
      I1 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I2 => \index0_carry__0_i_12_n_0\,
      I3 => \index0_carry__0_i_13_n_0\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0\,
      I5 => \index0_carry__0_i_14_n_5\,
      O => \VGA_r/vga_mem_rd/v[1]\(6)
    );
\index0_carry__0_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(8),
      O => \index0_carry__0_i_20_n_0\
    );
\index0_carry__0_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(7),
      O => \index0_carry__0_i_21_n_0\
    );
\index0_carry__0_i_22\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep_n_0\,
      O => \index0_carry__0_i_22_n_0\
    );
\index0_carry__0_i_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep_n_0\,
      O => \index0_carry__0_i_23_n_0\
    );
\index0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \index0_carry__0_i_15_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep_n_0\,
      I2 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I3 => \index0_carry__0_i_16_n_0\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0\,
      I5 => \index0_carry__0_i_14_n_6\,
      O => \VGA_r/vga_mem_rd/v[1]\(5)
    );
\index0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8BBBBBB888888"
    )
        port map (
      I0 => \index0_carry__0_i_11_n_0\,
      I1 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I2 => \index0_carry__0_i_12_n_0\,
      I3 => \index0_carry__0_i_13_n_0\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0\,
      I5 => \index0_carry__0_i_14_n_5\,
      O => \index0_carry__0_i_4_n_0\
    );
\index0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \index0_carry__0_i_10_n_0\,
      I1 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I2 => \index0_carry__0_i_17_n_0\,
      I3 => \VGA_r/vga_mem_rd/v[1]\(5),
      O => \index0_carry__0_i_5_n_0\
    );
\index0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => index0_carry_i_8_n_0,
      I1 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I2 => index0_carry_i_9_n_0,
      I3 => \VGA_r/vga_mem_rd/v[1]\(6),
      O => \index0_carry__0_i_6_n_0\
    );
\index0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/v[1]\(5),
      I1 => \VGA_r/vga_mem_rd/v[1]\(3),
      O => \index0_carry__0_i_7_n_0\
    );
\index0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][6]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(4),
      I2 => index0_carry_i_10_n_0,
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep_n_0\,
      I5 => \VGA_r/vga_mem_rd/sync[c][1]\(7),
      O => \index0_carry__0_i_8_n_0\
    );
\index0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(6),
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(4),
      I2 => index0_carry_i_10_n_0,
      I3 => \VGA_r/vga_mem_rd/sync[c][1]\(1),
      I4 => \VGA_r/vga_mem_rd/sync[c][1]\(5),
      I5 => \VGA_r/vga_mem_rd/sync[c][1]\(7),
      O => \index0_carry__0_i_9_n_0\
    );
\index0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0CFFFFFA0CF0000"
    )
        port map (
      I0 => \index0_carry__0_i_9_n_0\,
      I1 => \index0_carry__0_i_8_n_0\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0\,
      I3 => \VGA_r/vga_mem_rd/sync[c][1]\(8),
      I4 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I5 => \index0_carry__1_i_2_n_0\,
      O => \index0_carry__1_i_1_n_0\
    );
\index0_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC000AFF"
    )
        port map (
      I0 => \index0_carry__0_i_12_n_0\,
      I1 => \index0_carry__0_i_13_n_0\,
      I2 => \index0_carry__0_i_14_n_5\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0\,
      I4 => \index0_carry__0_i_14_n_4\,
      O => \index0_carry__1_i_2_n_0\
    );
index0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => index0_carry_i_8_n_0,
      I1 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I2 => index0_carry_i_9_n_0,
      O => index0_carry_i_1_n_0
    );
index0_carry_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(3),
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(2),
      O => index0_carry_i_10_n_0
    );
index0_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0\,
      I4 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_4\,
      O => index0_carry_i_11_n_0
    );
index0_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep_n_0\,
      O => index0_carry_i_12_n_0
    );
index0_carry_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"606FCFCF6F60C0C0"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(1),
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(2),
      I2 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0\,
      I5 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6\,
      O => \VGA_r/vga_mem_rd/v[1]\(1)
    );
index0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FE0FFFF1FE00000"
    )
        port map (
      I0 => index0_carry_i_10_n_0,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep_n_0\,
      I4 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I5 => index0_carry_i_11_n_0,
      O => \VGA_r/vga_mem_rd/v[1]\(3)
    );
index0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BBBBBBBB88888"
    )
        port map (
      I0 => index0_carry_i_12_n_0,
      I1 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0\,
      I5 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5\,
      O => \VGA_r/vga_mem_rd/v[1]\(2)
    );
index0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"47B8"
    )
        port map (
      I0 => index0_carry_i_8_n_0,
      I1 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I2 => index0_carry_i_9_n_0,
      I3 => \VGA_r/vga_mem_rd/v[1]\(2),
      O => index0_carry_i_4_n_0
    );
index0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/v[1]\(3),
      I1 => \VGA_r/vga_mem_rd/v[1]\(1),
      O => index0_carry_i_5_n_0
    );
index0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/v[1]\(2),
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7\,
      I2 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0_n_0\,
      O => index0_carry_i_6_n_0
    );
index0_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"606FCFCF6F60C0C0"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(1),
      I1 => \VGA_r/vga_mem_rd/sync[c][1]\(2),
      I2 => \VGA_r/vga_mem_rd/divOp[1]3_carry__2_n_0\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep_n_0\,
      I5 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6\,
      O => index0_carry_i_7_n_0
    );
index0_carry_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep_n_0\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep_n_0\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__2_n_0\,
      I5 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][5]_rep_n_0\,
      O => index0_carry_i_8_n_0
    );
index0_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_4\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][31]_rep__1_n_0\,
      I5 => \index0_carry__0_i_14_n_7\,
      O => index0_carry_i_9_n_0
    );
ltOp0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(9),
      O => ltOp0_carry_i_1_n_0
    );
ltOp0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(3),
      O => ltOp0_carry_i_2_n_0
    );
ltOp0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(9),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(8),
      O => ltOp0_carry_i_3_n_0
    );
ltOp0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(6),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(7),
      O => ltOp0_carry_i_4_n_0
    );
ltOp0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(4),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(5),
      O => ltOp0_carry_i_5_n_0
    );
ltOp0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(3),
      O => ltOp0_carry_i_6_n_0
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_0\,
      CO(3 downto 2) => \NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_2\,
      CO(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_1_O_UNCONNECTED\(3),
      O(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_5\,
      O(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_6\,
      O(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_1_n_7\,
      S(3) => '0',
      S(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_11_n_0\,
      S(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_12_n_0\,
      S(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_13_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(1),
      I1 => \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_10_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/index0__23_carry_n_5\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_11_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/index0__23_carry_n_6\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_12_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/index0__23_carry_n_7\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_13_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/index0_carry__0_n_5\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_14_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/index0_carry__0_n_6\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_15_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/index0_carry__0_n_7\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_16_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/index0_carry_n_4\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_17_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8BBBBBB888888"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_33_n_0\,
      I1 => \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_34_n_0\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_35_n_0\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2_n_0\,
      I5 => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_5\,
      O => \VGA_r/vga_mem_rd/v[0]__0\(6)
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/index0_carry_n_5\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_19_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_0\,
      CO(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_0\,
      CO(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_1\,
      CO(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_2\,
      CO(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_4\,
      O(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_5\,
      O(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_6\,
      O(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_2_n_7\,
      S(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_14_n_0\,
      S(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_15_n_0\,
      S(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_16_n_0\,
      S(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_17_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_0\,
      CO(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_1\,
      CO(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_2\,
      CO(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_3\,
      CYINIT => \mem2p_76800_8_g.mem2p_76800_8_i_i_41_n_0\,
      DI(3 downto 0) => B"0000",
      O(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_4\,
      O(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_5\,
      O(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_6\,
      O(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_23_n_7\,
      S(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_42_n_0\,
      S(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_43_n_0\,
      S(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_44_n_0\,
      S(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_45_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_4\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_31_n_0\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_7\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0\,
      I5 => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_6\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_24_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(4),
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_30_n_0\,
      I2 => \VGA_r/vga_mem_rd/sync[c][0]\(3),
      I3 => \VGA_r/vga_mem_rd/sync[c][0]\(5),
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0\,
      I5 => \VGA_r/vga_mem_rd/sync[c][0]\(6),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_25_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_4\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0\,
      I5 => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_7\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_26_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFFFFFE0000"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(3),
      I1 => \VGA_r/vga_mem_rd/sync[c][0]\(1),
      I2 => \VGA_r/vga_mem_rd/sync[c][0]\(2),
      I3 => \VGA_r/vga_mem_rd/sync[c][0]\(4),
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2_n_0\,
      I5 => \VGA_r/vga_mem_rd/sync[c][0]\(5),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_27_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0\,
      I4 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_4\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_28_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFE00"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep_n_0\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep_n_0\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__2_n_0\,
      I4 => \VGA_r/vga_mem_rd/sync[c][0]\(4),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_29_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_0\,
      CO(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_1\,
      CO(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_2\,
      CO(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \VGA_r/vga_mem_rd/index0_carry_n_6\,
      DI(1) => \VGA_r/vga_mem_rd/index0_carry_n_7\,
      DI(0) => \VGA_r/vga_mem_rd/v[0]__0\(6),
      O(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_4\,
      O(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_5\,
      O(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_3_n_6\,
      O(0) => \NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_3_O_UNCONNECTED\(0),
      S(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_19_n_0\,
      S(2) => \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_20_n_0\,
      S(1) => \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_21_n_0\,
      S(0) => \VGA_r/vga_mem_rd/mem2p_76800_8_g.mem2p_76800_8_i_i_22_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(1),
      I1 => \VGA_r/vga_mem_rd/sync[c][0]\(2),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_30_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_31_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_32\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_0\,
      CO(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_1\,
      CO(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_2\,
      CO(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_3\,
      CYINIT => \mem2p_76800_8_g.mem2p_76800_8_i_i_46_n_0\,
      DI(3 downto 0) => B"0000",
      O(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_4\,
      O(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5\,
      O(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6\,
      O(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7\,
      S(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_47_n_0\,
      S(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_48_n_0\,
      S(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_49_n_0\,
      S(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_50_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACF0"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_51_n_0\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_52_n_0\,
      I2 => \VGA_r/vga_mem_rd/sync[c][0]\(7),
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_33_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_7\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6\,
      I4 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_4\,
      I5 => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_6\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_34_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_7\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7\,
      I4 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_4\,
      I5 => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_6\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_35_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_36\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_0\,
      CO(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_0\,
      CO(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_1\,
      CO(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_2\,
      CO(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_4\,
      O(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_5\,
      O(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_6\,
      O(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_7\,
      S(3) => \mem2p_76800_8_g.mem2p_76800_8_i_i_53_n_0\,
      S(2) => \mem2p_76800_8_g.mem2p_76800_8_i_i_54_n_0\,
      S(1) => \mem2p_76800_8_g.mem2p_76800_8_i_i_55_n_0\,
      S(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_56_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0022FFFFFFFC0000"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_34_n_0\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_5\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_35_n_0\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_4\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0\,
      I5 => \mem2p_76800_8_g.mem2p_76800_8_i_i_57_n_7\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_37_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0022FFFFFFFC0000"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_51_n_0\,
      I1 => \VGA_r/vga_mem_rd/sync[c][0]\(7),
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_52_n_0\,
      I3 => \VGA_r/vga_mem_rd/sync[c][0]\(8),
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0\,
      I5 => \VGA_r/vga_mem_rd/sync[c][0]\(9),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_38_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AFFFC00"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_34_n_0\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_35_n_0\,
      I2 => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_5\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0\,
      I4 => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_4\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_39_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0AFFFC00"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_51_n_0\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_52_n_0\,
      I2 => \VGA_r/vga_mem_rd/sync[c][0]\(7),
      I3 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep_n_0\,
      I4 => \VGA_r/vga_mem_rd/sync[c][0]\(8),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_40_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_41\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][1]\(0),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_41_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_42\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][4]_rep_n_0\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_42_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_43\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][3]_rep_n_0\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_43_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_44\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][2]_rep_n_0\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_44_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_45\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][1][1]_rep__0_n_0\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_45_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_46\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(0),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_46_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_47\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][4]_rep_n_0\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_47_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_48\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][3]_rep_n_0\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_48_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_49\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][2]_rep_n_0\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_49_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_24_n_0\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_25_n_0\,
      O => \VGA_r/vga_mem_rd/v[0]\(5),
      S => \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_50\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][1]_rep_n_0\,
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_50_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(5),
      I1 => \VGA_r/vga_mem_rd/sync[c][0]\(3),
      I2 => \VGA_r/vga_mem_rd/sync[c][0]\(2),
      I3 => \VGA_r/vga_mem_rd/sync[c][0]\(1),
      I4 => \VGA_r/vga_mem_rd/sync[c][0]\(4),
      I5 => \VGA_r/vga_mem_rd/sync[c][0]\(6),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_51_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(5),
      I1 => \VGA_r/vga_mem_rd/sync[c][0]\(3),
      I2 => \VGA_r/vga_mem_rd/sync[c][0]\(1),
      I3 => \VGA_r/vga_mem_rd/sync[c][0]\(2),
      I4 => \VGA_r/vga_mem_rd/sync[c][0]\(4),
      I5 => \VGA_r/vga_mem_rd/sync[c][0]\(6),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_52_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_53\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(8),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_53_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_54\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(7),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_54_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_55\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(6),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_55_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_56\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(5),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_56_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_57\: unisim.vcomponents.CARRY4
     port map (
      CI => \mem2p_76800_8_g.mem2p_76800_8_i_i_36_n_0\,
      CO(3 downto 0) => \NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_57_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_mem2p_76800_8_g.mem2p_76800_8_i_i_57_O_UNCONNECTED\(3 downto 1),
      O(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_57_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \mem2p_76800_8_g.mem2p_76800_8_i_i_58_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_58\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(9),
      O => \mem2p_76800_8_g.mem2p_76800_8_i_i_58_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_26_n_0\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_27_n_0\,
      O => \VGA_r/vga_mem_rd/v[0]\(4),
      S => \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_28_n_0\,
      I1 => \mem2p_76800_8_g.mem2p_76800_8_i_i_29_n_0\,
      O => \VGA_r/vga_mem_rd/v[0]\(3),
      S => \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0\
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"606FCFCF6F60C0C0"
    )
        port map (
      I0 => \mem2p_76800_8_g.mem2p_76800_8_i_i_30_n_0\,
      I1 => \VGA_r/vga_mem_rd/sync[c][0]\(3),
      I2 => \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_31_n_0\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__1_n_0\,
      I5 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_5\,
      O => \VGA_r/vga_mem_rd/v[0]\(2)
    );
\mem2p_76800_8_g.mem2p_76800_8_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"606FCFCF6F60C0C0"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/sync[c][0]\(1),
      I1 => \VGA_r/vga_mem_rd/sync[c][0]\(2),
      I2 => \VGA_r/vga_mem_rd/divOp[0]3_carry__2_n_0\,
      I3 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_7\,
      I4 => \VGA_r/vga_mem_rd/C_Sync/sync_reg[c][0][31]_rep__0_n_0\,
      I5 => \mem2p_76800_8_g.mem2p_76800_8_i_i_32_n_6\,
      O => \VGA_r/vga_mem_rd/v[0]\(1)
    );
\minusOp[0]_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep__0_n_0\,
      O => \minusOp[0]_carry__0_i_1_n_0\
    );
\minusOp[0]_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep__0_n_0\,
      O => \minusOp[0]_carry__0_i_2_n_0\
    );
\minusOp[0]_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(7),
      O => \minusOp[0]_carry__0_i_3_n_0\
    );
\minusOp[0]_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(6),
      O => \minusOp[0]_carry_i_1_n_0\
    );
\minusOp[0]_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep__0_n_0\,
      O => \minusOp[0]_carry_i_2_n_0\
    );
\minusOp[0]_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(4),
      O => \minusOp[0]_carry_i_3_n_0\
    );
\minusOp[0]_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(3),
      O => \minusOp[0]_carry_i_4_n_0\
    );
\minusOp[1]_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(8),
      O => \minusOp[1]_carry__0_i_1_n_0\
    );
\minusOp[1]_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(7),
      O => \minusOp[1]_carry__0_i_2_n_0\
    );
\minusOp[1]_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(6),
      O => \minusOp[1]_carry__0_i_3_n_0\
    );
\minusOp[1]_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(5),
      O => \minusOp[1]_carry__0_i_4_n_0\
    );
\minusOp[1]_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(9),
      O => \minusOp[1]_carry__1_i_1_n_0\
    );
\minusOp[1]_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(4),
      O => \minusOp[1]_carry_i_1_n_0\
    );
\minusOp[1]_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(3),
      O => \minusOp[1]_carry_i_2_n_0\
    );
\minusOp[1]_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(2),
      O => \minusOp[1]_carry_i_3_n_0\
    );
\minusOp[1]_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(1),
      O => \minusOp[1]_carry_i_4_n_0\
    );
\n0q_m_2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55559669"
    )
        port map (
      I0 => \n0q_m_2[1]_i_2_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/p_0_in7_in\,
      I2 => \q_m_2[5]_i_2_n_0\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/p_0_in8_in\,
      I4 => \n0q_m_2[1]_i_3_n_0\,
      O => \n0q_m_2[1]_i_1_n_0\
    );
\n0q_m_2[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55559669"
    )
        port map (
      I0 => \n0q_m_2[1]_i_2__1_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/p_0_in7_in\,
      I2 => \q_m_2[5]_i_2__1_n_0\,
      I3 => \hdmi/DataEncoders[2].DataEncoder/p_0_in8_in\,
      I4 => \n0q_m_2[1]_i_3__1_n_0\,
      O => \n0q_m_2[1]_i_1__0_n_0\
    );
\n0q_m_2[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55559669"
    )
        port map (
      I0 => \n0q_m_2[1]_i_2__0_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/p_0_in7_in\,
      I2 => \q_m_2[5]_i_2__0_n_0\,
      I3 => \hdmi/DataEncoders[1].DataEncoder/p_0_in8_in\,
      I4 => \n0q_m_2[1]_i_3__0_n_0\,
      O => \n0q_m_2[1]_i_1__1_n_0\
    );
\n0q_m_2[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3AA3C55C"
    )
        port map (
      I0 => \n1q_m_2[1]_i_2_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I4 => \n1q_m_2[1]_i_3_n_0\,
      O => \n0q_m_2[1]_i_2_n_0\
    );
\n0q_m_2[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3AA3C55C"
    )
        port map (
      I0 => \n1q_m_2[1]_i_2__0_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      I3 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I4 => \n1q_m_2[1]_i_3__0_n_0\,
      O => \n0q_m_2[1]_i_2__0_n_0\
    );
\n0q_m_2[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3AA3C55C"
    )
        port map (
      I0 => \n1q_m_2[1]_i_2__1_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      I3 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I4 => \n1q_m_2[1]_i_3__1_n_0\,
      O => \n0q_m_2[1]_i_2__1_n_0\
    );
\n0q_m_2[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \n0q_m_2[1]_i_4_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/p_0_in10_in\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      I3 => \q_m_2[8]_i_1_n_0\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      O => \n0q_m_2[1]_i_3_n_0\
    );
\n0q_m_2[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \n0q_m_2[1]_i_4__0_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/p_0_in10_in\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      I3 => \q_m_2[8]_i_1__0_n_0\,
      I4 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      O => \n0q_m_2[1]_i_3__0_n_0\
    );
\n0q_m_2[1]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \n0q_m_2[1]_i_4__1_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/p_0_in10_in\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      I3 => \q_m_2[8]_i_1__1_n_0\,
      I4 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      O => \n0q_m_2[1]_i_3__1_n_0\
    );
\n0q_m_2[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/p_0_in8_in\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/p_0_in7_in\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/p_0_in6_in\,
      O => \n0q_m_2[1]_i_4_n_0\
    );
\n0q_m_2[1]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/p_0_in8_in\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/p_0_in7_in\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/p_0_in6_in\,
      O => \n0q_m_2[1]_i_4__0_n_0\
    );
\n0q_m_2[1]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/p_0_in8_in\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/p_0_in7_in\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/p_0_in6_in\,
      O => \n0q_m_2[1]_i_4__1_n_0\
    );
\n0q_m_2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFF771F7711000"
    )
        port map (
      I0 => \n0q_m_2[3]_i_2_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      I2 => \n1q_m_2[1]_i_2_n_0\,
      I3 => \n0q_m_2[3]_i_3_n_0\,
      I4 => \n0q_m_2[3]_i_4_n_0\,
      I5 => \n0q_m_2[3]_i_5_n_0\,
      O => \n0q_m_2[2]_i_1_n_0\
    );
\n0q_m_2[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFF771F7711000"
    )
        port map (
      I0 => \n0q_m_2[3]_i_2__0_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      I2 => \n1q_m_2[1]_i_2__0_n_0\,
      I3 => \n0q_m_2[3]_i_3__0_n_0\,
      I4 => \n0q_m_2[3]_i_4__0_n_0\,
      I5 => \n0q_m_2[3]_i_5__0_n_0\,
      O => \n0q_m_2[2]_i_1__0_n_0\
    );
\n0q_m_2[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFF771F7711000"
    )
        port map (
      I0 => \n0q_m_2[3]_i_2__1_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      I2 => \n1q_m_2[1]_i_2__1_n_0\,
      I3 => \n0q_m_2[3]_i_3__1_n_0\,
      I4 => \n0q_m_2[3]_i_4__1_n_0\,
      I5 => \n0q_m_2[3]_i_5__1_n_0\,
      O => \n0q_m_2[2]_i_1__1_n_0\
    );
\n0q_m_2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \n0q_m_2[3]_i_2_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      I2 => \n1q_m_2[1]_i_2_n_0\,
      I3 => \n0q_m_2[3]_i_3_n_0\,
      I4 => \n0q_m_2[3]_i_4_n_0\,
      I5 => \n0q_m_2[3]_i_5_n_0\,
      O => \n0q_m_2[3]_i_1_n_0\
    );
\n0q_m_2[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \n0q_m_2[3]_i_2__0_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      I2 => \n1q_m_2[1]_i_2__0_n_0\,
      I3 => \n0q_m_2[3]_i_3__0_n_0\,
      I4 => \n0q_m_2[3]_i_4__0_n_0\,
      I5 => \n0q_m_2[3]_i_5__0_n_0\,
      O => \n0q_m_2[3]_i_1__0_n_0\
    );
\n0q_m_2[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => \n0q_m_2[3]_i_2__1_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      I2 => \n1q_m_2[1]_i_2__1_n_0\,
      I3 => \n0q_m_2[3]_i_3__1_n_0\,
      I4 => \n0q_m_2[3]_i_4__1_n_0\,
      I5 => \n0q_m_2[3]_i_5__1_n_0\,
      O => \n0q_m_2[3]_i_1__1_n_0\
    );
\n0q_m_2[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      O => \n0q_m_2[3]_i_2_n_0\
    );
\n0q_m_2[3]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      O => \n0q_m_2[3]_i_2__0_n_0\
    );
\n0q_m_2[3]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      O => \n0q_m_2[3]_i_2__1_n_0\
    );
\n0q_m_2[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/p_0_in7_in\,
      I1 => \q_m_2[5]_i_2_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/p_0_in8_in\,
      O => \n0q_m_2[3]_i_3_n_0\
    );
\n0q_m_2[3]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/p_0_in7_in\,
      I1 => \q_m_2[5]_i_2__0_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/p_0_in8_in\,
      O => \n0q_m_2[3]_i_3__0_n_0\
    );
\n0q_m_2[3]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/p_0_in7_in\,
      I1 => \q_m_2[5]_i_2__1_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/p_0_in8_in\,
      O => \n0q_m_2[3]_i_3__1_n_0\
    );
\n0q_m_2[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B2D"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      I1 => \q_m_2[5]_i_2_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/p_0_in7_in\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/p_0_in6_in\,
      O => \n0q_m_2[3]_i_4_n_0\
    );
\n0q_m_2[3]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B2D"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      I1 => \q_m_2[5]_i_2__0_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/p_0_in7_in\,
      I3 => \hdmi/DataEncoders[1].DataEncoder/p_0_in6_in\,
      O => \n0q_m_2[3]_i_4__0_n_0\
    );
\n0q_m_2[3]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B2D"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      I1 => \q_m_2[5]_i_2__1_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/p_0_in7_in\,
      I3 => \hdmi/DataEncoders[2].DataEncoder/p_0_in6_in\,
      O => \n0q_m_2[3]_i_4__1_n_0\
    );
\n0q_m_2[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D22D4BB4"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/p_0_in0_in\,
      I1 => \q_m_2[8]_i_1_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I3 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \hdmi/DataEncoders[0].DataEncoder/p_0_in2_in\,
      O => \n0q_m_2[3]_i_5_n_0\
    );
\n0q_m_2[3]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D22D4BB4"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/p_0_in0_in\,
      I1 => \q_m_2[8]_i_1__0_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I3 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \hdmi/DataEncoders[1].DataEncoder/p_0_in2_in\,
      O => \n0q_m_2[3]_i_5__0_n_0\
    );
\n0q_m_2[3]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D22D4BB4"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/p_0_in0_in\,
      I1 => \q_m_2[8]_i_1__1_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I3 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \hdmi/DataEncoders[2].DataEncoder/p_0_in2_in\,
      O => \n0q_m_2[3]_i_5__1_n_0\
    );
\n1q_m_2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \n0q_m_2[1]_i_3_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      I2 => \q_m_2[5]_i_2_n_0\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/p_0_in7_in\,
      O => \n1q_m_2[0]_i_1_n_0\
    );
\n1q_m_2[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \n0q_m_2[1]_i_3__0_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      I2 => \q_m_2[5]_i_2__0_n_0\,
      I3 => \hdmi/DataEncoders[1].DataEncoder/p_0_in7_in\,
      O => \n1q_m_2[0]_i_1__0_n_0\
    );
\n1q_m_2[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \n0q_m_2[1]_i_3__1_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      I2 => \q_m_2[5]_i_2__1_n_0\,
      I3 => \hdmi/DataEncoders[2].DataEncoder/p_0_in7_in\,
      O => \n1q_m_2[0]_i_1__1_n_0\
    );
\n1q_m_2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AA3C55CC55C3AA3"
    )
        port map (
      I0 => \n1q_m_2[1]_i_2_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/p_0_in2_in\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \n1q_m_2[1]_i_3_n_0\,
      I5 => \n1q_m_2[1]_i_4_n_0\,
      O => \hdmi/DataEncoders[0].DataEncoder/n1q_m_1\(1)
    );
\n1q_m_2[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AA3C55CC55C3AA3"
    )
        port map (
      I0 => \n1q_m_2[1]_i_2__0_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/p_0_in2_in\,
      I3 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \n1q_m_2[1]_i_3__0_n_0\,
      I5 => \n1q_m_2[1]_i_4__1_n_0\,
      O => \hdmi/DataEncoders[1].DataEncoder/n1q_m_1\(1)
    );
\n1q_m_2[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AA3C55CC55C3AA3"
    )
        port map (
      I0 => \n1q_m_2[1]_i_2__1_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/p_0_in2_in\,
      I3 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \n1q_m_2[1]_i_3__1_n_0\,
      I5 => \n1q_m_2[1]_i_4__0_n_0\,
      O => \hdmi/DataEncoders[2].DataEncoder/n1q_m_1\(1)
    );
\n1q_m_2[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/p_0_in6_in\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/p_0_in7_in\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      I3 => \q_m_2[8]_i_1_n_0\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/p_0_in10_in\,
      O => \n1q_m_2[1]_i_2_n_0\
    );
\n1q_m_2[1]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/p_0_in6_in\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/p_0_in7_in\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      I3 => \q_m_2[8]_i_1__0_n_0\,
      I4 => \hdmi/DataEncoders[1].DataEncoder/p_0_in10_in\,
      O => \n1q_m_2[1]_i_2__0_n_0\
    );
\n1q_m_2[1]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/p_0_in6_in\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/p_0_in7_in\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      I3 => \q_m_2[8]_i_1__1_n_0\,
      I4 => \hdmi/DataEncoders[2].DataEncoder/p_0_in10_in\,
      O => \n1q_m_2[1]_i_2__1_n_0\
    );
\n1q_m_2[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69C33C69963CC396"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I3 => \q_m_2[8]_i_1_n_0\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/p_0_in0_in\,
      I5 => \n0q_m_2[3]_i_4_n_0\,
      O => \n1q_m_2[1]_i_3_n_0\
    );
\n1q_m_2[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69C33C69963CC396"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I3 => \q_m_2[8]_i_1__0_n_0\,
      I4 => \hdmi/DataEncoders[1].DataEncoder/p_0_in0_in\,
      I5 => \n0q_m_2[3]_i_4__0_n_0\,
      O => \n1q_m_2[1]_i_3__0_n_0\
    );
\n1q_m_2[1]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69C33C69963CC396"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I3 => \q_m_2[8]_i_1__1_n_0\,
      I4 => \hdmi/DataEncoders[2].DataEncoder/p_0_in0_in\,
      I5 => \n0q_m_2[3]_i_4__1_n_0\,
      O => \n1q_m_2[1]_i_3__1_n_0\
    );
\n1q_m_2[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96FF"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/p_0_in7_in\,
      I1 => \q_m_2[5]_i_2_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/p_0_in8_in\,
      I3 => \n0q_m_2[1]_i_3_n_0\,
      O => \n1q_m_2[1]_i_4_n_0\
    );
\n1q_m_2[1]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96FF"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/p_0_in7_in\,
      I1 => \q_m_2[5]_i_2__1_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/p_0_in8_in\,
      I3 => \n0q_m_2[1]_i_3__1_n_0\,
      O => \n1q_m_2[1]_i_4__0_n_0\
    );
\n1q_m_2[1]_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"96FF"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/p_0_in7_in\,
      I1 => \q_m_2[5]_i_2__0_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/p_0_in8_in\,
      I3 => \n0q_m_2[1]_i_3__0_n_0\,
      O => \n1q_m_2[1]_i_4__1_n_0\
    );
\n1q_m_2[1]_rep_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AA3C55CC55C3AA3"
    )
        port map (
      I0 => \n1q_m_2[1]_i_2__1_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[2].DataEncoder/p_0_in2_in\,
      I3 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \n1q_m_2[1]_i_3__1_n_0\,
      I5 => \n1q_m_2[1]_i_4__0_n_0\,
      O => \n1q_m_2[1]_rep_i_1_n_0\
    );
\n1q_m_2[1]_rep_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AA3C55CC55C3AA3"
    )
        port map (
      I0 => \n1q_m_2[1]_i_2__0_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[1].DataEncoder/p_0_in2_in\,
      I3 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \n1q_m_2[1]_i_3__0_n_0\,
      I5 => \n1q_m_2[1]_i_4__1_n_0\,
      O => \n1q_m_2[1]_rep_i_1__0_n_0\
    );
\n1q_m_2[1]_rep_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AA3C55CC55C3AA3"
    )
        port map (
      I0 => \n1q_m_2[1]_i_2_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[0].DataEncoder/p_0_in2_in\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \n1q_m_2[1]_i_3_n_0\,
      I5 => \n1q_m_2[1]_i_4_n_0\,
      O => \n1q_m_2[1]_rep_i_1__1_n_0\
    );
\n1q_m_2[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2_n_0\,
      I1 => \n1q_m_2[3]_i_3_n_0\,
      O => \hdmi/DataEncoders[0].DataEncoder/n1q_m_1\(2)
    );
\n1q_m_2[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2__0_n_0\,
      I1 => \n1q_m_2[3]_i_3__0_n_0\,
      O => \hdmi/DataEncoders[1].DataEncoder/n1q_m_1\(2)
    );
\n1q_m_2[2]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2__1_n_0\,
      I1 => \n1q_m_2[3]_i_3__1_n_0\,
      O => \hdmi/DataEncoders[2].DataEncoder/n1q_m_1\(2)
    );
\n1q_m_2[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2_n_0\,
      I1 => \n1q_m_2[3]_i_3_n_0\,
      O => \hdmi/DataEncoders[0].DataEncoder/n1q_m_1\(3)
    );
\n1q_m_2[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2__0_n_0\,
      I1 => \n1q_m_2[3]_i_3__0_n_0\,
      O => \hdmi/DataEncoders[1].DataEncoder/n1q_m_1\(3)
    );
\n1q_m_2[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2__1_n_0\,
      I1 => \n1q_m_2[3]_i_3__1_n_0\,
      O => \hdmi/DataEncoders[2].DataEncoder/n1q_m_1\(3)
    );
\n1q_m_2[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000069C33C69"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      I3 => \q_m_2[8]_i_1_n_0\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/p_0_in0_in\,
      I5 => \n0q_m_2[3]_i_4_n_0\,
      O => \n1q_m_2[3]_i_2_n_0\
    );
\n1q_m_2[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000069C33C69"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      I3 => \q_m_2[8]_i_1__0_n_0\,
      I4 => \hdmi/DataEncoders[1].DataEncoder/p_0_in0_in\,
      I5 => \n0q_m_2[3]_i_4__0_n_0\,
      O => \n1q_m_2[3]_i_2__0_n_0\
    );
\n1q_m_2[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000069C33C69"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[3]_rep_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      I3 => \q_m_2[8]_i_1__1_n_0\,
      I4 => \hdmi/DataEncoders[2].DataEncoder/p_0_in0_in\,
      I5 => \n0q_m_2[3]_i_4__1_n_0\,
      O => \n1q_m_2[3]_i_2__1_n_0\
    );
\n1q_m_2[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2B02FFBF"
    )
        port map (
      I0 => \n0q_m_2[3]_i_3_n_0\,
      I1 => \n0q_m_2[3]_i_2_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      I3 => \n1q_m_2[1]_i_2_n_0\,
      I4 => \n1q_m_2[1]_i_3_n_0\,
      O => \n1q_m_2[3]_i_3_n_0\
    );
\n1q_m_2[3]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2B02FFBF"
    )
        port map (
      I0 => \n0q_m_2[3]_i_3__0_n_0\,
      I1 => \n0q_m_2[3]_i_2__0_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      I3 => \n1q_m_2[1]_i_2__0_n_0\,
      I4 => \n1q_m_2[1]_i_3__0_n_0\,
      O => \n1q_m_2[3]_i_3__0_n_0\
    );
\n1q_m_2[3]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2B02FFBF"
    )
        port map (
      I0 => \n0q_m_2[3]_i_3__1_n_0\,
      I1 => \n0q_m_2[3]_i_2__1_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep__0_n_0\,
      I3 => \n1q_m_2[1]_i_2__1_n_0\,
      I4 => \n1q_m_2[1]_i_3__1_n_0\,
      O => \n1q_m_2[3]_i_3__1_n_0\
    );
\n[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/n_reg_n_0_\(0),
      O => \n[0]_i_1_n_0\
    );
\n[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \VGA_r/n_reg_n_0_\(0),
      I1 => \VGA_r/n_reg_n_0_\(1),
      O => \n[1]_i_1_n_0\
    );
\n[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \VGA_r/n_reg_n_0_\(0),
      I1 => \VGA_r/n_reg_n_0_\(1),
      I2 => \VGA_r/n_reg_n_0_\(2),
      O => \n[2]_i_1_n_0\
    );
\n[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \VGA_r/n_reg_n_0_\(2),
      I1 => \VGA_r/n_reg_n_0_\(0),
      I2 => \VGA_r/n_reg_n_0_\(1),
      I3 => \VGA_r/n_reg\(3),
      O => \n[3]_i_1_n_0\
    );
\n[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \VGA_r/n_reg_n_0_\(2),
      I1 => \VGA_r/n_reg_n_0_\(0),
      I2 => \VGA_r/n_reg_n_0_\(1),
      I3 => \VGA_r/n_reg\(3),
      I4 => \VGA_r/n_reg\(4),
      O => \n[4]_i_1_n_0\
    );
\n[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \VGA_r/n_reg\(3),
      I1 => \VGA_r/n_reg_n_0_\(1),
      I2 => \VGA_r/n_reg_n_0_\(0),
      I3 => \VGA_r/n_reg_n_0_\(2),
      I4 => \VGA_r/n_reg\(4),
      I5 => \VGA_r/n_reg\(5),
      O => \n[5]_i_1_n_0\
    );
\ok1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sync_c_q_reg[1][9]_i_2_n_6\,
      O => \ok1_carry__0_i_1_n_0\
    );
ok1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(9),
      O => ok1_carry_i_1_n_0
    );
ok1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(3),
      O => ok1_carry_i_2_n_0
    );
ok1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(9),
      I1 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(8),
      O => ok1_carry_i_3_n_0
    );
ok1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(6),
      I1 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(7),
      O => ok1_carry_i_4_n_0
    );
ok1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(4),
      I1 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(5),
      O => ok1_carry_i_5_n_0
    );
ok1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(3),
      O => ok1_carry_i_6_n_0
    );
\pDataOutRaw[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FF0BBBB"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/pC0_2\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pC1_2\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(0),
      I3 => \pDataOutRaw[9]_i_3_n_0\,
      I4 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0\,
      O => \pDataOutRaw[0]_i_1_n_0\
    );
\pDataOutRaw[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7B"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__1_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(0),
      O => \pDataOutRaw[0]_i_1__0_n_0\
    );
\pDataOutRaw[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7D"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0\,
      I1 => \pDataOutRaw[9]_i_2_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(0),
      O => \pDataOutRaw[0]_i_1__1_n_0\
    );
\pDataOutRaw[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444BBBBF0FFF0FF"
    )
        port map (
      I0 => \cnt_t_3[4]_i_3_n_0\,
      I1 => \pDataOutRaw[7]_i_2_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pC0_2\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/pC1_2\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(1),
      I5 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0\,
      O => \pDataOutRaw[1]_i_1_n_0\
    );
\pDataOutRaw[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7B"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__1_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(1),
      O => \pDataOutRaw[1]_i_1__0_n_0\
    );
\pDataOutRaw[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7B"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pVde_2\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(1),
      O => \pDataOutRaw[1]_i_1__1_n_0\
    );
\pDataOutRaw[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF044"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(2),
      I3 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2_n_0\,
      I4 => \pDataOutRaw[6]_i_2_n_0\,
      O => \hdmi/DataEncoders[0].DataEncoder/q_out_2\(2)
    );
\pDataOutRaw[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A82"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0\,
      I1 => \cnt_t_3[2]_i_4_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(2),
      I3 => \cnt_t_3[4]_i_2_n_0\,
      O => \hdmi/DataEncoders[1].DataEncoder/q_out_2\(2)
    );
\pDataOutRaw[2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08A2"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0\,
      I1 => \cnt_t_3[2]_i_4__0_n_0\,
      I2 => \cnt_t_3[4]_i_2__0_n_0\,
      I3 => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(2),
      O => \hdmi/DataEncoders[2].DataEncoder/q_out_2\(2)
    );
\pDataOutRaw[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444BBBBF0FFF0FF"
    )
        port map (
      I0 => \cnt_t_3[4]_i_3_n_0\,
      I1 => \pDataOutRaw[7]_i_2_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pC0_2\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/pC1_2\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(3),
      I5 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0\,
      O => \pDataOutRaw[3]_i_1_n_0\
    );
\pDataOutRaw[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__1_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(3),
      I2 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0\,
      O => \pDataOutRaw[3]_i_1__0_n_0\
    );
\pDataOutRaw[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7B"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pVde_2\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(3),
      O => \pDataOutRaw[3]_i_1__1_n_0\
    );
\pDataOutRaw[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF044"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(4),
      I3 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2_n_0\,
      I4 => \pDataOutRaw[6]_i_2_n_0\,
      O => \hdmi/DataEncoders[0].DataEncoder/q_out_2\(4)
    );
\pDataOutRaw[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08A2"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0\,
      I1 => \cnt_t_3[2]_i_4_n_0\,
      I2 => \cnt_t_3[4]_i_2_n_0\,
      I3 => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(4),
      O => \hdmi/DataEncoders[1].DataEncoder/q_out_2\(4)
    );
\pDataOutRaw[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A82"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0\,
      I1 => \cnt_t_3[2]_i_4__0_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(4),
      I3 => \cnt_t_3[4]_i_2__0_n_0\,
      O => \hdmi/DataEncoders[2].DataEncoder/q_out_2\(4)
    );
\pDataOutRaw[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBFB0B0B0BFBFB"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2_n_0\,
      I3 => \cnt_t_3[4]_i_3_n_0\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(5),
      I5 => \cnt_t_3[2]_i_4__1_n_0\,
      O => \pDataOutRaw[5]_i_1_n_0\
    );
\pDataOutRaw[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__1_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(5),
      I2 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0\,
      O => \pDataOutRaw[5]_i_1__0_n_0\
    );
\pDataOutRaw[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(5),
      I2 => \hdmi/DataEncoders[2].DataEncoder/pVde_2\,
      O => \pDataOutRaw[5]_i_1__1_n_0\
    );
\pDataOutRaw[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0FF044"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(6),
      I3 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0\,
      I4 => \pDataOutRaw[6]_i_2_n_0\,
      O => \hdmi/DataEncoders[0].DataEncoder/q_out_2\(6)
    );
\pDataOutRaw[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A82"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0\,
      I1 => \cnt_t_3[2]_i_4_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(6),
      I3 => \cnt_t_3[4]_i_2_n_0\,
      O => \hdmi/DataEncoders[1].DataEncoder/q_out_2\(6)
    );
\pDataOutRaw[6]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A82"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0\,
      I1 => \cnt_t_3[2]_i_4__0_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(6),
      I3 => \cnt_t_3[4]_i_2__0_n_0\,
      O => \hdmi/DataEncoders[2].DataEncoder/q_out_2\(6)
    );
\pDataOutRaw[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_3_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0\,
      O => \pDataOutRaw[6]_i_2_n_0\
    );
\pDataOutRaw[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444BBBBF0FFF0FF"
    )
        port map (
      I0 => \cnt_t_3[4]_i_3_n_0\,
      I1 => \pDataOutRaw[7]_i_2_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pC0_2\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/pC1_2\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/q_m_2_reg_n_0_\(7),
      I5 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__1_n_0\,
      O => \pDataOutRaw[7]_i_1_n_0\
    );
\pDataOutRaw[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__1_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/q_m_2_reg_n_0_\(7),
      I2 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep_n_0\,
      O => \pDataOutRaw[7]_i_1__0_n_0\
    );
\pDataOutRaw[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/q_m_2_reg_n_0_\(7),
      I2 => \hdmi/DataEncoders[2].DataEncoder/pVde_2\,
      O => \pDataOutRaw[7]_i_1__1_n_0\
    );
\pDataOutRaw[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF00F0F0F1FF"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg[1]_rep_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(0),
      I2 => \cnt_t_3[4]_i_7__1_n_0\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(2),
      I4 => \hdmi/DataEncoders[0].DataEncoder/n1q_m_2_reg_n_0_\(3),
      I5 => \hdmi/DataEncoders[0].DataEncoder/cnt_t_3_reg_n_0_\(4),
      O => \pDataOutRaw[7]_i_2_n_0\
    );
\pDataOutRaw[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA10"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pC0_2\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pC1_2\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/p_0_in\,
      O => \hdmi/DataEncoders[0].DataEncoder/q_out_2\(8)
    );
\pDataOutRaw[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/p_0_in\,
      O => \hdmi/DataEncoders[2].DataEncoder/q_out_2\(8)
    );
\pDataOutRaw[8]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/p_0_in\,
      O => \hdmi/DataEncoders[1].DataEncoder/q_out_2\(8)
    );
\pDataOutRaw[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/pC1_2_reg_rep_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__2_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pC0_2_reg_rep_n_0\,
      O => \pDataOutRaw[9]_i_1_n_0\
    );
\pDataOutRaw[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pVde_2\,
      O => \pDataOutRaw[9]_i_1__0_n_0\
    );
\pDataOutRaw[9]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pVde_2\,
      I1 => \pDataOutRaw[9]_i_2__1_n_0\,
      O => \pDataOutRaw[9]_i_1__1_n_0\
    );
\pDataOutRaw[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \cnt_t_3[2]_i_4_n_0\,
      I1 => \cnt_t_3[4]_i_2_n_0\,
      O => \pDataOutRaw[9]_i_2_n_0\
    );
\pDataOutRaw[9]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_3_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pVde_2_reg_rep__0_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pC0_2\,
      I3 => \hdmi/DataEncoders[0].DataEncoder/pC1_2\,
      O => \hdmi/DataEncoders[0].DataEncoder/q_out_2\(9)
    );
\pDataOutRaw[9]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \cnt_t_3[2]_i_4__0_n_0\,
      I1 => \cnt_t_3[4]_i_2__0_n_0\,
      O => \pDataOutRaw[9]_i_2__1_n_0\
    );
\pDataOutRaw[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \cnt_t_3[4]_i_3_n_0\,
      I1 => \cnt_t_3[2]_i_4__1_n_0\,
      O => \pDataOutRaw[9]_i_3_n_0\
    );
\q_m_2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999956666"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(0),
      I3 => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(1),
      I4 => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(2),
      I5 => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(3),
      O => \q_m_2[1]_i_1_n_0\
    );
\q_m_2[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999956666"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(0),
      I3 => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(1),
      I4 => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(2),
      I5 => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(3),
      O => \q_m_2[1]_i_1__0_n_0\
    );
\q_m_2[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999956666"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[1]_rep_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(0),
      I3 => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(1),
      I4 => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(2),
      I5 => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(3),
      O => \q_m_2[1]_i_1__1_n_0\
    );
\q_m_2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/p_0_in0_in\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\(1),
      O => \hdmi/DataEncoders[0].DataEncoder/p_0_in9_in\
    );
\q_m_2[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/p_0_in0_in\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\(1),
      O => \hdmi/DataEncoders[1].DataEncoder/p_0_in9_in\
    );
\q_m_2[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/p_0_in0_in\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\(1),
      O => \hdmi/DataEncoders[2].DataEncoder/p_0_in9_in\
    );
\q_m_2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/p_0_in0_in\,
      I1 => \q_m_2[8]_i_1_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I3 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \hdmi/DataEncoders[0].DataEncoder/p_0_in2_in\,
      O => \q_m_2[3]_i_1_n_0\
    );
\q_m_2[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/p_0_in0_in\,
      I1 => \q_m_2[8]_i_1__0_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I3 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \hdmi/DataEncoders[1].DataEncoder/p_0_in2_in\,
      O => \q_m_2[3]_i_1__0_n_0\
    );
\q_m_2[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/p_0_in0_in\,
      I1 => \q_m_2[8]_i_1__1_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I3 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \hdmi/DataEncoders[2].DataEncoder/p_0_in2_in\,
      O => \q_m_2[3]_i_1__1_n_0\
    );
\q_m_2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/p_0_in4_in\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/p_0_in0_in\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I3 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \hdmi/DataEncoders[0].DataEncoder/p_0_in2_in\,
      O => \hdmi/DataEncoders[0].DataEncoder/p_0_in7_in\
    );
\q_m_2[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/p_0_in4_in\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/p_0_in0_in\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I3 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \hdmi/DataEncoders[1].DataEncoder/p_0_in2_in\,
      O => \hdmi/DataEncoders[1].DataEncoder/p_0_in7_in\
    );
\q_m_2[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/p_0_in4_in\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/p_0_in0_in\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I3 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\(1),
      I4 => \hdmi/DataEncoders[2].DataEncoder/p_0_in2_in\,
      O => \hdmi/DataEncoders[2].DataEncoder/p_0_in7_in\
    );
\q_m_2[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/p_0_in7_in\,
      I1 => \q_m_2[5]_i_2_n_0\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/p_0_in6_in\,
      O => \q_m_2[5]_i_1_n_0\
    );
\q_m_2[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/p_0_in7_in\,
      I1 => \q_m_2[5]_i_2__0_n_0\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/p_0_in6_in\,
      O => \q_m_2[5]_i_1__0_n_0\
    );
\q_m_2[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/p_0_in7_in\,
      I1 => \q_m_2[5]_i_2__1_n_0\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/p_0_in6_in\,
      O => \q_m_2[5]_i_1__1_n_0\
    );
\q_m_2[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002FF"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(1),
      I3 => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(2),
      I4 => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(3),
      O => \q_m_2[5]_i_2_n_0\
    );
\q_m_2[5]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002FF"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(1),
      I3 => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(2),
      I4 => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(3),
      O => \q_m_2[5]_i_2__0_n_0\
    );
\q_m_2[5]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002FF"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[0]_rep_n_0\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(1),
      I3 => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(2),
      I4 => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(3),
      O => \q_m_2[5]_i_2__1_n_0\
    );
\q_m_2[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/p_0_in8_in\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/p_0_in7_in\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/p_0_in6_in\,
      O => \hdmi/DataEncoders[0].DataEncoder/p_0_in5_in\
    );
\q_m_2[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/p_0_in8_in\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/p_0_in7_in\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/p_0_in6_in\,
      O => \hdmi/DataEncoders[1].DataEncoder/p_0_in5_in\
    );
\q_m_2[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/p_0_in8_in\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/p_0_in7_in\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/p_0_in6_in\,
      O => \hdmi/DataEncoders[2].DataEncoder/p_0_in5_in\
    );
\q_m_2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/p_0_in6_in\,
      I1 => \hdmi/DataEncoders[0].DataEncoder/p_0_in7_in\,
      I2 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      I3 => \q_m_2[8]_i_1_n_0\,
      I4 => \hdmi/DataEncoders[0].DataEncoder/p_0_in10_in\,
      O => \hdmi/DataEncoders[0].DataEncoder/p_1_in12_in\
    );
\q_m_2[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/p_0_in6_in\,
      I1 => \hdmi/DataEncoders[1].DataEncoder/p_0_in7_in\,
      I2 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      I3 => \q_m_2[8]_i_1__0_n_0\,
      I4 => \hdmi/DataEncoders[1].DataEncoder/p_0_in10_in\,
      O => \hdmi/DataEncoders[1].DataEncoder/p_1_in12_in\
    );
\q_m_2[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/p_0_in6_in\,
      I1 => \hdmi/DataEncoders[2].DataEncoder/p_0_in7_in\,
      I2 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg[6]_rep_n_0\,
      I3 => \q_m_2[8]_i_1__1_n_0\,
      I4 => \hdmi/DataEncoders[2].DataEncoder/p_0_in10_in\,
      O => \hdmi/DataEncoders[2].DataEncoder/p_1_in12_in\
    );
\q_m_2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002FF"
    )
        port map (
      I0 => \hdmi/DataEncoders[0].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I1 => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(1),
      I3 => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(2),
      I4 => \hdmi/DataEncoders[0].DataEncoder/n1d_1_reg_n_0_\(3),
      O => \q_m_2[8]_i_1_n_0\
    );
\q_m_2[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002FF"
    )
        port map (
      I0 => \hdmi/DataEncoders[1].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I1 => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(1),
      I3 => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(2),
      I4 => \hdmi/DataEncoders[1].DataEncoder/n1d_1_reg_n_0_\(3),
      O => \q_m_2[8]_i_1__0_n_0\
    );
\q_m_2[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000002FF"
    )
        port map (
      I0 => \hdmi/DataEncoders[2].DataEncoder/pDataOut_1_reg_n_0_\(0),
      I1 => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(0),
      I2 => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(1),
      I3 => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(2),
      I4 => \hdmi/DataEncoders[2].DataEncoder/n1d_1_reg_n_0_\(3),
      O => \q_m_2[8]_i_1__1_n_0\
    );
\sync[Hsync]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/rst\,
      O => \sync[Hsync]_i_1_n_0\
    );
\sync[Hsync]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/p_1_in9_in\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in8_in\,
      O => \VGA_r/vga_mem_rd/C_Sync/andv\(0)
    );
\sync[Hsync]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep_n_0\,
      O => \sync[Hsync]_i_4_n_0\
    );
\sync[Hsync]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep_n_0\,
      O => \sync[Hsync]_i_5_n_0\
    );
\sync[Hsync]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep_n_0\,
      O => \sync[Hsync]_i_6_n_0\
    );
\sync[Hsync]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(6),
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(7),
      O => \sync[Hsync]_i_7_n_0\
    );
\sync[Hsync]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep_n_0\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(4),
      O => \sync[Hsync]_i_8_n_0\
    );
\sync[Vsync]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/geqOp0_carry__0_n_3\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/ltOp0_carry_n_0\,
      O => \VGA_r/vga_mem_rd/C_Sync/andv\(1)
    );
\sync[active]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/p_0_in2_in\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_1_in3_in\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/ltOp0_inferred__1/i__carry__0_n_3\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/geqOp0_inferred__1/i__carry__0_n_3\,
      O => \VGA_r/vga_mem_rd/C_Sync/sync_reg[active]0\
    );
\sync[c][1][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(0),
      O => \sync[c][1][0]_i_1_n_0\
    );
\sync_c_q[0][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(0),
      O => \VGA_r/vga_mem_rd/C_Sync/v[0]\(0)
    );
\sync_c_q[0][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(1),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \VGA_r/vga_mem_rd/C_Sync/v[0]\(1)
    );
\sync_c_q[0][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \VGA_r/vga_mem_rd/C_Sync/v[0]\(2)
    );
\sync_c_q[0][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(3),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \VGA_r/vga_mem_rd/C_Sync/v[0]\(3)
    );
\sync_c_q[0][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(4),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \VGA_r/vga_mem_rd/C_Sync/v[0]\(4)
    );
\sync_c_q[0][4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(4),
      O => \sync_c_q[0][4]_i_3_n_0\
    );
\sync_c_q[0][4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(3),
      O => \sync_c_q[0][4]_i_4_n_0\
    );
\sync_c_q[0][4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(2),
      O => \sync_c_q[0][4]_i_5_n_0\
    );
\sync_c_q[0][4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(1),
      O => \sync_c_q[0][4]_i_6_n_0\
    );
\sync_c_q[0][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(5),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \VGA_r/vga_mem_rd/C_Sync/v[0]\(5)
    );
\sync_c_q[0][5]_rep_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(5),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \sync_c_q[0][5]_rep_i_1_n_0\
    );
\sync_c_q[0][5]_rep_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(5),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \sync_c_q[0][5]_rep_i_1__0_n_0\
    );
\sync_c_q[0][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(6),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \VGA_r/vga_mem_rd/C_Sync/v[0]\(6)
    );
\sync_c_q[0][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(7),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \VGA_r/vga_mem_rd/C_Sync/v[0]\(7)
    );
\sync_c_q[0][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(8),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \VGA_r/vga_mem_rd/C_Sync/v[0]\(8)
    );
\sync_c_q[0][8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][8]_rep_n_0\,
      O => \sync_c_q[0][8]_i_3_n_0\
    );
\sync_c_q[0][8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(7),
      O => \sync_c_q[0][8]_i_4_n_0\
    );
\sync_c_q[0][8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(6),
      O => \sync_c_q[0][8]_i_5_n_0\
    );
\sync_c_q[0][8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][5]_rep_n_0\,
      O => \sync_c_q[0][8]_i_6_n_0\
    );
\sync_c_q[0][8]_rep_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(8),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \sync_c_q[0][8]_rep_i_1_n_0\
    );
\sync_c_q[0][8]_rep_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(8),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \sync_c_q[0][8]_rep_i_1__0_n_0\
    );
\sync_c_q[0][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(9),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \VGA_r/vga_mem_rd/C_Sync/v[0]\(9)
    );
\sync_c_q[0][9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg[0][9]_rep_n_0\,
      O => \sync_c_q[0][9]_i_3_n_0\
    );
\sync_c_q[0][9]_rep_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(9),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \sync_c_q[0][9]_rep_i_1_n_0\
    );
\sync_c_q[0][9]_rep_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(9),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      O => \sync_c_q[0][9]_rep_i_1__0_n_0\
    );
\sync_c_q[1][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A4"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      I1 => \VGA_r/vga_mem_rd/C_Sync/ok1\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(0),
      O => \VGA_r/vga_mem_rd/C_Sync/v[1]\(0)
    );
\sync_c_q[1][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(1),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/ok1\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(1),
      O => \VGA_r/vga_mem_rd/C_Sync/v[1]\(1)
    );
\sync_c_q[1][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(2),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/ok1\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(2),
      O => \VGA_r/vga_mem_rd/C_Sync/v[1]\(2)
    );
\sync_c_q[1][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(3),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/ok1\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(3),
      O => \VGA_r/vga_mem_rd/C_Sync/v[1]\(3)
    );
\sync_c_q[1][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(4),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/ok1\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(4),
      O => \VGA_r/vga_mem_rd/C_Sync/v[1]\(4)
    );
\sync_c_q[1][4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(4),
      O => \sync_c_q[1][4]_i_3_n_0\
    );
\sync_c_q[1][4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(3),
      O => \sync_c_q[1][4]_i_4_n_0\
    );
\sync_c_q[1][4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(2),
      O => \sync_c_q[1][4]_i_5_n_0\
    );
\sync_c_q[1][4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(1),
      O => \sync_c_q[1][4]_i_6_n_0\
    );
\sync_c_q[1][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(5),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/ok1\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(5),
      O => \VGA_r/vga_mem_rd/C_Sync/v[1]\(5)
    );
\sync_c_q[1][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(6),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/ok1\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(6),
      O => \VGA_r/vga_mem_rd/C_Sync/v[1]\(6)
    );
\sync_c_q[1][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(7),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/ok1\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(7),
      O => \VGA_r/vga_mem_rd/C_Sync/v[1]\(7)
    );
\sync_c_q[1][8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(8),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/ok1\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(8),
      O => \VGA_r/vga_mem_rd/C_Sync/v[1]\(8)
    );
\sync_c_q[1][8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(8),
      O => \sync_c_q[1][8]_i_3_n_0\
    );
\sync_c_q[1][8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(7),
      O => \sync_c_q[1][8]_i_4_n_0\
    );
\sync_c_q[1][8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(6),
      O => \sync_c_q[1][8]_i_5_n_0\
    );
\sync_c_q[1][8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(5),
      O => \sync_c_q[1][8]_i_6_n_0\
    );
\sync_c_q[1][9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(9),
      I1 => \VGA_r/vga_mem_rd/C_Sync/p_0_in\,
      I2 => \VGA_r/vga_mem_rd/C_Sync/ok1\,
      I3 => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(9),
      O => \VGA_r/vga_mem_rd/C_Sync/v[1]\(9)
    );
\sync_c_q[1][9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(9),
      O => \sync_c_q[1][9]_i_3_n_0\
    );
\sync_c_q_reg[0][4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sync_c_q_reg[0][4]_i_2_n_0\,
      CO(2) => \sync_c_q_reg[0][4]_i_2_n_1\,
      CO(1) => \sync_c_q_reg[0][4]_i_2_n_2\,
      CO(0) => \sync_c_q_reg[0][4]_i_2_n_3\,
      CYINIT => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[0]\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(4 downto 1),
      S(3) => \sync_c_q[0][4]_i_3_n_0\,
      S(2) => \sync_c_q[0][4]_i_4_n_0\,
      S(1) => \sync_c_q[0][4]_i_5_n_0\,
      S(0) => \sync_c_q[0][4]_i_6_n_0\
    );
\sync_c_q_reg[0][8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sync_c_q_reg[0][4]_i_2_n_0\,
      CO(3) => \sync_c_q_reg[0][8]_i_2_n_0\,
      CO(2) => \sync_c_q_reg[0][8]_i_2_n_1\,
      CO(1) => \sync_c_q_reg[0][8]_i_2_n_2\,
      CO(0) => \sync_c_q_reg[0][8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(8 downto 5),
      S(3) => \sync_c_q[0][8]_i_3_n_0\,
      S(2) => \sync_c_q[0][8]_i_4_n_0\,
      S(1) => \sync_c_q[0][8]_i_5_n_0\,
      S(0) => \sync_c_q[0][8]_i_6_n_0\
    );
\sync_c_q_reg[0][9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sync_c_q_reg[0][8]_i_2_n_0\,
      CO(3 downto 1) => \NLW_sync_c_q_reg[0][9]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(10),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_sync_c_q_reg[0][9]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \sync_c_q_reg[0][9]_i_2_n_6\,
      O(0) => \VGA_r/vga_mem_rd/C_Sync/plusOp[0]\(9),
      S(3 downto 1) => B"001",
      S(0) => \sync_c_q[0][9]_i_3_n_0\
    );
\sync_c_q_reg[1][4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sync_c_q_reg[1][4]_i_2_n_0\,
      CO(2) => \sync_c_q_reg[1][4]_i_2_n_1\,
      CO(1) => \sync_c_q_reg[1][4]_i_2_n_2\,
      CO(0) => \sync_c_q_reg[1][4]_i_2_n_3\,
      CYINIT => \VGA_r/vga_mem_rd/C_Sync/sync_c_q_reg_n_0_[1]\(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(4 downto 1),
      S(3) => \sync_c_q[1][4]_i_3_n_0\,
      S(2) => \sync_c_q[1][4]_i_4_n_0\,
      S(1) => \sync_c_q[1][4]_i_5_n_0\,
      S(0) => \sync_c_q[1][4]_i_6_n_0\
    );
\sync_c_q_reg[1][8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sync_c_q_reg[1][4]_i_2_n_0\,
      CO(3) => \sync_c_q_reg[1][8]_i_2_n_0\,
      CO(2) => \sync_c_q_reg[1][8]_i_2_n_1\,
      CO(1) => \sync_c_q_reg[1][8]_i_2_n_2\,
      CO(0) => \sync_c_q_reg[1][8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(8 downto 5),
      S(3) => \sync_c_q[1][8]_i_3_n_0\,
      S(2) => \sync_c_q[1][8]_i_4_n_0\,
      S(1) => \sync_c_q[1][8]_i_5_n_0\,
      S(0) => \sync_c_q[1][8]_i_6_n_0\
    );
\sync_c_q_reg[1][9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sync_c_q_reg[1][8]_i_2_n_0\,
      CO(3 downto 1) => \NLW_sync_c_q_reg[1][9]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(10),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_sync_c_q_reg[1][9]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \sync_c_q_reg[1][9]_i_2_n_6\,
      O(0) => \VGA_r/vga_mem_rd/C_Sync/plusOp[1]\(9),
      S(3 downto 1) => B"001",
      S(0) => \sync_c_q[1][9]_i_3_n_0\
    );
\sync_reg[Hsync]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_sync_reg[Hsync]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \VGA_r/vga_mem_rd/C_Sync/p_0_in8_in\,
      CO(1) => \sync_reg[Hsync]_i_3_n_2\,
      CO(0) => \sync_reg[Hsync]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \sync[Hsync]_i_4_n_0\,
      DI(1) => '0',
      DI(0) => \sync[Hsync]_i_5_n_0\,
      O(3 downto 0) => \NLW_sync_reg[Hsync]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \sync[Hsync]_i_6_n_0\,
      S(1) => \sync[Hsync]_i_7_n_0\,
      S(0) => \sync[Hsync]_i_8_n_0\
    );
\vga_dbg[data][0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][0][7]_i_2_n_0\,
      I4 => \vga_out[sync][active]\,
      I5 => \vga_out[data][2]\(0),
      O => \vga_mire_data[0]\(0)
    );
\vga_dbg[data][0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][0][7]_i_2_n_0\,
      I4 => \vga_out[sync][active]\,
      I5 => \vga_out[data][2]\(1),
      O => \vga_mire_data[0]\(1)
    );
\vga_dbg[data][0][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][0][7]_i_2_n_0\,
      I4 => \vga_out[sync][active]\,
      I5 => \vga_out[data][2]\(2),
      O => \vga_mire_data[0]\(2)
    );
\vga_dbg[data][0][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][0][7]_i_2_n_0\,
      I4 => \vga_out[sync][active]\,
      I5 => \vga_out[data][2]\(3),
      O => \vga_mire_data[0]\(3)
    );
\vga_dbg[data][0][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][0][7]_i_2_n_0\,
      I4 => \vga_out[sync][active]\,
      I5 => \vga_out[data][2]\(4),
      O => \vga_mire_data[0]\(4)
    );
\vga_dbg[data][0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][0][7]_i_2_n_0\,
      I4 => \vga_out[sync][active]\,
      I5 => \vga_out[data][2]\(5),
      O => \vga_mire_data[0]\(5)
    );
\vga_dbg[data][0][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][0][7]_i_2_n_0\,
      I4 => \vga_out[sync][active]\,
      I5 => \vga_out[data][2]\(6),
      O => \vga_mire_data[0]\(6)
    );
\vga_dbg[data][0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][0][7]_i_2_n_0\,
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0\,
      I5 => \vga_out[data][2]\(7),
      O => \vga_mire_data[0]\(7)
    );
\vga_dbg[data][0][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sw(0),
      I1 => \vga_dbg[data][0][7]_i_3_n_0\,
      O => \vga_dbg[data][0][7]_i_2_n_0\
    );
\vga_dbg[data][0][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \vga_out[sync][c][0]\(3),
      I1 => \vga_out[sync][c][0]\(2),
      I2 => \vga_out[sync][c][0]\(0),
      I3 => \vga_out[sync][c][0]\(1),
      I4 => \vga_out[sync][c][0]\(4),
      I5 => sw(1),
      O => \vga_dbg[data][0][7]_i_3_n_0\
    );
\vga_dbg[data][1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][1][7]_i_2_n_0\,
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1_n_0\,
      I5 => \vga_out[data][2]\(0),
      O => \vga_mire_data[1]\(0)
    );
\vga_dbg[data][1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][1][7]_i_2_n_0\,
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1_n_0\,
      I5 => \vga_out[data][2]\(1),
      O => \vga_mire_data[1]\(1)
    );
\vga_dbg[data][1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][1][7]_i_2_n_0\,
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__1_n_0\,
      I5 => \vga_out[data][2]\(2),
      O => \vga_mire_data[1]\(2)
    );
\vga_dbg[data][1][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][1][7]_i_2_n_0\,
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0\,
      I5 => \vga_out[data][2]\(3),
      O => \vga_mire_data[1]\(3)
    );
\vga_dbg[data][1][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][1][7]_i_2_n_0\,
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0\,
      I5 => \vga_out[data][2]\(4),
      O => \vga_mire_data[1]\(4)
    );
\vga_dbg[data][1][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][1][7]_i_2_n_0\,
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0\,
      I5 => \vga_out[data][2]\(5),
      O => \vga_mire_data[1]\(5)
    );
\vga_dbg[data][1][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][1][7]_i_2_n_0\,
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0\,
      I5 => \vga_out[data][2]\(6),
      O => \vga_mire_data[1]\(6)
    );
\vga_dbg[data][1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF00110000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(1),
      I3 => \vga_dbg[data][1][7]_i_2_n_0\,
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0\,
      I5 => \vga_out[data][2]\(7),
      O => \vga_mire_data[1]\(7)
    );
\vga_dbg[data][1][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => sw(0),
      I1 => sw(1),
      I2 => \vga_dbg[data][1][7]_i_3_n_0\,
      O => \vga_dbg[data][1][7]_i_2_n_0\
    );
\vga_dbg[data][1][7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \vga_out[sync][c][1]\(5),
      I1 => \vga_out[sync][c][1]\(4),
      I2 => \vga_out[sync][c][1]\(1),
      I3 => \vga_out[sync][c][1]\(0),
      I4 => \vga_out[sync][c][1]\(3),
      I5 => \vga_out[sync][c][1]\(2),
      O => \vga_dbg[data][1][7]_i_3_n_0\
    );
\vga_dbg[data][2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF10100000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(0),
      I3 => sw(1),
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0\,
      I5 => \vga_out[data][2]\(0),
      O => \vga_mire_data[2]\(0)
    );
\vga_dbg[data][2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF10100000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(0),
      I3 => sw(1),
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep__0_n_0\,
      I5 => \vga_out[data][2]\(1),
      O => \vga_mire_data[2]\(1)
    );
\vga_dbg[data][2][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF10100000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(0),
      I3 => sw(1),
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0\,
      I5 => \vga_out[data][2]\(2),
      O => \vga_mire_data[2]\(2)
    );
\vga_dbg[data][2][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF10100000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(0),
      I3 => sw(1),
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0\,
      I5 => \vga_out[data][2]\(3),
      O => \vga_mire_data[2]\(3)
    );
\vga_dbg[data][2][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF10100000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(0),
      I3 => sw(1),
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0\,
      I5 => \vga_out[data][2]\(4),
      O => \vga_mire_data[2]\(4)
    );
\vga_dbg[data][2][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF10100000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(0),
      I3 => sw(1),
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0\,
      I5 => \vga_out[data][2]\(5),
      O => \vga_mire_data[2]\(5)
    );
\vga_dbg[data][2][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF10100000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(0),
      I3 => sw(1),
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0\,
      I5 => \vga_out[data][2]\(6),
      O => \vga_mire_data[2]\(6)
    );
\vga_dbg[data][2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF10100000"
    )
        port map (
      I0 => sw(2),
      I1 => sw(3),
      I2 => sw(0),
      I3 => sw(1),
      I4 => \VGA_r/vga_mem_rd/vga_out_reg[sync][active]_rep_n_0\,
      I5 => \vga_out[data][2]\(7),
      O => \vga_mire_data[2]\(7)
    );
\vga_dbg_reg[data][0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[0]\(0),
      Q => \vga_dbg_reg[data_n_0_][0]\(0),
      R => '0'
    );
\vga_dbg_reg[data][0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[0]\(1),
      Q => \vga_dbg_reg[data_n_0_][0]\(1),
      R => '0'
    );
\vga_dbg_reg[data][0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[0]\(2),
      Q => \vga_dbg_reg[data_n_0_][0]\(2),
      R => '0'
    );
\vga_dbg_reg[data][0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[0]\(3),
      Q => \vga_dbg_reg[data_n_0_][0]\(3),
      R => '0'
    );
\vga_dbg_reg[data][0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[0]\(4),
      Q => \vga_dbg_reg[data_n_0_][0]\(4),
      R => '0'
    );
\vga_dbg_reg[data][0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[0]\(5),
      Q => \vga_dbg_reg[data_n_0_][0]\(5),
      R => '0'
    );
\vga_dbg_reg[data][0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[0]\(6),
      Q => \vga_dbg_reg[data_n_0_][0]\(6),
      R => '0'
    );
\vga_dbg_reg[data][0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[0]\(7),
      Q => \vga_dbg_reg[data_n_0_][0]\(7),
      R => '0'
    );
\vga_dbg_reg[data][1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[1]\(0),
      Q => \vga_dbg_reg[data_n_0_][1]\(0),
      R => '0'
    );
\vga_dbg_reg[data][1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[1]\(1),
      Q => \vga_dbg_reg[data_n_0_][1]\(1),
      R => '0'
    );
\vga_dbg_reg[data][1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[1]\(2),
      Q => \vga_dbg_reg[data_n_0_][1]\(2),
      R => '0'
    );
\vga_dbg_reg[data][1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[1]\(3),
      Q => \vga_dbg_reg[data_n_0_][1]\(3),
      R => '0'
    );
\vga_dbg_reg[data][1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[1]\(4),
      Q => \vga_dbg_reg[data_n_0_][1]\(4),
      R => '0'
    );
\vga_dbg_reg[data][1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[1]\(5),
      Q => \vga_dbg_reg[data_n_0_][1]\(5),
      R => '0'
    );
\vga_dbg_reg[data][1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[1]\(6),
      Q => \vga_dbg_reg[data_n_0_][1]\(6),
      R => '0'
    );
\vga_dbg_reg[data][1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[1]\(7),
      Q => \vga_dbg_reg[data_n_0_][1]\(7),
      R => '0'
    );
\vga_dbg_reg[data][2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[2]\(0),
      Q => \vga_dbg_reg[data_n_0_][2]\(0),
      R => '0'
    );
\vga_dbg_reg[data][2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[2]\(1),
      Q => \vga_dbg_reg[data_n_0_][2]\(1),
      R => '0'
    );
\vga_dbg_reg[data][2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[2]\(2),
      Q => \vga_dbg_reg[data_n_0_][2]\(2),
      R => '0'
    );
\vga_dbg_reg[data][2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[2]\(3),
      Q => \vga_dbg_reg[data_n_0_][2]\(3),
      R => '0'
    );
\vga_dbg_reg[data][2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[2]\(4),
      Q => \vga_dbg_reg[data_n_0_][2]\(4),
      R => '0'
    );
\vga_dbg_reg[data][2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[2]\(5),
      Q => \vga_dbg_reg[data_n_0_][2]\(5),
      R => '0'
    );
\vga_dbg_reg[data][2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[2]\(6),
      Q => \vga_dbg_reg[data_n_0_][2]\(6),
      R => '0'
    );
\vga_dbg_reg[data][2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk_display\,
      CE => '1',
      D => \vga_mire_data[2]\(7),
      Q => \vga_dbg_reg[data_n_0_][2]\(7),
      R => '0'
    );
\vga_q_q[data][0][7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_r/vga_mem_rd/vga_q_reg[sync][active_n_0_]\,
      O => \vga_q_q[data][0][7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2_HDMI_proc is
  port (
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hdmi_TMDS_Clk_p : out STD_LOGIC;
    hdmi_TMDS_Clk_n : out STD_LOGIC;
    hdmi_TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_display : in STD_LOGIC;
    clk_hdmi : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_HDMI_proc_0_2_HDMI_proc : entity is "HDMI_proc";
end system_HDMI_proc_0_2_HDMI_proc;

architecture STRUCTURE of system_HDMI_proc_0_2_HDMI_proc is
  signal auto_reset : STD_LOGIC;
  signal auto_reset_i_2_n_0 : STD_LOGIC;
  signal \^clk_display\ : STD_LOGIC;
  signal \display_mem_ctl[en]\ : STD_LOGIC;
  signal img_out_rsc_wadr : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal proc_display_mem_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reset_auto.cpt[10]_i_2_n_0\ : STD_LOGIC;
  signal \reset_auto.cpt_reg\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal reset_i_1_n_0 : STD_LOGIC;
  signal rst : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal NLW_proc_img_out_triosy_lz_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reset_auto.cpt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reset_auto.cpt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reset_auto.cpt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reset_auto.cpt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reset_auto.cpt[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reset_auto.cpt[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reset_auto.cpt[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reset_auto.cpt[9]_i_1\ : label is "soft_lutpair0";
begin
  \^clk_display\ <= clk_display;
auto_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => auto_reset_i_2_n_0,
      I1 => \reset_auto.cpt_reg\(2),
      I2 => \reset_auto.cpt_reg\(1),
      I3 => \reset_auto.cpt_reg\(0),
      I4 => \reset_auto.cpt_reg\(4),
      I5 => \reset_auto.cpt_reg\(10),
      O => sel
    );
auto_reset_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \reset_auto.cpt_reg\(7),
      I1 => \reset_auto.cpt_reg\(8),
      I2 => \reset_auto.cpt_reg\(9),
      I3 => \reset_auto.cpt_reg\(6),
      I4 => \reset_auto.cpt_reg\(3),
      I5 => \reset_auto.cpt_reg\(5),
      O => auto_reset_i_2_n_0
    );
auto_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk_display\,
      CE => '1',
      D => sel,
      Q => auto_reset,
      R => '0'
    );
display: entity work.system_HDMI_proc_0_2_HDMI_RAM
     port map (
      clk_display => \^clk_display\,
      clk_hdmi => clk_hdmi,
      clk_proc => \^clk_display\,
      hdmi_TMDS_Clk_n => hdmi_TMDS_Clk_n,
      hdmi_TMDS_Clk_p => hdmi_TMDS_Clk_p,
      hdmi_TMDS_Data_n(2 downto 0) => hdmi_TMDS_Data_n(2 downto 0),
      hdmi_TMDS_Data_p(2 downto 0) => hdmi_TMDS_Data_p(2 downto 0),
      led(3 downto 0) => led(3 downto 0),
      \proc_display_mem_ctl[addr]\(21 downto 17) => B"00000",
      \proc_display_mem_ctl[addr]\(16 downto 0) => img_out_rsc_wadr(16 downto 0),
      \proc_display_mem_ctl[en]\ => \display_mem_ctl[en]\,
      \proc_display_mem_ctl[we]\ => \display_mem_ctl[en]\,
      proc_display_mem_data(7 downto 0) => proc_display_mem_data(7 downto 0),
      push(3 downto 0) => btn(3 downto 0),
      sw(3 downto 0) => sw(3 downto 0)
    );
proc: entity work.system_HDMI_proc_0_2_DispProcTest
     port map (
      clk => \^clk_display\,
      img_out_rsc_d(7 downto 0) => proc_display_mem_data(7 downto 0),
      img_out_rsc_wadr(16 downto 0) => img_out_rsc_wadr(16 downto 0),
      img_out_rsc_we => \display_mem_ctl[en]\,
      img_out_triosy_lz => NLW_proc_img_out_triosy_lz_UNCONNECTED,
      rst => rst
    );
\reset_auto.cpt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \reset_auto.cpt_reg\(0),
      O => p_0_in(0)
    );
\reset_auto.cpt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \reset_auto.cpt_reg\(8),
      I1 => \reset_auto.cpt_reg\(6),
      I2 => \reset_auto.cpt[10]_i_2_n_0\,
      I3 => \reset_auto.cpt_reg\(7),
      I4 => \reset_auto.cpt_reg\(9),
      I5 => \reset_auto.cpt_reg\(10),
      O => p_0_in(10)
    );
\reset_auto.cpt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \reset_auto.cpt_reg\(5),
      I1 => \reset_auto.cpt_reg\(3),
      I2 => \reset_auto.cpt_reg\(1),
      I3 => \reset_auto.cpt_reg\(0),
      I4 => \reset_auto.cpt_reg\(2),
      I5 => \reset_auto.cpt_reg\(4),
      O => \reset_auto.cpt[10]_i_2_n_0\
    );
\reset_auto.cpt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reset_auto.cpt_reg\(0),
      I1 => \reset_auto.cpt_reg\(1),
      O => p_0_in(1)
    );
\reset_auto.cpt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \reset_auto.cpt_reg\(0),
      I1 => \reset_auto.cpt_reg\(1),
      I2 => \reset_auto.cpt_reg\(2),
      O => p_0_in(2)
    );
\reset_auto.cpt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \reset_auto.cpt_reg\(1),
      I1 => \reset_auto.cpt_reg\(0),
      I2 => \reset_auto.cpt_reg\(2),
      I3 => \reset_auto.cpt_reg\(3),
      O => p_0_in(3)
    );
\reset_auto.cpt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \reset_auto.cpt_reg\(2),
      I1 => \reset_auto.cpt_reg\(0),
      I2 => \reset_auto.cpt_reg\(1),
      I3 => \reset_auto.cpt_reg\(3),
      I4 => \reset_auto.cpt_reg\(4),
      O => p_0_in(4)
    );
\reset_auto.cpt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \reset_auto.cpt_reg\(3),
      I1 => \reset_auto.cpt_reg\(1),
      I2 => \reset_auto.cpt_reg\(0),
      I3 => \reset_auto.cpt_reg\(2),
      I4 => \reset_auto.cpt_reg\(4),
      I5 => \reset_auto.cpt_reg\(5),
      O => p_0_in(5)
    );
\reset_auto.cpt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \reset_auto.cpt[10]_i_2_n_0\,
      I1 => \reset_auto.cpt_reg\(6),
      O => p_0_in(6)
    );
\reset_auto.cpt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \reset_auto.cpt[10]_i_2_n_0\,
      I1 => \reset_auto.cpt_reg\(6),
      I2 => \reset_auto.cpt_reg\(7),
      O => p_0_in(7)
    );
\reset_auto.cpt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \reset_auto.cpt_reg\(6),
      I1 => \reset_auto.cpt[10]_i_2_n_0\,
      I2 => \reset_auto.cpt_reg\(7),
      I3 => \reset_auto.cpt_reg\(8),
      O => p_0_in(8)
    );
\reset_auto.cpt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \reset_auto.cpt_reg\(7),
      I1 => \reset_auto.cpt[10]_i_2_n_0\,
      I2 => \reset_auto.cpt_reg\(6),
      I3 => \reset_auto.cpt_reg\(8),
      I4 => \reset_auto.cpt_reg\(9),
      O => p_0_in(9)
    );
\reset_auto.cpt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_display\,
      CE => sel,
      D => p_0_in(0),
      Q => \reset_auto.cpt_reg\(0),
      R => '0'
    );
\reset_auto.cpt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_display\,
      CE => sel,
      D => p_0_in(10),
      Q => \reset_auto.cpt_reg\(10),
      R => '0'
    );
\reset_auto.cpt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_display\,
      CE => sel,
      D => p_0_in(1),
      Q => \reset_auto.cpt_reg\(1),
      R => '0'
    );
\reset_auto.cpt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_display\,
      CE => sel,
      D => p_0_in(2),
      Q => \reset_auto.cpt_reg\(2),
      R => '0'
    );
\reset_auto.cpt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_display\,
      CE => sel,
      D => p_0_in(3),
      Q => \reset_auto.cpt_reg\(3),
      R => '0'
    );
\reset_auto.cpt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_display\,
      CE => sel,
      D => p_0_in(4),
      Q => \reset_auto.cpt_reg\(4),
      R => '0'
    );
\reset_auto.cpt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_display\,
      CE => sel,
      D => p_0_in(5),
      Q => \reset_auto.cpt_reg\(5),
      R => '0'
    );
\reset_auto.cpt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_display\,
      CE => sel,
      D => p_0_in(6),
      Q => \reset_auto.cpt_reg\(6),
      R => '0'
    );
\reset_auto.cpt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_display\,
      CE => sel,
      D => p_0_in(7),
      Q => \reset_auto.cpt_reg\(7),
      R => '0'
    );
\reset_auto.cpt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_display\,
      CE => sel,
      D => p_0_in(8),
      Q => \reset_auto.cpt_reg\(8),
      R => '0'
    );
\reset_auto.cpt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk_display\,
      CE => sel,
      D => p_0_in(9),
      Q => \reset_auto.cpt_reg\(9),
      R => '0'
    );
reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => btn(0),
      I1 => auto_reset,
      O => reset_i_1_n_0
    );
reset_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk_display\,
      CE => '1',
      D => reset_i_1_n_0,
      Q => rst,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_HDMI_proc_0_2 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_HDMI_proc_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_HDMI_proc_0_2 : entity is "system_HDMI_proc_0_2,HDMI_proc,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_HDMI_proc_0_2 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of system_HDMI_proc_0_2 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of system_HDMI_proc_0_2 : entity is "HDMI_proc,Vivado 2020.2";
end system_HDMI_proc_0_2;

architecture STRUCTURE of system_HDMI_proc_0_2 is
  attribute x_interface_info : string;
  attribute x_interface_info of hdmi_TMDS_Clk_n : signal is "xilinx.com:signal:clock:1.0 hdmi_TMDS_Clk_n CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of hdmi_TMDS_Clk_n : signal is "XIL_INTERFACENAME hdmi_TMDS_Clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_HDMI_proc_0_2_hdmi_TMDS_Clk_n, INSERT_VIP 0";
  attribute x_interface_info of hdmi_TMDS_Clk_p : signal is "xilinx.com:signal:clock:1.0 hdmi_TMDS_Clk_p CLK";
  attribute x_interface_parameter of hdmi_TMDS_Clk_p : signal is "XIL_INTERFACENAME hdmi_TMDS_Clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_HDMI_proc_0_2_hdmi_TMDS_Clk_p, INSERT_VIP 0";
begin
U0: entity work.system_HDMI_proc_0_2_HDMI_proc
     port map (
      btn(3 downto 0) => btn(3 downto 0),
      clk_display => clk_display,
      clk_hdmi => clk_hdmi,
      hdmi_TMDS_Clk_n => hdmi_TMDS_Clk_n,
      hdmi_TMDS_Clk_p => hdmi_TMDS_Clk_p,
      hdmi_TMDS_Data_n(2 downto 0) => hdmi_TMDS_Data_n(2 downto 0),
      hdmi_TMDS_Data_p(2 downto 0) => hdmi_TMDS_Data_p(2 downto 0),
      led(3 downto 0) => led(3 downto 0),
      sw(3 downto 0) => sw(3 downto 0)
    );
end STRUCTURE;
