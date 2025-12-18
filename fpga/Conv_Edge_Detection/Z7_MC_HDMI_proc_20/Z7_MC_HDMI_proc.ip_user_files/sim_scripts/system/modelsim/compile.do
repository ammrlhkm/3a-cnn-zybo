vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_8
vlib modelsim_lib/msim/processing_system7_vip_v1_0_10
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_7

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 modelsim_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 modelsim_lib/msim/processing_system7_vip_v1_0_10
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8 -64 -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10 -64 -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ipshared/99c2/src/MC_HDMI_proc.vhd" \
"../../../bd/system/ip/system_MC_HDMI_proc_0_0/sim/system_MC_HDMI_proc_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_clk_wiz_0_1/system_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_0_1/system_clk_wiz_0_1.v" \

vlog -work xlconstant_v1_1_7 -64 -incr "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_MC_HDMI_proc.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconstant_0_0/sim/system_xlconstant_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/sim/system.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

