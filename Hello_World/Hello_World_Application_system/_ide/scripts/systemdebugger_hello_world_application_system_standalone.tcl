# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/call_me_utka/Documents/Projects/HDL/Hello_World/Hello_World_Application_system/_ide/scripts/systemdebugger_hello_world_application_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/call_me_utka/Documents/Projects/HDL/Hello_World/Hello_World_Application_system/_ide/scripts/systemdebugger_hello_world_application_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
source /tools/Xilinx/Vitis/2022.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A" && level==0 && jtag_device_ctx=="jsn-USB-to-JTAG/UART Pod V1-1234-oj1A-14710093-0"}
fpga -file /home/call_me_utka/Documents/Projects/HDL/Hello_World/Hello_World_Application/_ide/bitstream/hello_world_block_design_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/call_me_utka/Documents/Projects/HDL/Hello_World/hello_world_block_design_wrapper/export/hello_world_block_design_wrapper/hw/hello_world_block_design_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow /home/call_me_utka/Documents/Projects/HDL/Hello_World/hello_world_block_design_wrapper/export/hello_world_block_design_wrapper/sw/hello_world_block_design_wrapper/boot/fsbl.elf
set bp_41_57_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_41_57_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow /home/call_me_utka/Documents/Projects/HDL/Hello_World/Hello_World_Application/Debug/Hello_World_Application.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
