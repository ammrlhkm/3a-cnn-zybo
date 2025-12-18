vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_8
vlib riviera/processing_system7_vip_v1_0_10
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_7

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 riviera/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 riviera/processing_system7_vip_v1_0_10
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10  -sv2k12 "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ipshared/99c2/src/MC_HDMI_proc.vhd" \
"../../../bd/system/ip/system_MC_HDMI_proc_0_0/sim/system_MC_HDMI_proc_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_clk_wiz_0_1/system_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_0_1/system_clk_wiz_0_1.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconstant_0_0/sim/system_xlconstant_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/sim/system.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

