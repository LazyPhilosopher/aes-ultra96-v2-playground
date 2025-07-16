module inverter(
    input vin,
    output vout
);

supply1 vdd;
supply0 gnd;

nmos n1 (vout, gnd, vin);
pmos p1 (vout, vdd, vin);

endmodule
