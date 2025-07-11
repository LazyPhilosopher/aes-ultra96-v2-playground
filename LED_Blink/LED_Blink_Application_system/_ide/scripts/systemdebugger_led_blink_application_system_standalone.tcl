# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink/LED_Blink_Application_system/_ide/scripts/systemdebugger_led_blink_application_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink/LED_Blink_Application_system/_ide/scripts/systemdebugger_led_blink_application_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
source /tools/Xilinx/Vitis/2022.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Avnet USB-to-JTAG/UART Pod V1 1234-oj1A" && level==0 && jtag_device_ctx=="jsn-USB-to-JTAG/UART Pod V1-1234-oj1A-14710093-0"}
fpga -file /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink/LED_Blink_Application/_ide/bitstream/led_blink_block_design_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink/led_blink_block_design_wrapper/export/led_blink_block_design_wrapper/hw/led_blink_block_design_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink/led_blink_block_design_wrapper/export/led_blink_block_design_wrapper/sw/led_blink_block_design_wrapper/boot/fsbl.elf
set bp_42_43_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_42_43_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink/LED_Blink_Application/Debug/LED_Blink_Application.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
