//  Catapult Ultra Synthesis 2024.2/1130128 (Production Release) Mon Aug 26 21:59:12 PDT 2024
//
//          Copyright (c) Siemens EDA, 1996-2024, All Rights Reserved.
//                        UNPUBLISHED, LICENSED SOFTWARE.
//             CONFIDENTIAL AND PROPRIETARY INFORMATION WHICH IS THE
//                   PROPERTY OF SIEMENS EDA OR ITS LICENSORS.
//
//  Running on Linux xph3sei702@cimeld20.cime.inpg.fr:6603 3.10.0-1160.119.1.el7.x86_64 x86_64 aol
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
options set Project/ProjectNamePrefix Catapult_CNN
solution options set /Input/TargetPlatform x86_64
solution options set /Input/SearchPath {/usr/include/x86_64-linux-gnu /tp/xph3sei/xph3sei702/3a-cnn-zybo/include}
solution options set /Input/LibPaths {/usr/lib /usr/lib/x86_64-linux-gnu}
solution options set /Output/GenerateCycleNetlist false
solution options set /TextEditor/FontSize 9
solution options set /Flows/Precision/addio false
flow package option set /QuestaSIM/SCCOM_OPTS {-O2 -g0 -x c++ -Wall -Wno-unused-label -Wno-unknown-pragmas}
flow package require /SCVerify
solution file add ../include/coeffs_double.h -type CHEADER -exclude true
solution file add ../include/preprocess_image.h -type CHEADER -exclude true
solution file add ../include/coeffs_fixed.h -type CHEADER
solution file add ../include/config.h -type CHEADER
solution file add ../include/cnn_ref.h -type CHEADER -exclude true
solution file add ../include/cnn_fixed.h -type CHEADER
solution file add ../include/fixedp.h -type CHEADER
solution file add ../src/preprocess_image.cpp -type C++ -exclude true
solution file add ../src/cnn_fixed.cpp -type C++
solution file add ../src/cnn_ref.cpp -type C++ -exclude true
solution file add ../src/cnn_scverify_bench.cpp -type C++ -exclude true
go analyze
solution design set cnn_hardware -top
go compile
solution library add mgc_Xilinx-ZYNQ-2_beh -- -rtlsyntool Precision -manufacturer Xilinx -family ZYNQ -speed -2 -part xc7z020clg400-2
solution library add Xilinx_RAMS
go libraries
directive set -CLOCKS {clk {-CLOCK_PERIOD 20 -CLOCK_EDGE rising -CLOCK_HIGH_TIME 10 -CLOCK_OFFSET 0.000000 -CLOCK_UNCERTAINTY 0.0 -RESET_KIND sync -RESET_SYNC_NAME rst -RESET_SYNC_ACTIVE high -RESET_ASYNC_NAME arst_n -RESET_ASYNC_ACTIVE low -ENABLE_NAME {} -ENABLE_ACTIVE high}}
go assembly
directive set /cnn_hardware/output:rsc -MAP_TO_MODULE mgc_ioport.mgc_out_stdreg
go architect
go allocate
go extract
flow run /SCVerify/launch_make ./scverify/Verify_orig_cxx_osci.mk {} SIMTOOL=osci sim
flow run /SCVerify/launch_make ./scverify/Verify_concat_sim_rtl_vhdl_msim.mk {} SIMTOOL=msim simgui