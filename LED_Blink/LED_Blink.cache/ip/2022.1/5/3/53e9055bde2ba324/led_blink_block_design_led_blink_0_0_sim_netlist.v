// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Jul 11 13:25:34 2025
// Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ led_blink_block_design_led_blink_0_0_sim_netlist.v
// Design      : led_blink_block_design_led_blink_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_blink
   (led,
    clk);
  output led;
  input clk;

  wire clk;
  wire \counter[2]_i_2_n_0 ;
  wire \counter_reg[2]_i_1_n_13 ;
  wire \counter_reg[2]_i_1_n_14 ;
  wire \counter_reg[2]_i_1_n_15 ;
  wire \counter_reg[2]_i_1_n_6 ;
  wire \counter_reg[2]_i_1_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire led;
  wire [7:2]\NLW_counter_reg[2]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_counter_reg[2]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[2]_i_2 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[2]_i_2_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[2]_i_1_n_15 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[2]_i_1_n_14 ),
        .Q(\counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[2]_i_1_n_13 ),
        .Q(led),
        .R(1'b0));
  CARRY8 \counter_reg[2]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg[2]_i_1_CO_UNCONNECTED [7:2],\counter_reg[2]_i_1_n_6 ,\counter_reg[2]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\NLW_counter_reg[2]_i_1_O_UNCONNECTED [7:3],\counter_reg[2]_i_1_n_13 ,\counter_reg[2]_i_1_n_14 ,\counter_reg[2]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,led,\counter_reg_n_0_[1] ,\counter[2]_i_2_n_0 }));
endmodule

(* CHECK_LICENSE_TYPE = "led_blink_block_design_led_blink_0_0,led_blink,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "led_blink,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_blink_block_design_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  output led;

  wire clk;
  wire led;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_blink inst
       (.clk(clk),
        .led(led));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
