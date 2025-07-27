`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//    Copyright 2019 Xilinx
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
// Create Date: 04/16/2018 05:53:18 PM
// Design Name: 
// Module Name: top
// Project Name: ZZSoC Proj 2 Nbody sim
// Target Devices: XCZU3EG
// Tool Versions: 2018.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//   Top design interconnected block design and custom RTL
//////////////////////////////////////////////////////////////////////////////////


module top(
   bt_ctsn,
   bt_rtsn,
   gpio_sensors_tri_io,
   uart0_ctsn,
   uart0_rtsn,
   uart0_rxd,
   uart0_txd,
   uart1_rxd,
   uart1_txd
   );
   
 input bt_ctsn;
 output bt_rtsn;
 inout [5:0]gpio_sensors_tri_io;
 input uart0_ctsn;
 output uart0_rtsn;
 input uart0_rxd;
 output uart0_txd;
 input uart1_rxd;
 output uart1_txd;
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
 wire uart0_ctsn;
 wire uart0_rtsn;
 wire uart0_rxd;
 wire uart0_txd;
 wire uart1_rxd;
 wire uart1_txd;


 wire [31:0] APB_M_paddr;
 wire        APB_M_penable;
 wire [31:0] APB_M_prdata;
 wire [0:0]  APB_M_pready;
 wire [0:0]  APB_M_psel;
 wire [0:0]  APB_M_pslverr;
 wire [31:0] APB_M_pwdata;
 wire        APB_M_pwrite;
 
 wire [31:0] APB_M2_paddr;
 wire        APB_M2_penable;
 wire [31:0] APB_M2_prdata;
 wire [0:0]  APB_M2_pready;
 wire [0:0]  APB_M2_psel;
 wire [0:0]  APB_M2_pslverr;
 wire [31:0] APB_M2_pwdata;
 wire        APB_M2_pwrite;
  
 wire [31:0] APB_M3_paddr;
 wire        APB_M3_penable;
 wire [31:0] APB_M3_prdata;
 wire [0:0]  APB_M3_pready;
 wire [0:0]  APB_M3_psel;
 wire [0:0]  APB_M3_pslverr;
 wire [31:0] APB_M3_pwdata;
 wire        APB_M3_pwrite;
  
 wire pl_clk1;
 wire pl_clk2_300MHz;
 wire pl_clk3_374MHz;
 wire pll_locked;
 wire rst;


design_1_wrapper i_design_1  (
    .peripheral_reset(rst),
    .APB_M_paddr(APB_M_paddr),
    .APB_M_penable(APB_M_penable),
    .APB_M_prdata(APB_M_prdata),
    .APB_M_pready(APB_M_pready),
    .APB_M_psel(APB_M_psel),
    .APB_M_pslverr(APB_M_pslverr),
    .APB_M_pwdata(APB_M_pwdata),
    .APB_M_pwrite(APB_M_pwrite),
    .APB_M2_paddr(APB_M2_paddr),
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
    .bt_ctsn(bt_ctsn),
    .bt_rtsn(bt_rtsn),
    .gpio_sensors_tri_io(gpio_sensors_tri_io),
    .pl_clk1(pl_clk1),
    .pl_clk2_300MHz(pl_clk2_300MHz),
    .pl_clk3_374MHz(pl_clk3_374MHz),
    .pll_locked(pll_locked),
    .uart0_ctsn(uart0_ctsn),
    .uart0_rtsn(uart0_rtsn),
    .uart0_rxd(uart0_rxd),
    .uart0_txd(uart0_txd),
    .uart1_rxd(uart1_rxd),
    .uart1_txd(uart1_txd)
    );

compute_engine i_compute_engine  (
    .rst(rst),
    .APB_M_paddr(APB_M_paddr),
    .APB_M_penable(APB_M_penable),
    .APB_M_prdata(APB_M_prdata),
    .APB_M_pready(APB_M_pready),
    .APB_M_psel(APB_M_psel),
    .APB_M_pslverr(APB_M_pslverr),
    .APB_M_pwdata(APB_M_pwdata),
    .APB_M_pwrite(APB_M_pwrite),
    .APB_M2_paddr(APB_M2_paddr),
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
    .pl_clk1(pl_clk1),
    .pl_clk2_300MHz(pl_clk2_300MHz),
    .pl_clk3_374MHz(pl_clk3_374MHz),
    .pll_locked(pll_locked)
     );

endmodule
