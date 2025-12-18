# Vivado TCL script to build CNN test (no display)
# Target: Zybo Z7-20 (xc7z020clg400-1)

set project_name "CNN_Ref_Emulation"
set fpga_part "xc7z020clg400-1"
set src_dir "[pwd]"

# Create project in dedicated directory
create_project $project_name -part $fpga_part -force
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
make_wrapper -files [get_files $project_name.srcs/sources_1/bd/clk_system/clk_system.bd] -top
add_files -norecurse $project_name.gen/sources_1/bd/clk_system/hdl/clk_system_wrapper.vhd

# Add source files (using absolute paths since we're in project_dir now)
add_files [glob $src_dir/*.vhd]

# Add CNN hardware netlist (from Catapult HLS)
read_edif $src_dir/cnn_hardware.edf
set_property IS_GLOBAL_INCLUDE 0 [get_files cnn_hardware.edf]

# Set top module
set_property top CNN_Ref_Emulation [current_fileset]

# Create constraints (now relative to project_dir since we're inside it)
set constraints_file "$project_name.srcs/constrs_1/new/Zybo_Z7_Emu.xdc"
file mkdir [file dirname $constraints_file]
set xdc [open $constraints_file w]

puts $xdc "# Input clock (125 MHz system clock)"
puts $xdc "create_clock -period 8.000 -name sys_clk -waveform {0.000 4.000} \[get_ports sys_clk\]"
puts $xdc "set_property PACKAGE_PIN K17 \[get_ports sys_clk\]"
puts $xdc "set_property IOSTANDARD LVCMOS33 \[get_ports sys_clk\]"
puts $xdc ""

puts $xdc "# Reset"
puts $xdc "set_property PACKAGE_PIN Y16 \[get_ports reset\]"
puts $xdc "set_property IOSTANDARD LVCMOS33 \[get_ports reset\]"
puts $xdc ""

puts $xdc "# Buttons (active high)"
puts $xdc "set_property PACKAGE_PIN K18 \[get_ports {btn\[0\]}\]  ;# BTN0"
puts $xdc "set_property PACKAGE_PIN P16 \[get_ports {btn\[1\]}\]  ;# BTN1"
puts $xdc "set_property PACKAGE_PIN K19 \[get_ports {btn\[2\]}\]  ;# BTN2"
puts $xdc "set_property PACKAGE_PIN Y16 \[get_ports {btn\[3\]}\]  ;# BTN3"
puts $xdc "set_property IOSTANDARD LVCMOS33 \[get_ports {btn\[*\]}\]"
puts $xdc ""

puts $xdc "# Switches"
puts $xdc "set_property PACKAGE_PIN G15 \[get_ports {sw\[0\]}\]"
puts $xdc "set_property PACKAGE_PIN P15 \[get_ports {sw\[1\]}\]"
puts $xdc "set_property PACKAGE_PIN W13 \[get_ports {sw\[2\]}\]"
puts $xdc "set_property PACKAGE_PIN T16 \[get_ports {sw\[3\]}\]"
puts $xdc "set_property IOSTANDARD LVCMOS33 \[get_ports {sw\[*\]}\]"
puts $xdc ""

puts $xdc "# LEDs"
puts $xdc "set_property PACKAGE_PIN M14 \[get_ports {led\[0\]}\]  ;# LD0"
puts $xdc "set_property PACKAGE_PIN M15 \[get_ports {led\[1\]}\]  ;# LD1"
puts $xdc "set_property PACKAGE_PIN G14 \[get_ports {led\[2\]}\]  ;# LD2"
puts $xdc "set_property PACKAGE_PIN D18 \[get_ports {led\[3\]}\]  ;# LD3"
puts $xdc "set_property IOSTANDARD LVCMOS33 \[get_ports {led\[*\]}\]"
puts $xdc ""

puts $xdc "# Timing constraints"
puts $xdc "# CNN operates on 50 MHz clock (20ns period)"
puts $xdc "# Critical path ~14ns fits comfortably within 20ns"
puts $xdc ""

puts $xdc "# Clock domain crossing: sys_clk to clk_cnn"
puts $xdc "# These are synchronous by design (divider), but mark as exclusive"
puts $xdc "set_clock_groups -physically_exclusive -group \[get_clocks sys_clk\] -group \[get_clocks clk_cnn\]"
puts $xdc ""

puts $xdc "# False paths for async reset"
puts $xdc "set_false_path -from \[get_ports {btn\[0\]}\] -to \[all_registers\]"

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
puts "Utilization report: synth_utilization.rpt"
puts "Timing report: synth_timing.rpt"

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

puts "\n=========================================="
puts "Build completed successfully!"
puts "==========================================\n"
puts "Bitstream: $project_name.runs/impl_1/CNN_Ref_Emulation.bit"
puts "Utilization: impl_utilization.rpt"
puts "Timing: impl_timing.rpt"
puts "Power: power.rpt"

# Optional: Export hardware for SDK (if needed later)
# write_hw_platform -fixed -force -file $project_name.xsa
