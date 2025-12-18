# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /tima/smancini/Zynq/Z7/Z7_Demo_Cam/Z7_MC_HDMI_proc_20/Z7_MC_HDMI_proc_wk/Z7_MC_HDMI_proc_sw_system/_ide/scripts/debugger_z7_mc_hdmi_proc_sw-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /tima/smancini/Zynq/Z7/Z7_Demo_Cam/Z7_MC_HDMI_proc_20/Z7_MC_HDMI_proc_wk/Z7_MC_HDMI_proc_sw_system/_ide/scripts/debugger_z7_mc_hdmi_proc_sw-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A821E8A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351A821E8A-23727093-0"}
fpga -file /tima/smancini/Zynq/Z7/Z7_Demo_Cam/Z7_MC_HDMI_proc_20/Z7_MC_HDMI_proc_wk/Z7_MC_HDMI_proc_sw/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /tima/smancini/Zynq/Z7/Z7_Demo_Cam/Z7_MC_HDMI_proc_20/Z7_MC_HDMI_proc_wk/system_wrapper/export/system_wrapper/hw/system_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /tima/smancini/Zynq/Z7/Z7_Demo_Cam/Z7_MC_HDMI_proc_20/Z7_MC_HDMI_proc_wk/Z7_MC_HDMI_proc_sw/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /tima/smancini/Zynq/Z7/Z7_Demo_Cam/Z7_MC_HDMI_proc_20/Z7_MC_HDMI_proc_wk/Z7_MC_HDMI_proc_sw/Debug/Z7_MC_HDMI_proc_sw.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
