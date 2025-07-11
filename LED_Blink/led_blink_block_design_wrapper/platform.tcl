# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink/led_blink_block_design_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink/led_blink_block_design_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {led_blink_block_design_wrapper}\
-hw {/home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink/led_blink_block_design_wrapper.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {/home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {hello_world}
platform generate -domains 
platform active {led_blink_block_design_wrapper}
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
platform generate
domain active {zynqmp_fsbl}
bsp reload
bsp reload
bsp config stdin "psu_uart_0"
bsp config stdout "psu_uart_0"
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_psu_cortexa53_0}
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynqmp_pmufw}
bsp reload
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynqmp_fsbl}
bsp reload
platform generate -domains standalone_psu_cortexa53_0,zynqmp_fsbl,zynqmp_pmufw 
domain active {standalone_psu_cortexa53_0}
bsp reload
bsp write
platform generate -domains 
bsp reload
domain active {zynqmp_fsbl}
bsp reload
bsp reload
bsp reload
domain active {standalone_psu_cortexa53_0}
bsp reload
catch {platform remove led_blink_block_design_wrapper}
platform create -name {led_blink_block_design_wrapper}\
-hw {/home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink/led_blink_block_design_wrapper.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {/home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {hello_world}
platform generate -domains 
platform write
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
platform generate
bsp reload
bsp reload
bsp reload
platform active {led_blink_block_design_wrapper}
