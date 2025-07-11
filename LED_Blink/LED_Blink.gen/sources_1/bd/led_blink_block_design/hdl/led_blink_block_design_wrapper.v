//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Fri Jul 11 13:34:15 2025
//Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target led_blink_block_design_wrapper.bd
//Design      : led_blink_block_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module led_blink_block_design_wrapper
   (LED);
  output LED;

  wire LED;

  led_blink_block_design led_blink_block_design_i
       (.LED(LED));
endmodule
