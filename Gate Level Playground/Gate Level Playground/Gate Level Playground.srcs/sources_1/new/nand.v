module nand2 (
    input a,b,
    output y
);

supply1 vdd;
supply0 gnd;
wire t1;

pmos p1 (y, vdd, a);
pmos p2 (y, vdd, b);

nmos n1 (y, t1, a);
nmos n2 (t1, gnd, b);




endmodule