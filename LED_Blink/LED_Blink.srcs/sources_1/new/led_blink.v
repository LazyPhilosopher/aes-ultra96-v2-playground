`timescale 1ns / 1ps


module led_blink(
    input clk,
    output led
    );
    
    reg [27:0] counter;
    
    always@(posedge clk)
    begin
        counter <= counter+1;
    end
    
assign  led = counter[27];

endmodule
