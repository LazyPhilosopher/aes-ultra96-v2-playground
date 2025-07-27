# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink/design_1_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink/design_1_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {/home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/Custom_IP/design_1_wrapper.xsa}\
-arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {/home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink}

platform write
domain create -name {standalone_psu_cortexa53_0} -display-name {standalone_psu_cortexa53_0} -os {standalone} -proc {psu_cortexa53_0} -runtime {cpp} -arch {64-bit} -support-app {hello_world}
platform generate -domains 
platform write
domain active {zynqmp_fsbl}
domain active {zynqmp_pmufw}
domain active {standalone_psu_cortexa53_0}
platform generate -quick
bsp reload
bsp write
platform generate
