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
// Create Date: 05/27/2018 07:45:41 PM
// Design Name: 
// Module Name: reset_pipe
// Project Name: ZZSoC Proj 2 Nbody sim
// Target Devices: XCZU3EG
// Tool Versions: 2018.1
// Description: 
//   Simple pipeline to reduce fan out on reset signal
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module reset_pipe(
    clk, 
    rst_in,
    rst_out 

    );
    
    input wire clk;
    input wire rst_in;
    output wire rst_out;
    
    // local reset pipeline to avoid large reset fanout on external reset pin
        reg rst_sync_ff_0 = 1;
        reg rst_sync_ff_1 = 1;
        always @(posedge clk)
          {rst_sync_ff_1, rst_sync_ff_0}  <= {rst_sync_ff_0, rst_in};
        
        assign rst_out  =    rst_sync_ff_1;                               
    //--------- 
endmodule
