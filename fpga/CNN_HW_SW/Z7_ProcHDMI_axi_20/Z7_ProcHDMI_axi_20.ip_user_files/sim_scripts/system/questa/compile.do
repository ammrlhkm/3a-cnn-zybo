vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_8
vlib questa_lib/msim/processing_system7_vip_v1_0_10
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_22
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/io_video

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 questa_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 questa_lib/msim/processing_system7_vip_v1_0_10
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_22 questa_lib/msim/axi_register_slice_v2_1_22
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap io_video questa_lib/msim/io_video

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8 -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10 -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/sim/bd_919a.v" \

vlog -work xlconstant_v1_1_7 -64 "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_919a_one_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_919a_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_919a_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_919a_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_919a_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_919a_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_919a_sarn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_919a_srn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_919a_sawn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_919a_swn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_919a_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_11/sim/bd_919a_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/7bd7/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_12/sim/bd_919a_m00e_0.sv" \

vlog -work smartconnect_v1_0 -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_22 -64 "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0/sim/system_smartconnect_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_proc_sys_reset_0_0/sim/system_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.v" \

vlog -work blk_mem_gen_v8_4_4 -64 "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ip/system_axi_Z7_ProcHDMI_0_0/src/mem2p_1728_10/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/25b7/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/896c/hdl/verilog" "+incdir+../../../../Z7_ProcHDMI_axi_20.srcs/sources_1/bd/system/ipshared/d0f7" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_Z7_ProcHDMI_0_0/src/mem2p_1728_10/sim/mem2p_1728_10.v" \
"../../../bd/system/ip/system_axi_Z7_ProcHDMI_0_0/src/mem2p_10_10/sim/mem2p_10_10.v" \

vcom -work io_video -64 -93 \
"../../../bd/system/ipshared/3a90/src/io_video/axi_Z7_ProcHDMI_S00_AXI.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ipshared/3a90/src/io_video/axi_Z7_ProcHDMI.vhd" \
"../../../bd/system/ip/system_axi_Z7_ProcHDMI_0_0/sim/system_axi_Z7_ProcHDMI_0_0.vhd" \
"../../../bd/system/sim/system.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

