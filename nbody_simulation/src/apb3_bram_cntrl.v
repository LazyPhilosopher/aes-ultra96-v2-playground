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
// Create Date: 05/23/2018 07:05:44 PM
// Design Name: 
// Module Name: apb3_bram_cntrr
// Project Name: ZZSoC Proj 2 Nbody sim
// Target Devices: XCZU3EG 
// Tool Versions: 2018.3
// Description: 
//     Custom APB3 based memory controller to interface TX and RX RAMs that 
//     store int16 values 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.02 - Edited filename, changed addr with to 15 bits and added comments
// Additional Comments:
//   1. All code was designed and developed by me.
//   2. This engine receives commands from APB3 bus (through AXI to APB bridge) 
//      and decides where the WRITES/READS should be diverted to.
//   3. In sort, this acts like a mini memory controller
//////////////////////////////////////////////////////////////////////////////////

`define RAM_DEPTH 512

module apb3_bram_cntrl(
                 clk,
                 rst_in,
                 APB_M_paddr, // rx
                 APB_M_penable,
                 APB_M_psel,
                 APB_M_pwdata,
                 APB_M_pwrite,
                 APB_M_pready,
                 APB_M_prdata,
                 APB_M_pslverr,
                 APB_M2_paddr, // tx
                 APB_M2_penable,
                 APB_M2_psel,
                 APB_M2_pwdata,
                 APB_M2_pwrite,
                 APB_M2_pready,
                 APB_M2_prdata,
                 APB_M2_pslverr,
                 
                 // rx ram - write to this ram through sw
                 // the following signals are generated from apb3 bram controller to write to rxram
                 addra_rxram0,  
                 dina_rxram0, 
                 wea_rxram0, 
                 ena_rxram0,
                 douta_rxram0, 
                 
                 addra_rxram1,  
                 dina_rxram1, 
                 wea_rxram1, 
                 ena_rxram1,
                 douta_rxram1, 
                                                   
                 // tx bram - read from this ram through sw
                 // the following signals are generated from apb3 bram controller to read from txram
                 addrb_txram0,  
                 enb_txram0,
                 doutb_txram0, 
  
                 addrb_txram1,  
                 enb_txram1,
                 doutb_txram1                     
);
  
  input clk;
  input rst_in;
  input wire [31:0]   APB_M_paddr;
  input wire          APB_M_penable;
  input wire [0:0]    APB_M_psel;
  input wire [31:0]   APB_M_pwdata;
  input wire          APB_M_pwrite;

  output wire [0:0]   APB_M_pready;
  output wire [31:0]  APB_M_prdata;
  output wire         APB_M_pslverr;
  
  input wire [31:0]   APB_M2_paddr;
  input wire          APB_M2_penable;
  input wire [0:0]    APB_M2_psel;
  input wire [31:0]   APB_M2_pwdata;
  input wire          APB_M2_pwrite;
  
  output wire [0:0]   APB_M2_pready;
  output wire [31:0]  APB_M2_prdata;
  output wire         APB_M2_pslverr;
  
  output wire [15:0]   addra_rxram0;
  output wire [31:0]  dina_rxram0;
  output wire         wea_rxram0;
  output wire         ena_rxram0;
  input wire  [31:0]  douta_rxram0;
   
  output wire [15:0]   addra_rxram1;
  output wire [31:0]  dina_rxram1;
  output wire         wea_rxram1;
  output wire         ena_rxram1;
  input wire  [31:0]  douta_rxram1;  
  
  output wire [15:0]   addrb_txram0;
  output wire         enb_txram0;
  input wire  [31:0]  doutb_txram0;  

  output wire [15:0]   addrb_txram1;
  output wire         enb_txram1;
  input wire  [31:0]  doutb_txram1;
    
  wire [15:0] rxaddr, txaddr;
  wire [15:0]  rxram_row_num, txram_row_num;
  wire        is_rxram1, is_txram1;
  wire        rxram_wr_en, txram_wr_en;
  
      // local reset synchronizer
  wire rst;
  reset_pipe rst_pipe_apb3_bram_cntrl (.clk(clk), .rst_in(rst_in), .rst_out(rst));
  //assign rst = rst_in;
  //---------    
      
  // APB_M_addr is 16b address
  // 0x0, 0x4, 0x8..
  // apb - m  - rxram0 - 0x0000 to 0x7FFF
  // apb - m  - rxram1 - 0x8000 to 0xFFFF
  // apb - m2 - txram  - 0x0000 to 0x7FFF
  // rxram and txram addresses are just row nums (APB_M_addr>>2)   
  
  // rx brams : control - rxram0 has x,y & rxram1 has z,mass 
  assign rxaddr         = APB_M_paddr[15:0]>>2;
  assign rxram_row_num  = {1'b0,rxaddr[14:0]};
  assign is_rxram1      = APB_M_paddr[15];
  assign APB_M_pready   = 1'b1;
  assign rxram_wr_en    = APB_M_penable &&  APB_M_psel && APB_M_pwrite;
  
  assign addra_rxram0 = rxram_row_num;
  assign dina_rxram0  = (rxram_wr_en && ~is_rxram1) ? APB_M_pwdata : 32'd0;
  assign wea_rxram0   = (rxram_wr_en && ~is_rxram1) ? 1'b1 : 1'd0;
  assign ena_rxram0   = (~is_rxram1) ? 1'b1 : 1'd0;
  
  assign addra_rxram1 = rxram_row_num;
  assign dina_rxram1  = (rxram_wr_en && is_rxram1) ? APB_M_pwdata : 32'd0;
  assign wea_rxram1   = (rxram_wr_en && is_rxram1) ? 1'b1 : 1'd0;
  assign ena_rxram1   = (is_rxram1) ? 1'b1 : 1'd0;
        
  assign APB_M_prdata = (is_rxram1) ? douta_rxram1 : douta_rxram0;
  assign APB_M_pslverr = 1'b0;  
    
  // tx brams : control -  
  assign txaddr         = APB_M2_paddr[15:0]>>2;
  assign txram_row_num  = {1'b0,txaddr[14:0]};
  assign is_txram1      = APB_M2_paddr[15];
  assign APB_M2_pready   = 1'b1;
    
  assign addrb_txram0    = txram_row_num;
  assign addrb_txram1    = txram_row_num;
  assign enb_txram0      = 1'b1;    
  assign enb_txram1      = 1'b1;    
  assign txram_wr_en    = 1'b0;
  
  assign APB_M2_pslverr = 1'b0;
  assign APB_M2_prdata = (is_txram1) ? doutb_txram1 : doutb_txram0;
        
endmodule
