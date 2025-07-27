// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Jul 27 12:44:45 2025
// Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/nbody_simulation/nbody/nbodyproj.srcs/sources_1/bd/design_1/ip/design_1_axi_apb_bridge_0_0/design_1_axi_apb_bridge_0_0_stub.v
// Design      : design_1_axi_apb_bridge_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_apb_bridge,Vivado 2018.3" *)
module design_1_axi_apb_bridge_0_0(s_axi_aclk, s_axi_aresetn, s_axi_awaddr, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wvalid, s_axi_wready, s_axi_bresp, 
  s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, s_axi_rdata, 
  s_axi_rresp, s_axi_rvalid, s_axi_rready, m_apb_paddr, m_apb_psel, m_apb_penable, 
  m_apb_pwrite, m_apb_pwdata, m_apb_pready, m_apb_prdata, m_apb_prdata2, m_apb_prdata3, 
  m_apb_pslverr)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,s_axi_awaddr[39:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[39:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,m_apb_paddr[39:0],m_apb_psel[2:0],m_apb_penable,m_apb_pwrite,m_apb_pwdata[31:0],m_apb_pready[2:0],m_apb_prdata[31:0],m_apb_prdata2[31:0],m_apb_prdata3[31:0],m_apb_pslverr[2:0]" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [39:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [39:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [39:0]m_apb_paddr;
  output [2:0]m_apb_psel;
  output m_apb_penable;
  output m_apb_pwrite;
  output [31:0]m_apb_pwdata;
  input [2:0]m_apb_pready;
  input [31:0]m_apb_prdata;
  input [31:0]m_apb_prdata2;
  input [31:0]m_apb_prdata3;
  input [2:0]m_apb_pslverr;
endmodule
