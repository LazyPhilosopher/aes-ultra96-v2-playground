module and2 (
    input a, b,
    output y
);

wire nand_out;

nand2 u_nand (
    .a(a),
    .b(b),
    .y(nand_out)
);

inverter u_inv (
    .vin(nand_out),
    .vout(y)
);

endmodule