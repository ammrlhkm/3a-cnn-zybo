# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/ammrlhkm/3a-cnn-zybo/fpga/CNN_HW_SW/Z7_ProcHDMI_axi_20/Z7_ProcHDMI_axi_20_wk/Z7_ProcHDMI_sw_system/_ide/scripts/systemdebugger_z7_prochdmi_sw_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/ammrlhkm/3a-cnn-zybo/fpga/CNN_HW_SW/Z7_ProcHDMI_axi_20/Z7_ProcHDMI_axi_20_wk/Z7_ProcHDMI_sw_system/_ide/scripts/systemdebugger_z7_prochdmi_sw_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A82564A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351A82564A-23727093-0"}
fpga -file /home/ammrlhkm/3a-cnn-zybo/fpga/CNN_HW_SW/Z7_ProcHDMI_axi_20/Z7_ProcHDMI_axi_20_wk/Z7_ProcHDMI_sw/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/ammrlhkm/3a-cnn-zybo/fpga/CNN_HW_SW/Z7_ProcHDMI_axi_20/Z7_ProcHDMI_axi_20_wk/system_wrapper/export/system_wrapper/hw/system_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/ammrlhkm/3a-cnn-zybo/fpga/CNN_HW_SW/Z7_ProcHDMI_axi_20/Z7_ProcHDMI_axi_20_wk/Z7_ProcHDMI_sw/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/ammrlhkm/3a-cnn-zybo/fpga/CNN_HW_SW/Z7_ProcHDMI_axi_20/Z7_ProcHDMI_axi_20_wk/Z7_ProcHDMI_sw/Debug/Z7_ProcHDMI_sw.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
