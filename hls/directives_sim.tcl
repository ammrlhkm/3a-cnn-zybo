flow package require /SCVerify
flow run /SCVerify
flow run /SCVerify/launch_make ./scverify/Verify_orig_cxx_osci.mk {} SIMTOOL=osci sim
flow run /SCVerify/launch_make ./scverify/Verify_concat_sim_rtl_vhdl_msim.mk {} SIMTOOL=msim simgui
