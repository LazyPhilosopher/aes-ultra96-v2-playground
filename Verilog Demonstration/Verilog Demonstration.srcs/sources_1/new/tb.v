
module tb;

reg [3:0] a = 4'h0;

initial begin

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

initial begin
$monitor("Monitoring a: %0d @ %0t", a, $time);
end

endmodule
