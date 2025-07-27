`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2025 05:01:53 PM
// Design Name: 
// Module Name: blink
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module blink(
    input clk,
    output led
    );
    
    reg [27:0] counter;
    
    always@(posedge clk)
    begin
        counter <= counter  + 1;    
    end
    
    assign led = counter[25];
endmodule
