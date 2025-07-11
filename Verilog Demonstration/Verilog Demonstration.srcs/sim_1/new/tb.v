`timescale 1ns / 1ps


module tb;


// Value assignment
reg [3:0] a = 4'h0;

initial begin
    $display("==Value assignment==");
    a <= 4'b1001;
    #10;
    $display("Value of a:%0d @ %0t", a, $time);
    a <= 4'b0001;
    $display("Value of a:%0d @ %0t", a, $time); // decimal %0d, binary %0b, hexadecimal %0x, octal %0o, time %0t, float %0f
    #10;
    a = 4'b1010;
    $display("Value of a:%0d @ %0t", a, $time);
    #10;
    a = 4'b1010;
    $display("Value of a:%0d @ %0t", a, $time);

end 



// Monitor variable value changes
initial begin
    $monitor("Monitoring a: %0d @ %0t", a, $time);
end 



// Datatype demonstration 
reg [7:0] var1 = 8'hff;
integer var2 = -23;
real var3 = 12.56;
time t1 = 0;
realtime t2 = 0;

initial begin
    #100;
    $display("==Datatype demonstration ==");
    $display("Value of var1:%0d", var1);
    $display("Value of var2:%0d", var2);
    $display("Value of var3:%0f", var3);
    #10.23
    t1 = $time;
    $display("Value of t1:%0t", t1);
    t2 = $realtime;
    $display("Value of t2:%0t", t2);
end 



// Verilog operators
reg [3:0] din1 = 4'd5, din2 = 4'd6;
reg [4:0] add = 0;
integer sub = 0;
reg [7:0] mul = 0;
reg [3:0] sdin1 = 0, sdin2 = 0;
reg [7:0] concat = 0;
reg [11:0] repetition = 0;

initial begin
    #200;
    $display("==Verilog operators==");
    add = din1 + din2;
    sub = din1 - din2;
    mul = din1 * din2;
    $display("Value of add: %0d sub: %0d and mul: %0d", add, sub, mul);
    $display("and: %b or: %b xor: %b xnor: %b", (din1 & din2), (din1 | din2), (din1 ^ din2), (din1 ~^ din2)); 

    sdin1 = din1 >> 2;
    sdin2 = din1 << 1;
    $display("din1: %b and din2: %b", din1, din2);
    $display("sdin1: %b and sdin2: %b", sdin1, sdin2);
    
    concat = {din1, din2};
    repetition = {3{din2}};
    $display("concat: %b", concat);
    $display("repetition: %b", repetition);
    
    
end



//always@(*)
//begin
//    if((din1 && din2) == 0) begin   
//    end
//end


endmodule
