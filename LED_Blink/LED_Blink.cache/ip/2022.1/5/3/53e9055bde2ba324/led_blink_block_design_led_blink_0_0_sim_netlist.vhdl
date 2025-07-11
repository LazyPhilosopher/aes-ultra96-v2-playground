-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Fri Jul 11 13:25:34 2025
-- Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ led_blink_block_design_led_blink_0_0_sim_netlist.vhdl
-- Design      : led_blink_block_design_led_blink_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_blink is
  port (
    led : out STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_blink;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_blink is
  signal \counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[2]_i_1_n_13\ : STD_LOGIC;
  signal \counter_reg[2]_i_1_n_14\ : STD_LOGIC;
  signal \counter_reg[2]_i_1_n_15\ : STD_LOGIC;
  signal \counter_reg[2]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[2]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \^led\ : STD_LOGIC;
  signal \NLW_counter_reg[2]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_counter_reg[2]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
begin
  led <= \^led\;
\counter[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      O => \counter[2]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[2]_i_1_n_15\,
      Q => \counter_reg_n_0_[0]\,
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[2]_i_1_n_14\,
      Q => \counter_reg_n_0_[1]\,
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter_reg[2]_i_1_n_13\,
      Q => \^led\,
      R => '0'
    );
\counter_reg[2]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_counter_reg[2]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \counter_reg[2]_i_1_n_6\,
      CO(0) => \counter_reg[2]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7 downto 3) => \NLW_counter_reg[2]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2) => \counter_reg[2]_i_1_n_13\,
      O(1) => \counter_reg[2]_i_1_n_14\,
      O(0) => \counter_reg[2]_i_1_n_15\,
      S(7 downto 3) => B"00000",
      S(2) => \^led\,
      S(1) => \counter_reg_n_0_[1]\,
      S(0) => \counter[2]_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "led_blink_block_design_led_blink_0_0,led_blink,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "led_blink,Vivado 2022.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN led_blink_block_design_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_led_blink
     port map (
      clk => clk,
      led => led
    );
end STRUCTURE;
