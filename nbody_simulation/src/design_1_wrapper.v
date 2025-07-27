//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
//Date        : Wed May 30 13:02:05 2018
//Host        : XSJRAJEEVP31 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
// 
//    Licensed under the Apache License, Version 2.0 (the "License");
//    you may not use this file except in compliance with the License.
//    You may obtain a copy of the License at
// 
//      http://www.apache.org/licenses/LICENSE-2.0
// 
//    Unless required by applicable law or agreed to in writing, software
//    distributed under the License is distributed on an "AS IS" BASIS,
//    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//    See the License for the specific language governing permissions and
//    limitations under the License.
// 
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: Rajeev Patwari
// 
// Create Date: 02/27/2018 07:53:18 PM
// Design Name: 
// Module Name: design_1_wrapper
// Project Name: ZZSoC Proj 2 Nbody sim
// Target Devices: XCZU3EG
// Tool Versions: 2018.3
// Description: 
//    customized design 1 wrapper
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps

module design_1_wrapper
   (APB_M2_paddr,
    APB_M2_penable,
    APB_M2_prdata,
    APB_M2_pready,
    APB_M2_psel,
    APB_M2_pslverr,
    APB_M2_pwdata,
    APB_M2_pwrite,
    APB_M3_paddr,
    APB_M3_penable,
    APB_M3_prdata,
    APB_M3_pready,
    APB_M3_psel,
    APB_M3_pslverr,
    APB_M3_pwdata,
    APB_M3_pwrite,
    APB_M_paddr,
    APB_M_penable,
    APB_M_prdata,
    APB_M_pready,
    APB_M_psel,
    APB_M_pslverr,
    APB_M_pwdata,
    APB_M_pwrite,
    bt_ctsn,
    bt_rtsn,
    gpio_sensors_tri_io,
    peripheral_reset,
    pl_clk1,
    pl_clk2_300MHz,
    pl_clk3_374MHz,
    pll_locked,
    uart0_ctsn,
    uart0_rtsn,
    uart0_rxd,
    uart0_txd,
    uart1_rxd,
    uart1_txd);
  output [39:0]APB_M2_paddr;
  output APB_M2_penable;
  input [31:0]APB_M2_prdata;
  input [0:0]APB_M2_pready;
  output [0:0]APB_M2_psel;
  input [0:0]APB_M2_pslverr;
  output [31:0]APB_M2_pwdata;
  output APB_M2_pwrite;
  output [39:0]APB_M3_paddr;
  output APB_M3_penable;
  input [31:0]APB_M3_prdata;
  input [0:0]APB_M3_pready;
  output [0:0]APB_M3_psel;
  input [0:0]APB_M3_pslverr;
  output [31:0]APB_M3_pwdata;
  output APB_M3_pwrite;
  output [39:0]APB_M_paddr;
  output APB_M_penable;
  input [31:0]APB_M_prdata;
  input [0:0]APB_M_pready;
  output [0:0]APB_M_psel;
  input [0:0]APB_M_pslverr;
  output [31:0]APB_M_pwdata;
  output APB_M_pwrite;
  input bt_ctsn;
  output bt_rtsn;
  inout [5:0]gpio_sensors_tri_io;
  output [0:0]peripheral_reset;
  output pl_clk1;
  output pl_clk2_300MHz;
  output pl_clk3_374MHz;
  output pll_locked;
  input uart0_ctsn;
  output uart0_rtsn;
  input uart0_rxd;
  output uart0_txd;
  input uart1_rxd;
  output uart1_txd;

  wire [39:0]APB_M2_paddr;
  wire APB_M2_penable;
  wire [31:0]APB_M2_prdata;
  wire [0:0]APB_M2_pready;
  wire [0:0]APB_M2_psel;
  wire [0:0]APB_M2_pslverr;
  wire [31:0]APB_M2_pwdata;
  wire APB_M2_pwrite;
  wire [39:0]APB_M3_paddr;
  wire APB_M3_penable;
  wire [31:0]APB_M3_prdata;
  wire [0:0]APB_M3_pready;
  wire [0:0]APB_M3_psel;
  wire [0:0]APB_M3_pslverr;
  wire [31:0]APB_M3_pwdata;
  wire APB_M3_pwrite;
  wire [39:0]APB_M_paddr;
  wire APB_M_penable;
  wire [31:0]APB_M_prdata;
  wire [0:0]APB_M_pready;
  wire [0:0]APB_M_psel;
  wire [0:0]APB_M_pslverr;
  wire [31:0]APB_M_pwdata;
  wire APB_M_pwrite;
  wire bt_ctsn;
  wire bt_rtsn;
  wire [0:0]gpio_sensors_tri_i_0;
  wire [1:1]gpio_sensors_tri_i_1;
  wire [2:2]gpio_sensors_tri_i_2;
  wire [3:3]gpio_sensors_tri_i_3;
  wire [4:4]gpio_sensors_tri_i_4;
  wire [5:5]gpio_sensors_tri_i_5;
  wire [0:0]gpio_sensors_tri_io_0;
  wire [1:1]gpio_sensors_tri_io_1;
  wire [2:2]gpio_sensors_tri_io_2;
  wire [3:3]gpio_sensors_tri_io_3;
  wire [4:4]gpio_sensors_tri_io_4;
  wire [5:5]gpio_sensors_tri_io_5;
  wire [0:0]gpio_sensors_tri_o_0;
  wire [1:1]gpio_sensors_tri_o_1;
  wire [2:2]gpio_sensors_tri_o_2;
  wire [3:3]gpio_sensors_tri_o_3;
  wire [4:4]gpio_sensors_tri_o_4;
  wire [5:5]gpio_sensors_tri_o_5;
  wire [0:0]gpio_sensors_tri_t_0;
  wire [1:1]gpio_sensors_tri_t_1;
  wire [2:2]gpio_sensors_tri_t_2;
  wire [3:3]gpio_sensors_tri_t_3;
  wire [4:4]gpio_sensors_tri_t_4;
  wire [5:5]gpio_sensors_tri_t_5;
  wire [0:0]peripheral_reset;
  wire pl_clk1_75MHz;
  wire pl_clk2_300MHz;
  wire pl_clk3_374MHz;
  wire pll_locked;
  wire uart0_ctsn;
  wire uart0_rtsn;
  wire uart0_rxd;
  wire uart0_txd;
  wire uart1_rxd;
  wire uart1_txd;

  design_1 design_1_i
       (.APB_M2_paddr(APB_M2_paddr),
        .APB_M2_penable(APB_M2_penable),
        .APB_M2_prdata(APB_M2_prdata),
        .APB_M2_pready(APB_M2_pready),
        .APB_M2_psel(APB_M2_psel),
        .APB_M2_pslverr(APB_M2_pslverr),
        .APB_M2_pwdata(APB_M2_pwdata),
        .APB_M2_pwrite(APB_M2_pwrite),
        .APB_M3_paddr(APB_M3_paddr),
        .APB_M3_penable(APB_M3_penable),
        .APB_M3_prdata(APB_M3_prdata),
        .APB_M3_pready(APB_M3_pready),
        .APB_M3_psel(APB_M3_psel),
        .APB_M3_pslverr(APB_M3_pslverr),
        .APB_M3_pwdata(APB_M3_pwdata),
        .APB_M3_pwrite(APB_M3_pwrite),
        .APB_M_paddr(APB_M_paddr),
        .APB_M_penable(APB_M_penable),
        .APB_M_prdata(APB_M_prdata),
        .APB_M_pready(APB_M_pready),
        .APB_M_psel(APB_M_psel),
        .APB_M_pslverr(APB_M_pslverr),
        .APB_M_pwdata(APB_M_pwdata),
        .APB_M_pwrite(APB_M_pwrite),
        .bt_ctsn(bt_ctsn),
        .bt_rtsn(bt_rtsn),
        .gpio_sensors_tri_i({gpio_sensors_tri_i_5,gpio_sensors_tri_i_4,gpio_sensors_tri_i_3,gpio_sensors_tri_i_2,gpio_sensors_tri_i_1,gpio_sensors_tri_i_0}),
        .gpio_sensors_tri_o({gpio_sensors_tri_o_5,gpio_sensors_tri_o_4,gpio_sensors_tri_o_3,gpio_sensors_tri_o_2,gpio_sensors_tri_o_1,gpio_sensors_tri_o_0}),
        .gpio_sensors_tri_t({gpio_sensors_tri_t_5,gpio_sensors_tri_t_4,gpio_sensors_tri_t_3,gpio_sensors_tri_t_2,gpio_sensors_tri_t_1,gpio_sensors_tri_t_0}),
        .peripheral_reset(peripheral_reset),
        .pl_clk1(pl_clk1),
        .pl_clk2_300MHz(pl_clk2_300MHz),
        .pl_clk3_374MHz(pl_clk3_374MHz),
        .pll_locked(pll_locked),
        .uart0_ctsn(uart0_ctsn),
        .uart0_rtsn(uart0_rtsn),
        .uart0_rxd(uart0_rxd),
        .uart0_txd(uart0_txd),
        .uart1_rxd(uart1_rxd),
        .uart1_txd(uart1_txd));
  IOBUF gpio_sensors_tri_iobuf_0
       (.I(gpio_sensors_tri_o_0),
        .IO(gpio_sensors_tri_io[0]),
        .O(gpio_sensors_tri_i_0),
        .T(gpio_sensors_tri_t_0));
  IOBUF gpio_sensors_tri_iobuf_1
       (.I(gpio_sensors_tri_o_1),
        .IO(gpio_sensors_tri_io[1]),
        .O(gpio_sensors_tri_i_1),
        .T(gpio_sensors_tri_t_1));
  IOBUF gpio_sensors_tri_iobuf_2
       (.I(gpio_sensors_tri_o_2),
        .IO(gpio_sensors_tri_io[2]),
        .O(gpio_sensors_tri_i_2),
        .T(gpio_sensors_tri_t_2));
  IOBUF gpio_sensors_tri_iobuf_3
       (.I(gpio_sensors_tri_o_3),
        .IO(gpio_sensors_tri_io[3]),
        .O(gpio_sensors_tri_i_3),
        .T(gpio_sensors_tri_t_3));
  IOBUF gpio_sensors_tri_iobuf_4
       (.I(gpio_sensors_tri_o_4),
        .IO(gpio_sensors_tri_io[4]),
        .O(gpio_sensors_tri_i_4),
        .T(gpio_sensors_tri_t_4));
  IOBUF gpio_sensors_tri_iobuf_5
       (.I(gpio_sensors_tri_o_5),
        .IO(gpio_sensors_tri_io[5]),
        .O(gpio_sensors_tri_i_5),
        .T(gpio_sensors_tri_t_5));
endmodule
