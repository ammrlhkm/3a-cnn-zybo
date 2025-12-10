
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
   set_property BOARD_PART digilentinc.com:zybo-z7-20:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set btn [ create_bd_port -dir I -from 3 -to 0 btn ]
  set hdmi_TMDS_Clk_n [ create_bd_port -dir O -type clk hdmi_TMDS_Clk_n ]
  set hdmi_TMDS_Clk_p [ create_bd_port -dir O -type clk hdmi_TMDS_Clk_p ]
  set hdmi_TMDS_Data_n [ create_bd_port -dir O -from 2 -to 0 hdmi_TMDS_Data_n ]
  set hdmi_TMDS_Data_p [ create_bd_port -dir O -from 2 -to 0 hdmi_TMDS_Data_p ]
  set led [ create_bd_port -dir O -from 3 -to 0 led ]
  set pl_clk [ create_bd_port -dir I -type clk -freq_hz 125000000 pl_clk ]
  set sw [ create_bd_port -dir I -from 3 -to 0 sw ]

  # Create instance: HDMI_proc_0, and set properties
  set HDMI_proc_0 [ create_bd_cell -type ip -vlnv cime3:user:HDMI_proc:1.0 HDMI_proc_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {80.0} \
   CONFIG.CLKOUT1_JITTER {173.196} \
   CONFIG.CLKOUT1_PHASE_ERROR {104.065} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {25.000} \
   CONFIG.CLKOUT2_JITTER {125.031} \
   CONFIG.CLKOUT2_PHASE_ERROR {104.065} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {125.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {117.310} \
   CONFIG.CLKOUT3_PHASE_ERROR {104.065} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {180.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.CLK_OUT1_PORT {clk_vga} \
   CONFIG.CLK_OUT2_PORT {clk_hdmi} \
   CONFIG.CLK_OUT3_PORT {clk_camera} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {7.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {8.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {35.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {7} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {5} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.PRIM_IN_FREQ {125.000} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create port connections
  connect_bd_net -net HDMI_proc_0_hdmi_TMDS_Clk_n [get_bd_ports hdmi_TMDS_Clk_n] [get_bd_pins HDMI_proc_0/hdmi_TMDS_Clk_n]
  connect_bd_net -net HDMI_proc_0_hdmi_TMDS_Clk_p [get_bd_ports hdmi_TMDS_Clk_p] [get_bd_pins HDMI_proc_0/hdmi_TMDS_Clk_p]
  connect_bd_net -net HDMI_proc_0_hdmi_TMDS_Data_n [get_bd_ports hdmi_TMDS_Data_n] [get_bd_pins HDMI_proc_0/hdmi_TMDS_Data_n]
  connect_bd_net -net HDMI_proc_0_hdmi_TMDS_Data_p [get_bd_ports hdmi_TMDS_Data_p] [get_bd_pins HDMI_proc_0/hdmi_TMDS_Data_p]
  connect_bd_net -net HDMI_proc_0_led [get_bd_ports led] [get_bd_pins HDMI_proc_0/led]
  connect_bd_net -net btn_1 [get_bd_ports btn] [get_bd_pins HDMI_proc_0/btn]
  connect_bd_net -net clk_in1_1 [get_bd_ports pl_clk] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_hdmi [get_bd_pins HDMI_proc_0/clk_hdmi] [get_bd_pins clk_wiz_0/clk_hdmi]
  connect_bd_net -net clk_wiz_0_clk_vga [get_bd_pins HDMI_proc_0/clk_display] [get_bd_pins clk_wiz_0/clk_vga]
  connect_bd_net -net sw_1 [get_bd_ports sw] [get_bd_pins HDMI_proc_0/sw]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


