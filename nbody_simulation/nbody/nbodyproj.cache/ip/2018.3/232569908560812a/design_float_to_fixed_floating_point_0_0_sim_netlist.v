// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Jul 27 12:44:54 2025
// Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_float_to_fixed_floating_point_0_0_sim_netlist.v
// Design      : design_float_to_fixed_floating_point_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_float_to_fixed_floating_point_0_0,floating_point_v7_1_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "floating_point_v7_1_7,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floating_point_v7_1_7_viv i_synth
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
fSg4kzxoXjd077ORq78bBq/dUF4QrbvXHG2uteX+Fg8V8zrueQ/DPfEtLdBADulI5yiOrILVS4uH
GesXwH86l5G3mVxCpeJZX5M98fezxdLR9fbIUxn8VLQJ1f+B37oDj2LDhTqd6ucVX/1UEZ0VK7EO
bqxilqlF7sPNLocfzwIu+dKY4VuvkRJ4RhdnlA64bz6YOgKdGi8FyzEHH5d1+qTlrgMLzh1vnmQq
JPD1U22VpZsDPZKCl1xu7UfmIA1HUFGS0x/krgkyuLnBW6OyhiUX630oz8dqdp5K/9o0u0otg5ec
v+JTNSCP9mbNbwpL9FKeIrA6wAT1nN9f5lxfQA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Qg5KAKDooFcbfPNqoarQ/rOKHTpWqxlpzBWivnLHs8UaBqWVbCBL2JYRRfOOFaQuv0jFM8XrpQKO
xYMRS9LVaH3Q6mSUbQmHJV/C1PGtT5PaIOHWXRqUOONkP1S/RE0vpeXBA0+bF/q/j/2xD7V4jZHF
crerEqKS50SRYJEersP1t8A2ij7e+hsE1MbgjFa+4DgvHM+nNQrjia3th6alvX5I08ouP9T6HXzv
jWqtqQucLwQTeVnVsB20WBBl9PqBH7hpv2KxQj0OKk+AXv7HO8eqjevRpCirbYTEUrh4HgdAsdg5
syrVpbh9MS3VxToMpUJRWHCznCcEmxpwnwjjLg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51776)
`pragma protect data_block
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
N38UfUed+2BIkTVbwX0oR3Ez7Q8=
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
