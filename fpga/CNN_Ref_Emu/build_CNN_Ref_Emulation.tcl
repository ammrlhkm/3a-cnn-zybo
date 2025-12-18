# Vivado TCL script to build CNN test (no display)
# Target: Zybo Z7-20 (xc7z020clg400-1)

set project_name "CNN_Ref_Emulation"
set fpga_part "xc7z020clg400-1"
set src_dir "../src"
set project_dir "CNN_Ref_Emu_prj"

# Clean up previous build
file delete -force $project_dir

# Create project in dedicated directory
create_project $project_name $project_dir -part $fpga_part -force
set_property target_language VHDL [current_project]

# Create block design for clock generation
create_bd_design "clk_system"

# Add clock wizard for 50 MHz CNN clock generation
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0

# Configure clock wizard
# Input: 125 MHz (Zybo system clock)
# Output: 50 MHz (CNN processing clock)
set_property -dict [list \
    CONFIG.PRIM_IN_FREQ {125.000} \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {50.000} \
    CONFIG.USE_LOCKED {true} \
    CONFIG.USE_RESET {true} \
    CONFIG.RESET_TYPE {ACTIVE_HIGH} \
] [get_bd_cells clk_wiz_0]

# Create external ports
create_bd_port -dir I -type clk -freq_hz 125000000 sys_clk
create_bd_port -dir I -type rst reset
set_property CONFIG.POLARITY ACTIVE_HIGH [get_bd_ports reset]
create_bd_port -dir O clk_cnn
create_bd_port -dir O locked

# Connect clock wizard
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins clk_wiz_0/clk_in1]
connect_bd_net [get_bd_ports reset] [get_bd_pins clk_wiz_0/reset]
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_ports clk_cnn]
connect_bd_net [get_bd_pins clk_wiz_0/locked] [get_bd_ports locked]

# Validate and save block design
validate_bd_design
save_bd_design

# Generate HDL wrapper for block design
make_wrapper -files [get_files $project_dir/$project_name.srcs/sources_1/bd/clk_system/clk_system.bd] -top
add_files -norecurse $project_dir/$project_name.gen/sources_1/bd/clk_system/hdl/clk_system_wrapper.vhd

# Add source files from common src directory and project-specific files
add_files [list \
    CNN_Ref_Emulation.vhd \
    $src_dir/cnn_input_rom.vhd \
]

# Add CNN hardware netlist (from Catapult HLS)
read_edif $src_dir/cnn_hardware.edf
set_property IS_GLOBAL_INCLUDE 0 [get_files cnn_hardware.edf]

# Set top module
set_property top CNN_Ref_Emulation [current_fileset]

# Add base constraints from common src
add_files -fileset constrs_1 $src_dir/Zybo_Z7.xdc

# Create additional CNN-specific timing constraints
set constraints_file "$project_dir/$project_name.srcs/constrs_1/new/CNN_timing.xdc"
file mkdir [file dirname $constraints_file]
set xdc [open $constraints_file w]

puts $xdc "# CNN-specific timing constraints"
puts $xdc "# Target: Zybo Z7-20 with CNN hardware accelerator"
puts $xdc "# Pin assignments are in Zybo_Z7.xdc"
puts $xdc ""

puts $xdc "# Input clock (125 MHz system clock)"
puts $xdc "set_property -dict { PACKAGE_PIN K17 IOSTANDARD LVCMOS33 } \[get_ports sys_clk\]"
puts $xdc "create_clock -period 8.000 -name sys_clk -waveform {0.000 4.000} \[get_ports sys_clk\]"
puts $xdc ""

puts $xdc "# Timing constraints"
puts $xdc "# CNN operates on 50 MHz clock (20ns period)"
puts $xdc "# Critical path ~14ns fits comfortably within 20ns"
puts $xdc ""

puts $xdc "# Clock domain crossing: sys_clk (125MHz) to clk_cnn (50MHz from Clock Wizard)"
puts $xdc "# Mark as physically exclusive since they're related but different frequencies"
puts $xdc "set_clock_groups -physically_exclusive -group \[get_clocks sys_clk\] -group \[get_clocks -of_objects \[get_pins */clk_wiz_0/clk_out1\]\]"
puts $xdc ""

puts $xdc "# False paths for async reset from switches"
puts $xdc "set_false_path -from \[get_ports {sw\[0\]}\] -to \[all_registers\]"

close $xdc

add_files -fileset constrs_1 $constraints_file

# Update compile order
update_compile_order -fileset sources_1

# Run synthesis
puts "\n=========================================="
puts "Running Synthesis..."
puts "==========================================\n"
launch_runs synth_1 -jobs 4
wait_on_run synth_1

# Check synthesis result
if {[get_property PROGRESS [get_runs synth_1]] != "100%"} {
    error "Synthesis failed!"
}

# Report utilization after synthesis
open_run synth_1
report_utilization -file synth_utilization.rpt
report_timing_summary -file synth_timing.rpt

puts "\nSynthesis completed successfully!"
puts "Utilization report: [pwd]/synth_utilization.rpt"
puts "Timing report: [pwd]/synth_timing.rpt"

# Run implementation
puts "\n=========================================="
puts "Running Implementation..."
puts "==========================================\n"
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1

# Check implementation result
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} {
    error "Implementation failed!"
}

# Report final results
open_run impl_1
report_utilization -file impl_utilization.rpt
report_timing_summary -file impl_timing.rpt
report_power -file power.rpt

# Copy bitstream to project root for easy access
file copy -force $project_dir/$project_name.runs/impl_1/CNN_Ref_Emulation.bit CNN_Ref_Emulation.bit

puts "\n=========================================="
puts "Build completed successfully!"
puts "==========================================\n"
puts "Bitstream: [pwd]/CNN_Ref_Emulation.bit"
puts "Utilization: [pwd]/impl_utilization.rpt"
puts "Timing: [pwd]/impl_timing.rpt"
puts "Power: [pwd]/power.rpt"

# Optional: Export hardware for SDK (if needed later)
# write_hw_platform -fixed -force -file CNN_Ref_Emulation.xsa
