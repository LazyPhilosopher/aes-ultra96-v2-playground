##########################################################################
#
#    Copyright 2019 Xilinx 
# 
#    Licensed under the Apache License, Version 2.0 (the "License");
#    you may not use this file except in compliance with the License.
#    You may obtain a copy of the License at
# 
#      http://www.apache.org/licenses/LICENSE-2.0
# 
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS,
#    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#    See the License for the specific language governing permissions and
#    limitations under the License.
# 
##########################################################################


################################################################
#
# Rajeev Patwari
# 4/25/2019
#
# This file builds the entire design by building different blocks
# and interconnecting them together to form the processing system 
# plus hardware accelerator
################################################################

# Build block designs
source ./src/design_1.tcl
source ./src/design_fixed_to_float.tcl
source ./src/design_float_to_fixed.tcl
source ./src/design_fp_add.tcl
source ./src/design_fp_mult.tcl
source ./src/design_fp_invsqrt.tcl

# make wrappers for block designs

# do not make design_1_wrapper as gpio's unused need to be disconnected. this is done in the attached wrapper
#make_wrapper -files [get_files ./nbody/nbodyproj.srcs/sources_1/bd/design_1/design_1.bd] -top
#add_files -norecurse ./nbody/nbodyproj.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v

make_wrapper -files [get_files ./nbody/nbodyproj.srcs/sources_1/bd/design_fixed_to_float/design_fixed_to_float.bd] -top
add_files -norecurse ./nbody/nbodyproj.srcs/sources_1/bd/design_fixed_to_float/hdl/design_fixed_to_float_wrapper.v

make_wrapper -files [get_files ./nbody/nbodyproj.srcs/sources_1/bd/design_float_to_fixed/design_float_to_fixed.bd] -top
add_files -norecurse ./nbody/nbodyproj.srcs/sources_1/bd/design_float_to_fixed/hdl/design_float_to_fixed_wrapper.v

make_wrapper -files [get_files ./nbody/nbodyproj.srcs/sources_1/bd/design_fp_add/design_fp_add.bd] -top
add_files -norecurse ./nbody/nbodyproj.srcs/sources_1/bd/design_fp_add/hdl/design_fp_add_wrapper.v

make_wrapper -files [get_files ./nbody/nbodyproj.srcs/sources_1/bd/design_fp_mult/design_fp_mult.bd] -top
add_files -norecurse ./nbody/nbodyproj.srcs/sources_1/bd/design_fp_mult/hdl/design_fp_mult_wrapper.v

make_wrapper -files [get_files ./nbody/nbodyproj.srcs/sources_1/bd/design_fp_invsqrt/design_fp_invsqrt.bd] -top
add_files -norecurse ./nbody/nbodyproj.srcs/sources_1/bd/design_fp_invsqrt/hdl/design_fp_invsqrt_wrapper.v

# Add source files
add_files -norecurse ./src/design_1_wrapper.v
add_files -norecurse ./src/apb3_bram_cntrl.v
add_files -norecurse ./src/apb3_regbank.v
add_files -norecurse ./src/compute_engine.v
add_files -norecurse ./src/gravity_accelerator.v
add_files -norecurse ./src/parallel_gravity_accelerator.v
add_files -norecurse ./src/reset_pipe.v
add_files -norecurse ./src/top.v
add_files -norecurse ./src/xilinx_simple_dual_port_1_clock_ram.v
add_files -norecurse ./src/xlnx_tdpram_macro.v

add_files -norecurse ./src/vars.vh
set_property file_type {Verilog Header} [get_files ./src/vars.vh]
set_property is_global_include true [get_files ./src/vars.vh]

set_property top top [current_fileset]
update_compile_order -fileset sources_1

add_files -fileset constrs_1 -norecurse ./src/nbody.xdc
set_property target_constrs_file ./src/nbody.xdc [current_fileset -constrset]

set_property SOURCE_SET sources_1 [get_filesets sim_1]
add_files -fileset sim_1 -norecurse -scan_for_includes ./src/testbench.v
set_property top testbench [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]

set_property STEPS.SYNTH_DESIGN.ARGS.FLATTEN_HIERARCHY full [get_runs synth_1]
set_property STEPS.SYNTH_DESIGN.ARGS.RETIMING true [get_runs synth_1]

# synthesize, implement and generate bitstream
launch_runs impl_1 -to_step write_bitstream -jobs 16
wait_on_run impl_1

# This hardware definition file will be used for microblaze projects
file mkdir ./nbody/nbodyproj.sdk
write_hwdef -force  -file ./nbody/nbodyproj.sdk/nbody.hdf

# move and rename bitstream to a different location so user can copy with ease
file mkdir ./nbody/pynq_overlay_files
file copy -force ./nbody/nbodyproj.runs/impl_1/top.bit ./nbody/pynq_overlay_files/nbodypynq.bit
file copy -force ./src/design_1.tcl ./nbody/pynq_overlay_files/nbodypynq.tcl
