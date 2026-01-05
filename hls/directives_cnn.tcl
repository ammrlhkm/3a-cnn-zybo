//  Catapult Ultra Synthesis 2024.2/1130128 (Production Release) Mon Aug 26 21:59:12 PDT 2024
//  
//          Copyright (c) Siemens EDA, 1996-2024, All Rights Reserved.
//                        UNPUBLISHED, LICENSED SOFTWARE.
//             CONFIDENTIAL AND PROPRIETARY INFORMATION WHICH IS THE
//                   PROPERTY OF SIEMENS EDA OR ITS LICENSORS.
//  
//  Running on Linux xph3sei702@cimeld23.cime.inpg.fr:29725 3.10.0-1160.119.1.el7.x86_64 x86_64 aol
//  
//  Package information: SIFLIBS v27.2_0.0, HLS_PKGS v27.2_0.0, 
//                       SIF_TOOLKITS v27.2_0.0, SIF_XILINX v27.2_0.0, 
//                       SIF_ALTERA v27.2_0.0, CCS_LIBS v27.2_0.0, 
//                       CDS_PPRO v2024.1_3, CDS_DesignChecker v2024.2, 
//                       CDS_OASYS v21.1_3.1, CDS_PSR v24.1_0.20, 
//                       DesignPad v2.78_1.0, DesignAnalyzer 2024.2/1129066
//  
solution new -state initial
solution options defaults
solution options set /Input/TargetPlatform x86_64
solution options set /Input/SearchPath {/usr/include/x86_64-linux-gnu /tp/xph3sei/xph3sei702/3a-cnn-zybo/include}
solution options set /Input/LibPaths {/usr/lib /usr/lib/x86_64-linux-gnu}
solution options set /Output/GenerateCycleNetlist false
solution options set /Flows/QuestaSIM/SCCOM_OPTS {-O2 -g0 -x c++ -Wall -Wno-unused-label -Wno-unknown-pragmas}
solution file add ../include/coeffs_double.h -type CHEADER -exclude true
solution file add ../include/preprocess_image.h -type CHEADER -exclude true
solution file add ../include/coeffs_fixed.h -type CHEADER
solution file add ../include/config.h -type CHEADER
solution file add ../include/cnn_ref.h -type CHEADER -exclude true
solution file add ../include/cnn_fixed.h -type CHEADER
solution file add ../src/preprocess_image.cpp -type C++ -exclude true
solution file add ../src/cnn_fixed.cpp -type C++
solution file add ../src/cnn_ref.cpp -type C++ -exclude true
solution file add ../src/cnn_scverify_bench.cpp -type C++ -exclude true
directive set -DESIGN_GOAL area
directive set -SPECULATE true
directive set -MERGEABLE true
directive set -REGISTER_THRESHOLD 256
directive set -MEM_MAP_THRESHOLD 32
directive set -LOGIC_OPT false
directive set -FSM_ENCODING none
directive set -FSM_BINARY_ENCODING_THRESHOLD 64
directive set -REG_MAX_FANOUT 0
directive set -NO_X_ASSIGNMENTS true
directive set -SAFE_FSM false
directive set -REGISTER_SHARING_MAX_WIDTH_DIFFERENCE 8
directive set -REGISTER_SHARING_LIMIT 0
directive set -ASSIGN_OVERHEAD 0
directive set -TIMING_CHECKS true
directive set -MUXPATH true
directive set -REALLOC true
directive set -UNROLL no
directive set -IO_MODE super
directive set -CHAN_IO_PROTOCOL use_library
directive set -ARRAY_SIZE 1024
directive set -IDLE_SIGNAL {}
directive set -STALL_FLAG_SV off
directive set -STALL_FLAG false
directive set -TRANSACTION_DONE_SIGNAL true
directive set -DONE_FLAG {}
directive set -READY_FLAG {}
directive set -START_FLAG {}
directive set -TRANSACTION_SYNC ready
directive set -RESET_CLEARS_ALL_REGS use_library
directive set -CLOCK_OVERHEAD 20.000000
directive set -ON_THE_FLY_PROTOTYPING false
directive set -OPT_CONST_MULTS use_library
directive set -CHARACTERIZE_ROM false
directive set -PROTOTYPE_ROM true
directive set -ROM_THRESHOLD 64
directive set -CLUSTER_ADDTREE_IN_WIDTH_THRESHOLD 0
directive set -CLUSTER_ADDTREE_IN_COUNT_THRESHOLD 0
directive set -CLUSTER_OPT_CONSTANT_INPUTS true
directive set -CLUSTER_RTL_SYN false
directive set -CLUSTER_FAST_MODE false
directive set -CLUSTER_TYPE combinational
directive set -PIPELINE_RAMP_UP true
go new
go analyze
solution design set cnn_hardware -top
go compile
solution library add mgc_Xilinx-ZYNQ-2_beh -- -rtlsyntool Precision -manufacturer Xilinx -family ZYNQ -speed -2 -part xc7z020clg400-2
solution library add Xilinx_RAMS
go libraries
directive set /cnn_hardware -START_FLAG start
directive set /cnn_hardware -READY_FLAG ready
directive set /cnn_hardware -DONE_FLAG done
directive set -CLOCKS {clk {-CLOCK_PERIOD 20 -CLOCK_EDGE rising -CLOCK_UNCERTAINTY 0.0 -CLOCK_HIGH_TIME 6.665 -RESET_SYNC_NAME rst -RESET_ASYNC_NAME arst_n -RESET_KIND sync -RESET_SYNC_ACTIVE high -RESET_ASYNC_ACTIVE low -ENABLE_ACTIVE high}}
go assembly
directive set /cnn_hardware/image_in:rsc -MAP_TO_MODULE {Xilinx_RAMS.BLOCK_1R1W_RBW_DUAL suppress_sim_read_addr_range_errs=1}
directive set /cnn_hardware/prob_out:rsc -MAP_TO_MODULE {Xilinx_RAMS.BLOCK_1R1W_RBW_DUAL suppress_sim_read_addr_range_errs=1}
directive set /cnn_hardware/prob_out -WORD_WIDTH 10
directive set /cnn_hardware/core/COUT_CONV_LOOP -PIPELINE_INIT_INTERVAL 1
directive set /cnn_hardware/core/KH_MAXPOOL_LOOP -UNROLL yes
directive set /cnn_hardware/core/KW_MAXPOOL_LOOP -UNROLL yes
directive set /cnn_hardware/core/COUT_CONV_LOOP#1 -PIPELINE_INIT_INTERVAL 1
directive set /cnn_hardware/core/KH_MAXPOOL_LOOP#1 -UNROLL yes
directive set /cnn_hardware/core/KW_MAXPOOL_LOOP#1 -UNROLL yes
directive set /cnn_hardware/core/COUT_CONV_LOOP#2 -PIPELINE_INIT_INTERVAL 1
directive set /cnn_hardware/core/KH_MAXPOOL_LOOP#2 -UNROLL yes
directive set /cnn_hardware/core/KW_MAXPOOL_LOOP#2 -UNROLL yes
directive set /cnn_hardware/core/H_FLATTEN_LOOP -PIPELINE_INIT_INTERVAL 1
directive set /cnn_hardware/core/CLASS_OUT_LOOP -PIPELINE_INIT_INTERVAL 1
go architect
go extract
