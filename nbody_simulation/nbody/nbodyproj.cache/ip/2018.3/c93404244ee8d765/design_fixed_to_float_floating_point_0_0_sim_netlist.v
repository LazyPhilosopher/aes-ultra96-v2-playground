// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Jul 27 12:44:51 2025
// Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_fixed_to_float_floating_point_0_0_sim_netlist.v
// Design      : design_fixed_to_float_floating_point_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_fixed_to_float_floating_point_0_0,floating_point_v7_1_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_1_7,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floating_point_v7_1_7 U0
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
(* C_XDEVICEFAMILY = "zynquplus" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floating_point_v7_1_7
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floating_point_v7_1_7_viv i_synth
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
Xy+T/2qQGaeYwS/THLQ0Ww4J8m052Pg3xAO++Ud06cjIpcUjng5qRZhAEGoWOumQhArTHOjw2jjG
YlNFuvhRbIoZa8XGZCpUdf/8BHDJIQIynq/O9ppVKuoiBDFGnGSvSOPq77eRnhLdslZ2JQLrAs8c
TDDyy1JVE/ZmkCJwWGAljnc5lI6BSMT8ghMVu2Bq4kOccScYKRKRETMzwkGNfgg7/2td8B/3KW15
RFuI2UwE0SIR/ACYlo3eu/wq/FIqMLfAI5HHrKvA6FJifQcMHeLANuBqZ7sHLBJ6CQ5mEwGEtme+
z8enROcrl48rT1Xn04Lh6VChMPp1vbFSJxNSIA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F5+OWXHRfp9L7X8zXTzZ8rJlcQT/omiD6n0tdnVp5cOwPYtFMEiRWi3VocJSaniOhlbOY/s2NRkz
MUI/lOoPUN/mTSTFcr8MXfWfohOxNzAepcVgzyss5Q0cYpvaPqTi4P0wHZXlV4hxKpQg3NIs5RoX
eI8YtUY1m0YV8cNZgnftU7WWFl04dh1Mlgp4XufInggK7CB/N3V3FwQ6TVlRyufCaPcFAgi7IYVv
QrCQoZoA1JF6mhTw5vcuUtuVEzSWNiMhbYh8wEoAOJ0bpKjSqHy0SBATp8JmPCgnqpbe9aAKFCQ9
1o1FXXSYzBUYzvJeiPV3LMkgq91eGoz4HQUVFQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 54368)
`pragma protect data_block
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
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
