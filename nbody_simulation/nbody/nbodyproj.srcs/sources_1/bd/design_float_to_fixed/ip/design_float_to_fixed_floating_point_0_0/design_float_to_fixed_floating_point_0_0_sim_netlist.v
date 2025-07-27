// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Jul 27 12:44:54 2025
// Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/nbody_simulation/nbody/nbodyproj.srcs/sources_1/bd/design_float_to_fixed/ip/design_float_to_fixed_floating_point_0_0/design_float_to_fixed_floating_point_0_0_sim_netlist.v
// Design      : design_float_to_fixed_floating_point_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_float_to_fixed_floating_point_0_0,floating_point_v7_1_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_1_7,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_float_to_fixed_floating_point_0_0
   (aclk,
    s_axis_a_tvalid,
    s_axis_a_tdata,
    m_axis_result_tvalid,
    m_axis_result_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_float_to_fixed_aclk, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_float_to_fixed_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [31:0]s_axis_a_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_float_to_fixed_aclk, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} TDATA_WIDTH 16 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_underflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value underflow} enabled {attribs {resolve_type generated dependency underflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency underflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value overflow} enabled {attribs {resolve_type generated dependency overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_invalid_op {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value invalid_op} enabled {attribs {resolve_type generated dependency invalid_op_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency invalid_op_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency invalid_op_bitoffset format long minimum {} maximum {}} value 0}}} field_div_by_zero {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value div_by_zero} enabled {attribs {resolve_type generated dependency div_by_zero_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency div_by_zero_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency div_by_zero_bitoffset format long minimum {} maximum {}} value 0}}} field_accum_input_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value accum_input_overflow} enabled {attribs {resolve_type generated dependency accum_input_overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency accum_input_overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency accum_input_overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_accum_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value accum_overflow} enabled {attribs {resolve_type generated dependency accum_overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency accum_overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency accum_overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_a_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value a_tuser} enabled {attribs {resolve_type generated dependency a_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency a_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency a_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_b_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value b_tuser} enabled {attribs {resolve_type generated dependency b_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency b_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency b_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_c_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value c_tuser} enabled {attribs {resolve_type generated dependency c_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency c_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency c_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_operation_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value operation_tuser} enabled {attribs {resolve_type generated dependency operation_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency operation_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency operation_tuser_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) output m_axis_result_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) output [15:0]m_axis_result_tdata;

  wire aclk;
  wire [15:0]m_axis_result_tdata;
  wire m_axis_result_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire NLW_U0_m_axis_result_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_a_tready_UNCONNECTED;
  wire NLW_U0_s_axis_b_tready_UNCONNECTED;
  wire NLW_U0_s_axis_c_tready_UNCONNECTED;
  wire NLW_U0_s_axis_operation_tready_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_result_tuser_UNCONNECTED;

  (* C_ACCUM_INPUT_MSB = "32" *) 
  (* C_ACCUM_LSB = "-31" *) 
  (* C_ACCUM_MSB = "32" *) 
  (* C_A_FRACTION_WIDTH = "19" *) 
  (* C_A_TDATA_WIDTH = "32" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "27" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "19" *) 
  (* C_B_TDATA_WIDTH = "32" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "27" *) 
  (* C_COMPARE_OPERATION = "8" *) 
  (* C_C_FRACTION_WIDTH = "19" *) 
  (* C_C_TDATA_WIDTH = "32" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "27" *) 
  (* C_FIXED_DATA_UNSIGNED = "0" *) 
  (* C_HAS_ABSOLUTE = "0" *) 
  (* C_HAS_ACCUMULATOR_A = "0" *) 
  (* C_HAS_ACCUMULATOR_S = "0" *) 
  (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
  (* C_HAS_ACCUM_OVERFLOW = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ADD = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_A_TLAST = "0" *) 
  (* C_HAS_A_TUSER = "0" *) 
  (* C_HAS_B = "0" *) 
  (* C_HAS_B_TLAST = "0" *) 
  (* C_HAS_B_TUSER = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_COMPARE = "0" *) 
  (* C_HAS_C_TLAST = "0" *) 
  (* C_HAS_C_TUSER = "0" *) 
  (* C_HAS_DIVIDE = "0" *) 
  (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
  (* C_HAS_EXPONENTIAL = "0" *) 
  (* C_HAS_FIX_TO_FLT = "0" *) 
  (* C_HAS_FLT_TO_FIX = "1" *) 
  (* C_HAS_FLT_TO_FLT = "0" *) 
  (* C_HAS_FMA = "0" *) 
  (* C_HAS_FMS = "0" *) 
  (* C_HAS_INVALID_OP = "0" *) 
  (* C_HAS_LOGARITHM = "0" *) 
  (* C_HAS_MULTIPLY = "0" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MULT_USAGE = "0" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "0" *) 
  (* C_RESULT_TDATA_WIDTH = "16" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "16" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_float_to_fixed_floating_point_0_0_floating_point_v7_1_7 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .m_axis_result_tdata(m_axis_result_tdata),
        .m_axis_result_tlast(NLW_U0_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(1'b0),
        .m_axis_result_tuser(NLW_U0_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_U0_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_U0_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(1'b0),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_c_tlast(1'b0),
        .s_axis_c_tready(NLW_U0_s_axis_c_tready_UNCONNECTED),
        .s_axis_c_tuser(1'b0),
        .s_axis_c_tvalid(1'b0),
        .s_axis_operation_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_operation_tlast(1'b0),
        .s_axis_operation_tready(NLW_U0_s_axis_operation_tready_UNCONNECTED),
        .s_axis_operation_tuser(1'b0),
        .s_axis_operation_tvalid(1'b0));
endmodule

(* C_ACCUM_INPUT_MSB = "32" *) (* C_ACCUM_LSB = "-31" *) (* C_ACCUM_MSB = "32" *) 
(* C_A_FRACTION_WIDTH = "19" *) (* C_A_TDATA_WIDTH = "32" *) (* C_A_TUSER_WIDTH = "1" *) 
(* C_A_WIDTH = "27" *) (* C_BRAM_USAGE = "0" *) (* C_B_FRACTION_WIDTH = "19" *) 
(* C_B_TDATA_WIDTH = "32" *) (* C_B_TUSER_WIDTH = "1" *) (* C_B_WIDTH = "27" *) 
(* C_COMPARE_OPERATION = "8" *) (* C_C_FRACTION_WIDTH = "19" *) (* C_C_TDATA_WIDTH = "32" *) 
(* C_C_TUSER_WIDTH = "1" *) (* C_C_WIDTH = "27" *) (* C_FIXED_DATA_UNSIGNED = "0" *) 
(* C_HAS_ABSOLUTE = "0" *) (* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ADD = "0" *) (* C_HAS_ARESETN = "0" *) (* C_HAS_A_TLAST = "0" *) 
(* C_HAS_A_TUSER = "0" *) (* C_HAS_B = "0" *) (* C_HAS_B_TLAST = "0" *) 
(* C_HAS_B_TUSER = "0" *) (* C_HAS_C = "0" *) (* C_HAS_COMPARE = "0" *) 
(* C_HAS_C_TLAST = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_DIVIDE = "0" *) 
(* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FIX_TO_FLT = "0" *) 
(* C_HAS_FLT_TO_FIX = "1" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_FMA = "0" *) 
(* C_HAS_FMS = "0" *) (* C_HAS_INVALID_OP = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_MULTIPLY = "0" *) (* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_RESULT_TLAST = "0" *) (* C_HAS_RESULT_TUSER = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_SUBTRACT = "0" *) (* C_HAS_UNDERFLOW = "0" *) 
(* C_LATENCY = "1" *) (* C_MULT_USAGE = "0" *) (* C_OPERATION_TDATA_WIDTH = "8" *) 
(* C_OPERATION_TUSER_WIDTH = "1" *) (* C_OPTIMIZATION = "1" *) (* C_RATE = "1" *) 
(* C_RESULT_FRACTION_WIDTH = "0" *) (* C_RESULT_TDATA_WIDTH = "16" *) (* C_RESULT_TUSER_WIDTH = "1" *) 
(* C_RESULT_WIDTH = "16" *) (* C_THROTTLE_SCHEME = "3" *) (* C_TLAST_RESOLUTION = "0" *) 
(* C_XDEVICEFAMILY = "zynquplus" *) (* ORIG_REF_NAME = "floating_point_v7_1_7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_float_to_fixed_floating_point_0_0_floating_point_v7_1_7
   (aclk,
    aclken,
    aresetn,
    s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    s_axis_a_tuser,
    s_axis_a_tlast,
    s_axis_b_tvalid,
    s_axis_b_tready,
    s_axis_b_tdata,
    s_axis_b_tuser,
    s_axis_b_tlast,
    s_axis_c_tvalid,
    s_axis_c_tready,
    s_axis_c_tdata,
    s_axis_c_tuser,
    s_axis_c_tlast,
    s_axis_operation_tvalid,
    s_axis_operation_tready,
    s_axis_operation_tdata,
    s_axis_operation_tuser,
    s_axis_operation_tlast,
    m_axis_result_tvalid,
    m_axis_result_tready,
    m_axis_result_tdata,
    m_axis_result_tuser,
    m_axis_result_tlast);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_a_tvalid;
  output s_axis_a_tready;
  input [31:0]s_axis_a_tdata;
  input [0:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [31:0]s_axis_b_tdata;
  input [0:0]s_axis_b_tuser;
  input s_axis_b_tlast;
  input s_axis_c_tvalid;
  output s_axis_c_tready;
  input [31:0]s_axis_c_tdata;
  input [0:0]s_axis_c_tuser;
  input s_axis_c_tlast;
  input s_axis_operation_tvalid;
  output s_axis_operation_tready;
  input [7:0]s_axis_operation_tdata;
  input [0:0]s_axis_operation_tuser;
  input s_axis_operation_tlast;
  output m_axis_result_tvalid;
  input m_axis_result_tready;
  output [15:0]m_axis_result_tdata;
  output [0:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire [15:0]m_axis_result_tdata;
  wire m_axis_result_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire NLW_i_synth_m_axis_result_tlast_UNCONNECTED;
  wire NLW_i_synth_s_axis_a_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_b_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_c_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_operation_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_result_tuser_UNCONNECTED;

  assign m_axis_result_tlast = \<const0> ;
  assign m_axis_result_tuser[0] = \<const0> ;
  assign s_axis_a_tready = \<const1> ;
  assign s_axis_b_tready = \<const1> ;
  assign s_axis_c_tready = \<const1> ;
  assign s_axis_operation_tready = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* C_ACCUM_INPUT_MSB = "32" *) 
  (* C_ACCUM_LSB = "-31" *) 
  (* C_ACCUM_MSB = "32" *) 
  (* C_A_FRACTION_WIDTH = "19" *) 
  (* C_A_TDATA_WIDTH = "32" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "27" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "19" *) 
  (* C_B_TDATA_WIDTH = "32" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "27" *) 
  (* C_COMPARE_OPERATION = "8" *) 
  (* C_C_FRACTION_WIDTH = "19" *) 
  (* C_C_TDATA_WIDTH = "32" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "27" *) 
  (* C_FIXED_DATA_UNSIGNED = "0" *) 
  (* C_HAS_ABSOLUTE = "0" *) 
  (* C_HAS_ACCUMULATOR_A = "0" *) 
  (* C_HAS_ACCUMULATOR_S = "0" *) 
  (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
  (* C_HAS_ACCUM_OVERFLOW = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ADD = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_A_TLAST = "0" *) 
  (* C_HAS_A_TUSER = "0" *) 
  (* C_HAS_B = "0" *) 
  (* C_HAS_B_TLAST = "0" *) 
  (* C_HAS_B_TUSER = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_COMPARE = "0" *) 
  (* C_HAS_C_TLAST = "0" *) 
  (* C_HAS_C_TUSER = "0" *) 
  (* C_HAS_DIVIDE = "0" *) 
  (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
  (* C_HAS_EXPONENTIAL = "0" *) 
  (* C_HAS_FIX_TO_FLT = "0" *) 
  (* C_HAS_FLT_TO_FIX = "1" *) 
  (* C_HAS_FLT_TO_FLT = "0" *) 
  (* C_HAS_FMA = "0" *) 
  (* C_HAS_FMS = "0" *) 
  (* C_HAS_INVALID_OP = "0" *) 
  (* C_HAS_LOGARITHM = "0" *) 
  (* C_HAS_MULTIPLY = "0" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MULT_USAGE = "0" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "0" *) 
  (* C_RESULT_TDATA_WIDTH = "16" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "16" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_float_to_fixed_floating_point_0_0_floating_point_v7_1_7_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .m_axis_result_tdata(m_axis_result_tdata),
        .m_axis_result_tlast(NLW_i_synth_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(1'b0),
        .m_axis_result_tuser(NLW_i_synth_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,s_axis_a_tdata[26:0]}),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_i_synth_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_i_synth_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(1'b0),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_c_tlast(1'b0),
        .s_axis_c_tready(NLW_i_synth_s_axis_c_tready_UNCONNECTED),
        .s_axis_c_tuser(1'b0),
        .s_axis_c_tvalid(1'b0),
        .s_axis_operation_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_operation_tlast(1'b0),
        .s_axis_operation_tready(NLW_i_synth_s_axis_operation_tready_UNCONNECTED),
        .s_axis_operation_tuser(1'b0),
        .s_axis_operation_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
Htz50jQwzDqBz0sJUkiNYd41xyVM9gKOaU0qGZ3Dh5hlksE2EYyEMJ5TEQ9/fgf9ddxIsjO99VQF
+SFeP6Zn0A==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
urFaskumfugPrlLKzxdNiluIVgeqUIta5Ygb2si9wpVVYrLD91tJNNSmQFBFcqkPxRC+c4hD38Ih
TeDFc8GMIYSykN35NKncGdLDKf9vckkVDU3LUXMKQhtPwflso3LHvVPdVeqdB1jrilIuRztti1RI
laiZ1el6FSAEM187MEU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PvQ88O6pn4jd1LlqGMa9u1BhYjCMtSlUDLe77WTjK3x2SjSwkYeJAu8exgSjIKGDB0c9KAZ5QgBh
O2hhbS38Sxr5ENIpMK1iL4mQbE/L1ISVzBhpDCkuB361Z4PHflp+vx13vEh5tLAh0HJLrwVDs7ds
sd3Qx6haRw1rAhBzVOOqg95qdCsfCbYxXUJwnA/LYkOiiBEhr3OshfBWeDvDfiKFTWQDf02hPqv9
6YZkraVjegL5nDxNvVPdCY9avFl3udmu7t95XadRhaDNIJy8jeNzwFN/FVO/oObzjMEUzywVPlvq
bTHWxVvkKvJpHnOq7NZQFDuZ0/qYeTzUSazDiw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QjJIGhz07yYt4U6yvYPbKhHbSWpYqJt31FtbOojSFxXMwF6NZLEiZaIIIWPV6Zrpv3zZaTzpDHNW
kJ44ChH50pS/w4eHwz9Rkhlf4zPqFDJ5K1BQ2PO9A7b9fdIumeVxFOqpdXTuFrmYXmXg74Z5p4Qr
ksZfH+582hrj7NleSVKltv+ZWT4Q2EcUpSasTqpQ/WWAaWXsuDmY/TF1A7Dn1Kp+1XiQRoeerC4i
RKqsy9lvEi726kApiGrFx8VTItw8VUccosa36zsWsAoOGUVwk/xs2YnwU40wT2VKLz6TbH/jt/qq
MlBDlF578tL/zpkYMfCtPnkljmp6ESneGZQymw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AYCQHSpmU8XcndTGK7EswczC2JHPTpOl/QkpC7inAetwAToyr/QbvaJy+dRBnenEogfr9kuwBk7R
FveKksvT6WqZ9X80UkxZvUAwAlQZtlhUh9wAEAtlVzXtPdJQLZD0mVp3JWNUuyle4RNCRlOdu65V
OhrIaCQ4das2LWAtVGidm3mOjabJ3/vs8Uhgte4K5jML5uhlgfNHfgy11XvCCXijRSyX4Vfl1Oop
zJoBd2Ac2Vffqs5QBY26wU2c+wUC2mDxUUvNFcenq/S+AagI5R9KNFIC69BcIUTpebsT41vZRXiL
59qYxSXnKAO9JTQnZ8Bwm4dPmQARUaLnQxiLXw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Oj7XWa8zrsMCrFj1f7b6A6AylDgxLQhfw+MQu06gYsEvOQkxZ6fwujchNWvGwSwpEYmCNyKYhErO
GKfeD3W1lEuLvC5IyY/by6+zv9p6klEsQVOxtkr1GxMytbtDPPgqw2nY3P37+GNSs+JpH8Jur2Iv
LAUwD5ZYVKID5fHuFVw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NdYEll1opWwDyBdIK+m1ZLwghhUVo+JQ4mOYvEMCoy5ztuZ0zDLOT4oJ1pcstOx8dqQ9dSL9Ia2F
kzcsXtCf0Kflv8nq7QUdu3g94NQjczIRI/6Ju1LmL+jwrBbAEGnkHoHpZzc7ySY7tiEG0ekBhKBW
5BwubTXyHpteV9cxJSsd1nKnhdFnbeRZYV/XkgPriJsRTXvgi0oAjclpplkt93pTpKsFn+n8kNdT
scUv0wQpOi75aw0fvEV7M9sXiTsTrVIAQA4ciZlxDEJNqo9hUSpcOTiCjdNhF1oSGEKtdhZH+0eP
O7uUJYO323HSOcTu8GMgBa38JF0Tr0gJlqAcpQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CxibUoaxtWY5BPo2W4M2OWjeygYzaLJw5xvnMolj/T8rGxP9WCShxbQBTxjq2HcTxSKFvnkKErw4
xkmr/heki/Y4zVtCDDlSmAa3/nv+x4xYqAwOMP1zQkXtqtDkFRuU4naBwuSEs1HtnIJCWlC5T9Vg
MnVuiSOvhVrw4ULoQ5sUHORSVwzFbuzZamj2RK061TXHWtGLpRBZF9pZ45GbrvCIPZ/MUSnr58Hy
jGyQqANzfzus/E4hR/A924ZXbd9FyJSX22HGWQprfDxR85JvPITdOtztgLN4G8V8F1fP44Hg5LZX
MTKPiVI9ZTrL0yG67ilb+kMPFmlaQKCInaxYIA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TSkKqJZLyTLunaM6gpxoBdSE5bkC6cuGrE7rOHlVOr1sc9HCC7/uRjdH12NXF5eycDphwdP6AIaM
bunckJdjOpmbtqB9aep+Df58Rvnpl4UoLGhNmvcFYXs/iYVQFHvyhUqKP5hjH281UAoIidtzH3Vt
Et6AFmlBq6DD3RsjGbV0JfAv2tm1TI/bVad+jcEcHBpov0B7liK+T9UYmhHUn/ieAaQbBrMDcP3V
5rqwWCO75F8zjOPZ7DKIYZNCAlpF+SDswIyKDoyfYrjPQWTRQa9iZGTA+NzKamDs3xq8MIIA0F/V
F45qVDRRWcZKG/KT3Oc6507JH+V7hRWXyAD0AQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51952)
`pragma protect data_block
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
XpWNGtLXbK6y7mOGyRgiWwe9ce0YAlxIfw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
