// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Jul 11 13:34:39 2025
// Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink/LED_Blink.gen/sources_1/bd/led_blink_block_design/ip/led_blink_block_design_led_blink_0_0/led_blink_block_design_led_blink_0_0_stub.v
// Design      : led_blink_block_design_led_blink_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sbva484-1-i
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "led_blink,Vivado 2022.1" *)
module led_blink_block_design_led_blink_0_0(clk, led)
/* synthesis syn_black_box black_box_pad_pin="clk,led" */;
  input clk;
  output led;
endmodule
