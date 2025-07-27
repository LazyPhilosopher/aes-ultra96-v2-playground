// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Jul 27 12:44:51 2025
// Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/nbody_simulation/nbody/nbodyproj.srcs/sources_1/bd/design_fixed_to_float/ip/design_fixed_to_float_floating_point_0_0/design_fixed_to_float_floating_point_0_0_stub.v
// Design      : design_fixed_to_float_floating_point_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "floating_point_v7_1_7,Vivado 2018.3" *)
module design_fixed_to_float_floating_point_0_0(aclk, s_axis_a_tvalid, s_axis_a_tdata, 
  m_axis_result_tvalid, m_axis_result_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_a_tvalid,s_axis_a_tdata[15:0],m_axis_result_tvalid,m_axis_result_tdata[31:0]" */;
  input aclk;
  input s_axis_a_tvalid;
  input [15:0]s_axis_a_tdata;
  output m_axis_result_tvalid;
  output [31:0]m_axis_result_tdata;
endmodule
