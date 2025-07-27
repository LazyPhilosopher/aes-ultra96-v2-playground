// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Jul 27 12:44:52 2025
// Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/nbody_simulation/nbody/nbodyproj.srcs/sources_1/bd/design_fixed_to_float/ip/design_fixed_to_float_floating_point_0_0/design_fixed_to_float_floating_point_0_0_sim_netlist.v
// Design      : design_fixed_to_float_floating_point_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_fixed_to_float_floating_point_0_0,floating_point_v7_1_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_1_7,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_fixed_to_float_floating_point_0_0
   (aclk,
    s_axis_a_tvalid,
    s_axis_a_tdata,
    m_axis_result_tvalid,
    m_axis_result_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_OPERATION:M_AXIS_RESULT:S_AXIS_C:S_AXIS_B:S_AXIS_A, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_fixed_to_float_aclk, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_fixed_to_float_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_a_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) input [15:0]s_axis_a_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_fixed_to_float_aclk, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 27} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 19}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_underflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value underflow} enabled {attribs {resolve_type generated dependency underflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency underflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value overflow} enabled {attribs {resolve_type generated dependency overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_invalid_op {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value invalid_op} enabled {attribs {resolve_type generated dependency invalid_op_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency invalid_op_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency invalid_op_bitoffset format long minimum {} maximum {}} value 0}}} field_div_by_zero {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value div_by_zero} enabled {attribs {resolve_type generated dependency div_by_zero_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency div_by_zero_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency div_by_zero_bitoffset format long minimum {} maximum {}} value 0}}} field_accum_input_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value accum_input_overflow} enabled {attribs {resolve_type generated dependency accum_input_overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency accum_input_overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency accum_input_overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_accum_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value accum_overflow} enabled {attribs {resolve_type generated dependency accum_overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency accum_overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency accum_overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_a_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value a_tuser} enabled {attribs {resolve_type generated dependency a_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency a_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency a_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_b_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value b_tuser} enabled {attribs {resolve_type generated dependency b_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency b_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency b_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_c_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value c_tuser} enabled {attribs {resolve_type generated dependency c_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency c_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency c_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_operation_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value operation_tuser} enabled {attribs {resolve_type generated dependency operation_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency operation_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency operation_tuser_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) output m_axis_result_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) output [31:0]m_axis_result_tdata;

  wire aclk;
  wire [31:0]m_axis_result_tdata;
  wire m_axis_result_tvalid;
  wire [15:0]s_axis_a_tdata;
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
  (* C_A_FRACTION_WIDTH = "0" *) 
  (* C_A_TDATA_WIDTH = "16" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "0" *) 
  (* C_B_TDATA_WIDTH = "16" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_COMPARE_OPERATION = "8" *) 
  (* C_C_FRACTION_WIDTH = "0" *) 
  (* C_C_TDATA_WIDTH = "16" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "16" *) 
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
  (* C_HAS_FIX_TO_FLT = "1" *) 
  (* C_HAS_FLT_TO_FIX = "0" *) 
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
  (* C_RESULT_FRACTION_WIDTH = "19" *) 
  (* C_RESULT_TDATA_WIDTH = "32" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "27" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_fixed_to_float_floating_point_0_0_floating_point_v7_1_7 U0
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
        .s_axis_b_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_U0_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(1'b0),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_A_FRACTION_WIDTH = "0" *) (* C_A_TDATA_WIDTH = "16" *) (* C_A_TUSER_WIDTH = "1" *) 
(* C_A_WIDTH = "16" *) (* C_BRAM_USAGE = "0" *) (* C_B_FRACTION_WIDTH = "0" *) 
(* C_B_TDATA_WIDTH = "16" *) (* C_B_TUSER_WIDTH = "1" *) (* C_B_WIDTH = "16" *) 
(* C_COMPARE_OPERATION = "8" *) (* C_C_FRACTION_WIDTH = "0" *) (* C_C_TDATA_WIDTH = "16" *) 
(* C_C_TUSER_WIDTH = "1" *) (* C_C_WIDTH = "16" *) (* C_FIXED_DATA_UNSIGNED = "0" *) 
(* C_HAS_ABSOLUTE = "0" *) (* C_HAS_ACCUMULATOR_A = "0" *) (* C_HAS_ACCUMULATOR_S = "0" *) 
(* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) (* C_HAS_ACCUM_OVERFLOW = "0" *) (* C_HAS_ACLKEN = "0" *) 
(* C_HAS_ADD = "0" *) (* C_HAS_ARESETN = "0" *) (* C_HAS_A_TLAST = "0" *) 
(* C_HAS_A_TUSER = "0" *) (* C_HAS_B = "0" *) (* C_HAS_B_TLAST = "0" *) 
(* C_HAS_B_TUSER = "0" *) (* C_HAS_C = "0" *) (* C_HAS_COMPARE = "0" *) 
(* C_HAS_C_TLAST = "0" *) (* C_HAS_C_TUSER = "0" *) (* C_HAS_DIVIDE = "0" *) 
(* C_HAS_DIVIDE_BY_ZERO = "0" *) (* C_HAS_EXPONENTIAL = "0" *) (* C_HAS_FIX_TO_FLT = "1" *) 
(* C_HAS_FLT_TO_FIX = "0" *) (* C_HAS_FLT_TO_FLT = "0" *) (* C_HAS_FMA = "0" *) 
(* C_HAS_FMS = "0" *) (* C_HAS_INVALID_OP = "0" *) (* C_HAS_LOGARITHM = "0" *) 
(* C_HAS_MULTIPLY = "0" *) (* C_HAS_OPERATION = "0" *) (* C_HAS_OPERATION_TLAST = "0" *) 
(* C_HAS_OPERATION_TUSER = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_RECIP = "0" *) 
(* C_HAS_RECIP_SQRT = "0" *) (* C_HAS_RESULT_TLAST = "0" *) (* C_HAS_RESULT_TUSER = "0" *) 
(* C_HAS_SQRT = "0" *) (* C_HAS_SUBTRACT = "0" *) (* C_HAS_UNDERFLOW = "0" *) 
(* C_LATENCY = "1" *) (* C_MULT_USAGE = "0" *) (* C_OPERATION_TDATA_WIDTH = "8" *) 
(* C_OPERATION_TUSER_WIDTH = "1" *) (* C_OPTIMIZATION = "1" *) (* C_RATE = "1" *) 
(* C_RESULT_FRACTION_WIDTH = "19" *) (* C_RESULT_TDATA_WIDTH = "32" *) (* C_RESULT_TUSER_WIDTH = "1" *) 
(* C_RESULT_WIDTH = "27" *) (* C_THROTTLE_SCHEME = "3" *) (* C_TLAST_RESOLUTION = "0" *) 
(* C_XDEVICEFAMILY = "zynquplus" *) (* ORIG_REF_NAME = "floating_point_v7_1_7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module design_fixed_to_float_floating_point_0_0_floating_point_v7_1_7
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
  input [15:0]s_axis_a_tdata;
  input [0:0]s_axis_a_tuser;
  input s_axis_a_tlast;
  input s_axis_b_tvalid;
  output s_axis_b_tready;
  input [15:0]s_axis_b_tdata;
  input [0:0]s_axis_b_tuser;
  input s_axis_b_tlast;
  input s_axis_c_tvalid;
  output s_axis_c_tready;
  input [15:0]s_axis_c_tdata;
  input [0:0]s_axis_c_tuser;
  input s_axis_c_tlast;
  input s_axis_operation_tvalid;
  output s_axis_operation_tready;
  input [7:0]s_axis_operation_tdata;
  input [0:0]s_axis_operation_tuser;
  input s_axis_operation_tlast;
  output m_axis_result_tvalid;
  input m_axis_result_tready;
  output [31:0]m_axis_result_tdata;
  output [0:0]m_axis_result_tuser;
  output m_axis_result_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire aclk;
  wire [26:0]\^m_axis_result_tdata ;
  wire m_axis_result_tvalid;
  wire [15:0]s_axis_a_tdata;
  wire s_axis_a_tvalid;
  wire NLW_i_synth_m_axis_result_tlast_UNCONNECTED;
  wire NLW_i_synth_s_axis_a_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_b_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_c_tready_UNCONNECTED;
  wire NLW_i_synth_s_axis_operation_tready_UNCONNECTED;
  wire [30:22]NLW_i_synth_m_axis_result_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_result_tuser_UNCONNECTED;

  assign m_axis_result_tdata[31] = \^m_axis_result_tdata [26];
  assign m_axis_result_tdata[30] = \^m_axis_result_tdata [26];
  assign m_axis_result_tdata[29] = \^m_axis_result_tdata [26];
  assign m_axis_result_tdata[28] = \^m_axis_result_tdata [26];
  assign m_axis_result_tdata[27] = \^m_axis_result_tdata [26];
  assign m_axis_result_tdata[26:25] = \^m_axis_result_tdata [26:25];
  assign m_axis_result_tdata[24] = \^m_axis_result_tdata [22];
  assign m_axis_result_tdata[23] = \^m_axis_result_tdata [22];
  assign m_axis_result_tdata[22:0] = \^m_axis_result_tdata [22:0];
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
  (* C_A_FRACTION_WIDTH = "0" *) 
  (* C_A_TDATA_WIDTH = "16" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "0" *) 
  (* C_B_TDATA_WIDTH = "16" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_COMPARE_OPERATION = "8" *) 
  (* C_C_FRACTION_WIDTH = "0" *) 
  (* C_C_TDATA_WIDTH = "16" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "16" *) 
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
  (* C_HAS_FIX_TO_FLT = "1" *) 
  (* C_HAS_FLT_TO_FIX = "0" *) 
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
  (* C_RESULT_FRACTION_WIDTH = "19" *) 
  (* C_RESULT_TDATA_WIDTH = "32" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "27" *) 
  (* C_THROTTLE_SCHEME = "3" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_fixed_to_float_floating_point_0_0_floating_point_v7_1_7_viv i_synth
       (.aclk(aclk),
        .aclken(1'b0),
        .aresetn(1'b0),
        .m_axis_result_tdata({\^m_axis_result_tdata [26],NLW_i_synth_m_axis_result_tdata_UNCONNECTED[30:26],\^m_axis_result_tdata [25],\^m_axis_result_tdata [22],NLW_i_synth_m_axis_result_tdata_UNCONNECTED[23:22],\^m_axis_result_tdata [21:0]}),
        .m_axis_result_tlast(NLW_i_synth_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(1'b0),
        .m_axis_result_tuser(NLW_i_synth_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata(s_axis_a_tdata),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(NLW_i_synth_s_axis_a_tready_UNCONNECTED),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_i_synth_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(1'b0),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
nYqapIuWajQIG+gBQyLnDCfbTUwk4YWyPdlhIeMzGXnblEyD0KOviN6lCbOvgysfmAFTkg+4ON9c
sUjk1+mRJ2konFNWzIggsuHCJfizat3UYMMV/38BxWWE66POSv3PYo4tZgOOYhoTPQfPqwwO/6y2
Jbh8xPFWrr+en17z8pTD5nuStm4vnv+ea76ByyLeh9JWlYDHjyjte83SvWrlcsGGDvJXukT4RCKa
xiCc/kpIH48pit7/sFKvlndcTI2Vx3LOzeq9daPlmsPr/DU4Hl8Zw6VXdjyUNqtJaFxneEkQ8jwI
R47rTaISuQazZqX/Dp4u8C2C/LIn3vig2q1bpw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
knSq4YtwCNOEoDRYqRL8djDzH3cdegEHtx5FUHKO4X/I6MkDXph+OT24T1C13ePxltfXJ+UUd7Le
UPgrwveqrPpcYQcvBu/Bs+oiREzla0IWB03B6r8WH0dPrGZT8g+4OU/9N/yiprW6Bn1LC5pBvfH9
UmYAwxzdkSPeMJa6hOmBGNOF2K1KblBr96XCCprUBfOeoqOrgmnatBfijwuD2gwtKiakalCxmb0X
ngvOwuJFTMQJCs0SMVp87Rz9XxWSb5xuVnPliHtrWI44iK4Ny2apbg/uPBThr0Xesaf3CI/1roLz
rlL8yRDIa2DFEc7IQSfSWnV+y7qCeA62CFoHJg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54672)
`pragma protect data_block
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
rwt+oy3IHlla
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
