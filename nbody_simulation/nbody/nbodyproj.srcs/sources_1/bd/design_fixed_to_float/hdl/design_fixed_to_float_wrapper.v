//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Sun Jul 27 12:42:45 2025
//Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target design_fixed_to_float_wrapper.bd
//Design      : design_fixed_to_float_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_fixed_to_float_wrapper
   (M_AXIS_RESULT_tdata,
    M_AXIS_RESULT_tvalid,
    S_AXIS_A_tdata,
    S_AXIS_A_tvalid,
    aclk);
  output [31:0]M_AXIS_RESULT_tdata;
  output M_AXIS_RESULT_tvalid;
  input [15:0]S_AXIS_A_tdata;
  input S_AXIS_A_tvalid;
  input aclk;

  wire [31:0]M_AXIS_RESULT_tdata;
  wire M_AXIS_RESULT_tvalid;
  wire [15:0]S_AXIS_A_tdata;
  wire S_AXIS_A_tvalid;
  wire aclk;

  design_fixed_to_float design_fixed_to_float_i
       (.M_AXIS_RESULT_tdata(M_AXIS_RESULT_tdata),
        .M_AXIS_RESULT_tvalid(M_AXIS_RESULT_tvalid),
        .S_AXIS_A_tdata(S_AXIS_A_tdata),
        .S_AXIS_A_tvalid(S_AXIS_A_tvalid),
        .aclk(aclk));
endmodule
