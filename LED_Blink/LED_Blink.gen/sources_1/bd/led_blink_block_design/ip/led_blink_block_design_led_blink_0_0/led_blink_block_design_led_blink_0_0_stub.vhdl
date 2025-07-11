-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Fri Jul 11 13:34:39 2025
-- Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/LED_Blink/LED_Blink.gen/sources_1/bd/led_blink_block_design/ip/led_blink_block_design_led_blink_0_0/led_blink_block_design_led_blink_0_0_stub.vhdl
-- Design      : led_blink_block_design_led_blink_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity led_blink_block_design_led_blink_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    led : out STD_LOGIC
  );

end led_blink_block_design_led_blink_0_0;

architecture stub of led_blink_block_design_led_blink_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,led";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "led_blink,Vivado 2022.1";
begin
end;
