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
// Create Date: 04/18/2018 08:30:50 PM
// Design Name: 
// Module Name: apb3_regbank
// Project Name: ZZSoC Proj 2 Nbody sim
// Target Devices: XCZU3EG
// Tool Versions: 2018.3
// Description: 
//     Custome APB based control and status register space.
//     User can trigger accelerator and collect status signals from PL
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//   All code designed, developed by me.
//////////////////////////////////////////////////////////////////////////////////


module apb3_regbank(
                           clk,
                           rst_in,
                           APB_M_paddr,
                           APB_M_penable,
                           APB_M_psel,
                           APB_M_pwdata,
                           APB_M_pwrite,
                           APB_M_pready,
                           APB_M_prdata,
                           APB_M_pslverr,
                           reg0,
                           reg1,
                           reg2,
                           reg3,
                           outreg0,
                           outreg1,
                           outreg2,
                           outreg3,
                           outreg4,
                           outreg5,
                           outreg6,
                           outreg7    
                         );
    
    input clk;
    input rst_in;
    input wire [31:0]   APB_M_paddr;
    input wire          APB_M_penable;
    input wire [0:0]    APB_M_psel;
    input wire [31:0]   APB_M_pwdata;
    input wire          APB_M_pwrite;

    output wire [0:0]   APB_M_pready;
    output reg  [31:0]  APB_M_prdata;
    output wire         APB_M_pslverr;
    
    
    output reg [31:0] reg0;
    output reg [31:0] reg1;
    output reg [31:0] reg2;
    output reg [31:0] reg3;
    
    input wire [31:0] outreg0;
    input wire [31:0] outreg1;
    input wire [31:0] outreg2;
    input wire [31:0] outreg3;
    input wire [31:0] outreg4;
    input wire [31:0] outreg5;
    input wire [31:0] outreg6;
    input wire [31:0] outreg7;
    
    wire           rdb_wr_a;
    wire [15:0]    addr;
    
    // local reset synchronizer
    wire rst;
    reset_pipe rst_pipe0 (.clk(clk), .rst_in(rst_in), .rst_out(rst));
    //assign rst = rst_in;
    //---------    
    
    assign addr = APB_M_paddr[15:0];
    assign APB_M_pready = 1'b1;
    assign APB_M_pslverr = 1'b0;
    
    assign rdb_wr_a =    APB_M_penable &&  APB_M_psel && APB_M_pwrite;
    
    always@(posedge clk)
    begin
      if (rst) begin
          reg0 <= 32'd0;
          reg1 <= 32'd0;
          reg2 <= 32'd0;
          reg3 <= 32'd0;
      end
      else
      begin
          if (rdb_wr_a)
            begin
              case (addr)
                'h0: begin
                    reg0 <= APB_M_pwdata;
                end
                'h4: begin
                    reg1 <= APB_M_pwdata;
                end
                'h8: begin
                    reg2 <= APB_M_pwdata;
                end
                'hc: begin
                    reg3 <= APB_M_pwdata;
                end
                default: begin
                    reg0 <= reg0;
                    reg1 <= reg1;
                    reg2 <= reg2;
                    reg3 <= reg3;
                end
              endcase
          end
      end
    end
    
    always@(*)
    begin
      case (addr)
        'h0:  APB_M_prdata = reg0;
        'h4:  APB_M_prdata = reg1;
        'h8:  APB_M_prdata = reg2;
        'hc:  APB_M_prdata = reg3;
        'h80: APB_M_prdata = outreg0;
        'h84: APB_M_prdata = outreg1;
        'h88: APB_M_prdata = outreg2;
        'h8c: APB_M_prdata = outreg3;
        'h90: APB_M_prdata = outreg4;
        'h94: APB_M_prdata = outreg5;
        'h98: APB_M_prdata = outreg6;
        'h9c: APB_M_prdata = outreg7;
                                                                          
       default: begin
          APB_M_prdata = 32'd0;
        end
      endcase
        
    end                       
 
endmodule
