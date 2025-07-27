-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sun Jul 27 12:44:45 2025
-- Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_apb_bridge_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_apb_bridge_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apb_mif is
  port (
    PENABLE_i_reg_0 : out STD_LOGIC;
    m_apb_pwrite : out STD_LOGIC;
    PENABLE_i_reg_1 : out STD_LOGIC;
    \FSM_onehot_apb_wr_rd_cs_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_apb_wr_rd_cs_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \s_axi_araddr[16]\ : out STD_LOGIC;
    \FSM_onehot_apb_wr_rd_cs_reg[1]_1\ : out STD_LOGIC;
    \FSM_onehot_apb_wr_rd_cs_reg[1]_2\ : out STD_LOGIC;
    m_apb_pready_2_sp_1 : out STD_LOGIC;
    s_axi_wvalid_0 : out STD_LOGIC;
    \FSM_onehot_apb_wr_rd_cs_reg[2]_1\ : out STD_LOGIC;
    \s_axi_awaddr[17]\ : out STD_LOGIC;
    m_apb_paddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_apb_pwdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    apb_penable_sm : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    apb_wr_request : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    PENABLE_i_reg_2 : in STD_LOGIC;
    PENABLE_i_reg_3 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]\ : in STD_LOGIC;
    \FSM_onehot_apb_wr_rd_cs_reg[2]_2\ : in STD_LOGIC;
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_2\ : in STD_LOGIC;
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_2_0\ : in STD_LOGIC;
    m_apb_pready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[2]\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[2]_0\ : in STD_LOGIC;
    \FSM_onehot_apb_wr_rd_cs_reg[2]_3\ : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \FSM_onehot_apb_wr_rd_cs_reg[2]_4\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 39 downto 0 );
    \PWDATA_i_reg[31]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \PWDATA_i_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apb_mif;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apb_mif is
  signal \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal PENABLE_i_i_6_n_0 : STD_LOGIC;
  signal \^penable_i_reg_0\ : STD_LOGIC;
  signal m_apb_pready_2_sn_1 : STD_LOGIC;
  signal \^s_axi_wvalid_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_apb_wr_rd_cs[2]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_apb_wr_rd_cs_reg[0]\ : label is "apb_idle:001,apb_setup:010,apb_access:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_apb_wr_rd_cs_reg[1]\ : label is "apb_idle:001,apb_setup:010,apb_access:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_apb_wr_rd_cs_reg[2]\ : label is "apb_idle:001,apb_setup:010,apb_access:100,";
  attribute SOFT_HLUTNM of \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_6\ : label is "soft_lutpair0";
begin
  \FSM_onehot_apb_wr_rd_cs_reg[2]_0\(2 downto 0) <= \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(2 downto 0);
  PENABLE_i_reg_0 <= \^penable_i_reg_0\;
  m_apb_pready_2_sp_1 <= m_apb_pready_2_sn_1;
  s_axi_wvalid_0 <= \^s_axi_wvalid_0\;
\FSM_onehot_apb_wr_rd_cs[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(1),
      I1 => \FSM_onehot_apb_wr_rd_cs_reg[2]_2\,
      I2 => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(0),
      O => \FSM_onehot_apb_wr_rd_cs_reg[1]_1\
    );
\FSM_onehot_apb_wr_rd_cs_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_apb_wr_rd_cs_reg[2]_4\(0),
      D => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(2),
      Q => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(0),
      S => SR(0)
    );
\FSM_onehot_apb_wr_rd_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_apb_wr_rd_cs_reg[2]_4\(0),
      D => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(0),
      Q => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(1),
      R => SR(0)
    );
\FSM_onehot_apb_wr_rd_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_apb_wr_rd_cs_reg[2]_4\(0),
      D => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(1),
      Q => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(2),
      R => SR(0)
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(0),
      I2 => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(1),
      I3 => \FSM_onehot_apb_wr_rd_cs_reg[2]_3\,
      O => \^s_axi_wvalid_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEEF"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]\,
      I2 => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(0),
      I3 => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(1),
      I4 => PENABLE_i_reg_3,
      O => \s_axi_araddr[16]\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000AB0000"
    )
        port map (
      I0 => \^s_axi_wvalid_0\,
      I1 => m_apb_pready(2),
      I2 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[2]\,
      I3 => s_axi_awaddr(0),
      I4 => s_axi_awaddr(1),
      I5 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[2]_0\,
      O => m_apb_pready_2_sn_1
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(1),
      I1 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_2\,
      I2 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_2_0\,
      I3 => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(0),
      O => \FSM_onehot_apb_wr_rd_cs_reg[1]_2\
    );
\PADDR_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(0),
      Q => m_apb_paddr(0),
      R => SR(0)
    );
\PADDR_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(10),
      Q => m_apb_paddr(10),
      R => SR(0)
    );
\PADDR_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(11),
      Q => m_apb_paddr(11),
      R => SR(0)
    );
\PADDR_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(12),
      Q => m_apb_paddr(12),
      R => SR(0)
    );
\PADDR_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(13),
      Q => m_apb_paddr(13),
      R => SR(0)
    );
\PADDR_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(14),
      Q => m_apb_paddr(14),
      R => SR(0)
    );
\PADDR_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(15),
      Q => m_apb_paddr(15),
      R => SR(0)
    );
\PADDR_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(16),
      Q => m_apb_paddr(16),
      R => SR(0)
    );
\PADDR_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(17),
      Q => m_apb_paddr(17),
      R => SR(0)
    );
\PADDR_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(18),
      Q => m_apb_paddr(18),
      R => SR(0)
    );
\PADDR_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(19),
      Q => m_apb_paddr(19),
      R => SR(0)
    );
\PADDR_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(1),
      Q => m_apb_paddr(1),
      R => SR(0)
    );
\PADDR_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(20),
      Q => m_apb_paddr(20),
      R => SR(0)
    );
\PADDR_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(21),
      Q => m_apb_paddr(21),
      R => SR(0)
    );
\PADDR_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(22),
      Q => m_apb_paddr(22),
      R => SR(0)
    );
\PADDR_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(23),
      Q => m_apb_paddr(23),
      R => SR(0)
    );
\PADDR_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(24),
      Q => m_apb_paddr(24),
      R => SR(0)
    );
\PADDR_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(25),
      Q => m_apb_paddr(25),
      R => SR(0)
    );
\PADDR_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(26),
      Q => m_apb_paddr(26),
      R => SR(0)
    );
\PADDR_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(27),
      Q => m_apb_paddr(27),
      R => SR(0)
    );
\PADDR_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(28),
      Q => m_apb_paddr(28),
      R => SR(0)
    );
\PADDR_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(29),
      Q => m_apb_paddr(29),
      R => SR(0)
    );
\PADDR_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(2),
      Q => m_apb_paddr(2),
      R => SR(0)
    );
\PADDR_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(30),
      Q => m_apb_paddr(30),
      R => SR(0)
    );
\PADDR_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(31),
      Q => m_apb_paddr(31),
      R => SR(0)
    );
\PADDR_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(32),
      Q => m_apb_paddr(32),
      R => SR(0)
    );
\PADDR_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(33),
      Q => m_apb_paddr(33),
      R => SR(0)
    );
\PADDR_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(34),
      Q => m_apb_paddr(34),
      R => SR(0)
    );
\PADDR_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(35),
      Q => m_apb_paddr(35),
      R => SR(0)
    );
\PADDR_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(36),
      Q => m_apb_paddr(36),
      R => SR(0)
    );
\PADDR_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(37),
      Q => m_apb_paddr(37),
      R => SR(0)
    );
\PADDR_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(38),
      Q => m_apb_paddr(38),
      R => SR(0)
    );
\PADDR_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(39),
      Q => m_apb_paddr(39),
      R => SR(0)
    );
\PADDR_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(3),
      Q => m_apb_paddr(3),
      R => SR(0)
    );
\PADDR_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(4),
      Q => m_apb_paddr(4),
      R => SR(0)
    );
\PADDR_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(5),
      Q => m_apb_paddr(5),
      R => SR(0)
    );
\PADDR_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(6),
      Q => m_apb_paddr(6),
      R => SR(0)
    );
\PADDR_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(7),
      Q => m_apb_paddr(7),
      R => SR(0)
    );
\PADDR_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(8),
      Q => m_apb_paddr(8),
      R => SR(0)
    );
\PADDR_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(9),
      Q => m_apb_paddr(9),
      R => SR(0)
    );
PENABLE_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11540054"
    )
        port map (
      I0 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[2]_0\,
      I1 => s_axi_awaddr(1),
      I2 => m_apb_pready(0),
      I3 => s_axi_awaddr(0),
      I4 => m_apb_pready(1),
      O => \s_axi_awaddr[17]\
    );
PENABLE_i_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BABB"
    )
        port map (
      I0 => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(1),
      I1 => PENABLE_i_reg_2,
      I2 => PENABLE_i_reg_3,
      I3 => PENABLE_i_i_6_n_0,
      O => \FSM_onehot_apb_wr_rd_cs_reg[1]_0\
    );
PENABLE_i_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B380B08"
    )
        port map (
      I0 => m_apb_pready(1),
      I1 => s_axi_araddr(0),
      I2 => s_axi_araddr(1),
      I3 => m_apb_pready(0),
      I4 => m_apb_pready(2),
      O => PENABLE_i_i_6_n_0
    );
PENABLE_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => apb_penable_sm,
      Q => \^penable_i_reg_0\,
      R => SR(0)
    );
\PWDATA_i[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDFDD"
    )
        port map (
      I0 => \^fsm_onehot_apb_wr_rd_cs_reg[2]_0\(2),
      I1 => \FSM_onehot_apb_wr_rd_cs_reg[2]_3\,
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awaddr(1),
      I4 => m_apb_pready(2),
      O => \FSM_onehot_apb_wr_rd_cs_reg[2]_1\
    );
\PWDATA_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(0),
      Q => m_apb_pwdata(0),
      R => SR(0)
    );
\PWDATA_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(10),
      Q => m_apb_pwdata(10),
      R => SR(0)
    );
\PWDATA_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(11),
      Q => m_apb_pwdata(11),
      R => SR(0)
    );
\PWDATA_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(12),
      Q => m_apb_pwdata(12),
      R => SR(0)
    );
\PWDATA_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(13),
      Q => m_apb_pwdata(13),
      R => SR(0)
    );
\PWDATA_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(14),
      Q => m_apb_pwdata(14),
      R => SR(0)
    );
\PWDATA_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(15),
      Q => m_apb_pwdata(15),
      R => SR(0)
    );
\PWDATA_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(16),
      Q => m_apb_pwdata(16),
      R => SR(0)
    );
\PWDATA_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(17),
      Q => m_apb_pwdata(17),
      R => SR(0)
    );
\PWDATA_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(18),
      Q => m_apb_pwdata(18),
      R => SR(0)
    );
\PWDATA_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(19),
      Q => m_apb_pwdata(19),
      R => SR(0)
    );
\PWDATA_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(1),
      Q => m_apb_pwdata(1),
      R => SR(0)
    );
\PWDATA_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(20),
      Q => m_apb_pwdata(20),
      R => SR(0)
    );
\PWDATA_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(21),
      Q => m_apb_pwdata(21),
      R => SR(0)
    );
\PWDATA_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(22),
      Q => m_apb_pwdata(22),
      R => SR(0)
    );
\PWDATA_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(23),
      Q => m_apb_pwdata(23),
      R => SR(0)
    );
\PWDATA_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(24),
      Q => m_apb_pwdata(24),
      R => SR(0)
    );
\PWDATA_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(25),
      Q => m_apb_pwdata(25),
      R => SR(0)
    );
\PWDATA_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(26),
      Q => m_apb_pwdata(26),
      R => SR(0)
    );
\PWDATA_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(27),
      Q => m_apb_pwdata(27),
      R => SR(0)
    );
\PWDATA_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(28),
      Q => m_apb_pwdata(28),
      R => SR(0)
    );
\PWDATA_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(29),
      Q => m_apb_pwdata(29),
      R => SR(0)
    );
\PWDATA_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(2),
      Q => m_apb_pwdata(2),
      R => SR(0)
    );
\PWDATA_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(30),
      Q => m_apb_pwdata(30),
      R => SR(0)
    );
\PWDATA_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(31),
      Q => m_apb_pwdata(31),
      R => SR(0)
    );
\PWDATA_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(3),
      Q => m_apb_pwdata(3),
      R => SR(0)
    );
\PWDATA_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(4),
      Q => m_apb_pwdata(4),
      R => SR(0)
    );
\PWDATA_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(5),
      Q => m_apb_pwdata(5),
      R => SR(0)
    );
\PWDATA_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(6),
      Q => m_apb_pwdata(6),
      R => SR(0)
    );
\PWDATA_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(7),
      Q => m_apb_pwdata(7),
      R => SR(0)
    );
\PWDATA_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(8),
      Q => m_apb_pwdata(8),
      R => SR(0)
    );
\PWDATA_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \PWDATA_i_reg[31]_0\(0),
      D => \PWDATA_i_reg[31]_1\(9),
      Q => m_apb_pwdata(9),
      R => SR(0)
    );
PWRITE_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => E(0),
      D => apb_wr_request,
      Q => m_apb_pwrite,
      R => SR(0)
    );
\S_AXI_RDATA[31]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^penable_i_reg_0\,
      I1 => Q(0),
      O => PENABLE_i_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axilite_sif is
  port (
    s_axi_awready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC;
    apb_wr_request : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    apb_penable_sm : out STD_LOGIC;
    \FSM_onehot_apb_wr_rd_cs_reg[2]\ : out STD_LOGIC;
    s_axi_rready_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wvalid_0 : out STD_LOGIC;
    \FSM_onehot_apb_wr_rd_cs_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_apb_wr_rd_cs_reg[2]_1\ : out STD_LOGIC;
    \FSM_sequential_axi_wr_rd_cs_reg[0]_0\ : out STD_LOGIC;
    \s_axi_awaddr[39]\ : out STD_LOGIC_VECTOR ( 39 downto 0 );
    \s_axi_wdata[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid_1 : out STD_LOGIC;
    s_axi_rready_1 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    PENABLE_i_reg : in STD_LOGIC;
    m_apb_pready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    PENABLE_i_reg_0 : in STD_LOGIC;
    PENABLE_i_reg_1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]\ : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]_0\ : in STD_LOGIC;
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[2]\ : in STD_LOGIC;
    \FSM_onehot_apb_wr_rd_cs_reg[2]_2\ : in STD_LOGIC;
    \FSM_onehot_apb_wr_rd_cs_reg[2]_3\ : in STD_LOGIC;
    m_apb_prdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \S_AXI_RDATA_reg[31]_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \S_AXI_RDATA[31]_i_3_0\ : in STD_LOGIC;
    m_apb_pslverr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[1]\ : in STD_LOGIC;
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_0\ : in STD_LOGIC;
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_1\ : in STD_LOGIC;
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_2\ : in STD_LOGIC;
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_3\ : in STD_LOGIC;
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_4\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]_1\ : in STD_LOGIC;
    \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]_2\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axilite_sif;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axilite_sif is
  signal BRESP_1_i_i_10_n_0 : STD_LOGIC;
  signal BRESP_1_i_i_11_n_0 : STD_LOGIC;
  signal BRESP_1_i_i_1_n_0 : STD_LOGIC;
  signal BRESP_1_i_i_2_n_0 : STD_LOGIC;
  signal BRESP_1_i_i_3_n_0 : STD_LOGIC;
  signal BRESP_1_i_i_4_n_0 : STD_LOGIC;
  signal BRESP_1_i_i_5_n_0 : STD_LOGIC;
  signal BRESP_1_i_i_6_n_0 : STD_LOGIC;
  signal BRESP_1_i_i_7_n_0 : STD_LOGIC;
  signal BRESP_1_i_i_8_n_0 : STD_LOGIC;
  signal BRESP_1_i_i_9_n_0 : STD_LOGIC;
  signal BVALID_sm : STD_LOGIC;
  signal \^fsm_onehot_apb_wr_rd_cs_reg[2]\ : STD_LOGIC;
  signal \^fsm_onehot_apb_wr_rd_cs_reg[2]_1\ : STD_LOGIC;
  signal \FSM_sequential_axi_wr_rd_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_wr_rd_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_wr_rd_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_axi_wr_rd_cs[2]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_6_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_7_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_12_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_7_n_0\ : STD_LOGIC;
  signal \PADDR_i[39]_i_3_n_0\ : STD_LOGIC;
  signal PENABLE_i_i_4_n_0 : STD_LOGIC;
  signal \PWDATA_i[31]_i_4_n_0\ : STD_LOGIC;
  signal \PWDATA_i[31]_i_5_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RRESP_1_i_i_1_n_0 : STD_LOGIC;
  signal RVALID_sm : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \S_AXI_RDATA[31]_i_1_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_3_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_4_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_5_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_6_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_7_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[31]_i_8_n_0\ : STD_LOGIC;
  signal WREADY_i_i_2_n_0 : STD_LOGIC;
  signal WREADY_i_i_3_n_0 : STD_LOGIC;
  signal address_i : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal \address_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[10]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[12]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[13]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[14]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[15]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[16]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[17]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[18]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[19]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[20]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[21]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[22]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[23]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[24]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[25]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[26]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[27]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[28]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[29]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[30]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[31]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[32]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[33]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[34]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[35]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[36]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[37]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[38]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[39]_i_2_n_0\ : STD_LOGIC;
  signal \address_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \address_i[9]_i_1_n_0\ : STD_LOGIC;
  signal apb_rd_request : STD_LOGIC;
  signal \^apb_wr_request\ : STD_LOGIC;
  signal axi_wr_rd_cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_wr_rd_ns : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_rready_0\ : STD_LOGIC;
  signal \^s_axi_rready_1\ : STD_LOGIC;
  signal \^s_axi_wvalid_0\ : STD_LOGIC;
  signal waddr_ready_sm : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ARREADY_i_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of BRESP_1_i_i_5 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_axi_wr_rd_cs[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_axi_wr_rd_cs[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_axi_wr_rd_cs[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_axi_wr_rd_cs[2]_i_4\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_wr_rd_cs_reg[0]\ : label is "write:110,wr_resp:111,read:010,read_wait:001,rd_resp:011,write_wait:100,axi_idle:000,write_w_wait:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_wr_rd_cs_reg[1]\ : label is "write:110,wr_resp:111,read:010,read_wait:001,rd_resp:011,write_wait:100,axi_idle:000,write_w_wait:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_axi_wr_rd_cs_reg[2]\ : label is "write:110,wr_resp:111,read:010,read_wait:001,rd_resp:011,write_wait:100,axi_idle:000,write_w_wait:101";
  attribute SOFT_HLUTNM of \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of PENABLE_i_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of PENABLE_i_i_4 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \PWDATA_i[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \PWDATA_i[10]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \PWDATA_i[11]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \PWDATA_i[12]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \PWDATA_i[13]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \PWDATA_i[14]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \PWDATA_i[15]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \PWDATA_i[16]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \PWDATA_i[17]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \PWDATA_i[18]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \PWDATA_i[19]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \PWDATA_i[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \PWDATA_i[20]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \PWDATA_i[21]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \PWDATA_i[22]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \PWDATA_i[23]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \PWDATA_i[24]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \PWDATA_i[25]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \PWDATA_i[26]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \PWDATA_i[27]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \PWDATA_i[28]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \PWDATA_i[29]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \PWDATA_i[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \PWDATA_i[30]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \PWDATA_i[31]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \PWDATA_i[31]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \PWDATA_i[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \PWDATA_i[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \PWDATA_i[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \PWDATA_i[6]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \PWDATA_i[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \PWDATA_i[8]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \PWDATA_i[9]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of RRESP_1_i_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of RVALID_i_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[31]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \S_AXI_RDATA[31]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of WREADY_i_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of WREADY_i_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \address_i[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \address_i[10]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \address_i[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \address_i[12]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \address_i[13]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \address_i[14]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \address_i[15]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \address_i[16]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \address_i[17]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \address_i[18]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \address_i[19]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \address_i[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \address_i[20]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \address_i[21]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \address_i[23]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \address_i[24]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \address_i[25]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \address_i[26]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \address_i[27]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \address_i[28]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \address_i[29]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \address_i[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \address_i[30]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \address_i[31]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \address_i[32]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \address_i[33]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \address_i[34]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \address_i[35]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \address_i[36]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \address_i[37]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \address_i[38]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \address_i[39]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \address_i[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \address_i[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \address_i[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \address_i[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \address_i[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \address_i[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \address_i[9]_i_1\ : label is "soft_lutpair17";
begin
  \FSM_onehot_apb_wr_rd_cs_reg[2]\ <= \^fsm_onehot_apb_wr_rd_cs_reg[2]\;
  \FSM_onehot_apb_wr_rd_cs_reg[2]_1\ <= \^fsm_onehot_apb_wr_rd_cs_reg[2]_1\;
  Q(0) <= \^q\(0);
  SR(0) <= \^sr\(0);
  apb_wr_request <= \^apb_wr_request\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_rready_0 <= \^s_axi_rready_0\;
  s_axi_rready_1 <= \^s_axi_rready_1\;
  s_axi_wvalid_0 <= \^s_axi_wvalid_0\;
ARREADY_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => axi_wr_rd_cs(2),
      I1 => \^q\(0),
      I2 => s_axi_arvalid,
      I3 => axi_wr_rd_cs(0),
      O => apb_rd_request
    );
ARREADY_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => apb_rd_request,
      Q => s_axi_arready,
      R => \^sr\(0)
    );
AWREADY_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
AWREADY_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000890000000100"
    )
        port map (
      I0 => \^q\(0),
      I1 => axi_wr_rd_cs(0),
      I2 => s_axi_arvalid,
      I3 => s_axi_awvalid,
      I4 => axi_wr_rd_cs(2),
      I5 => s_axi_rready,
      O => waddr_ready_sm
    );
AWREADY_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => waddr_ready_sm,
      Q => s_axi_awready,
      R => \^sr\(0)
    );
BRESP_1_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"53735040"
    )
        port map (
      I0 => BRESP_1_i_i_2_n_0,
      I1 => s_axi_bready,
      I2 => axi_wr_rd_cs(2),
      I3 => BRESP_1_i_i_3_n_0,
      I4 => \^s_axi_bresp\(0),
      O => BRESP_1_i_i_1_n_0
    );
BRESP_1_i_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => address_i(20),
      I1 => address_i(23),
      I2 => address_i(26),
      I3 => address_i(35),
      I4 => address_i(25),
      I5 => address_i(33),
      O => BRESP_1_i_i_10_n_0
    );
BRESP_1_i_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B3808080"
    )
        port map (
      I0 => m_apb_pready(2),
      I1 => address_i(17),
      I2 => m_apb_pslverr(2),
      I3 => m_apb_pslverr(0),
      I4 => m_apb_pready(0),
      I5 => address_i(16),
      O => BRESP_1_i_i_11_n_0
    );
BRESP_1_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBFFFFF"
    )
        port map (
      I0 => BRESP_1_i_i_4_n_0,
      I1 => \S_AXI_RDATA_reg[31]_0\,
      I2 => \^q\(0),
      I3 => axi_wr_rd_cs(0),
      I4 => PENABLE_i_reg_1(2),
      I5 => BRESP_1_i_i_5_n_0,
      O => BRESP_1_i_i_2_n_0
    );
BRESP_1_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \PWDATA_i[31]_i_5_n_0\,
      I1 => axi_wr_rd_cs(0),
      I2 => BRESP_1_i_i_4_n_0,
      I3 => \S_AXI_RDATA_reg[31]_0\,
      I4 => \^q\(0),
      O => BRESP_1_i_i_3_n_0
    );
BRESP_1_i_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => BRESP_1_i_i_6_n_0,
      I1 => BRESP_1_i_i_7_n_0,
      I2 => BRESP_1_i_i_8_n_0,
      I3 => BRESP_1_i_i_9_n_0,
      I4 => BRESP_1_i_i_10_n_0,
      O => BRESP_1_i_i_4_n_0
    );
BRESP_1_i_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F7FF"
    )
        port map (
      I0 => m_apb_pslverr(1),
      I1 => address_i(16),
      I2 => address_i(17),
      I3 => m_apb_pready(1),
      I4 => BRESP_1_i_i_11_n_0,
      O => BRESP_1_i_i_5_n_0
    );
BRESP_1_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => address_i(39),
      I1 => address_i(19),
      I2 => address_i(38),
      I3 => address_i(18),
      O => BRESP_1_i_i_6_n_0
    );
BRESP_1_i_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => address_i(37),
      I1 => address_i(24),
      I2 => address_i(28),
      I3 => address_i(32),
      O => BRESP_1_i_i_7_n_0
    );
BRESP_1_i_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => address_i(31),
      I1 => address_i(27),
      I2 => address_i(29),
      I3 => address_i(30),
      O => BRESP_1_i_i_8_n_0
    );
BRESP_1_i_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => address_i(21),
      I1 => address_i(22),
      I2 => address_i(34),
      I3 => address_i(36),
      O => BRESP_1_i_i_9_n_0
    );
BRESP_1_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => BRESP_1_i_i_1_n_0,
      Q => \^s_axi_bresp\(0),
      R => \^sr\(0)
    );
BVALID_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00EA00"
    )
        port map (
      I0 => BRESP_1_i_i_3_n_0,
      I1 => \^q\(0),
      I2 => axi_wr_rd_cs(0),
      I3 => axi_wr_rd_cs(2),
      I4 => s_axi_bready,
      O => BVALID_sm
    );
BVALID_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => BVALID_sm,
      Q => s_axi_bvalid,
      R => \^sr\(0)
    );
\FSM_onehot_apb_wr_rd_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4F4F4FF"
    )
        port map (
      I0 => \FSM_onehot_apb_wr_rd_cs_reg[2]_2\,
      I1 => PENABLE_i_reg,
      I2 => \PWDATA_i[31]_i_4_n_0\,
      I3 => \PWDATA_i[31]_i_5_n_0\,
      I4 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_4_n_0\,
      I5 => \FSM_onehot_apb_wr_rd_cs_reg[2]_3\,
      O => \FSM_onehot_apb_wr_rd_cs_reg[2]_0\(0)
    );
\FSM_onehot_apb_wr_rd_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F1FFF5FFF1FFF5"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => WREADY_i_i_2_n_0,
      I3 => axi_wr_rd_cs(0),
      I4 => s_axi_wvalid,
      I5 => WREADY_i_i_3_n_0,
      O => s_axi_arvalid_1
    );
\FSM_sequential_axi_wr_rd_cs[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => BRESP_1_i_i_3_n_0,
      I1 => \FSM_sequential_axi_wr_rd_cs[0]_i_2_n_0\,
      O => axi_wr_rd_ns(0)
    );
\FSM_sequential_axi_wr_rd_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C230C300C300C3"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => axi_wr_rd_cs(2),
      I2 => \^q\(0),
      I3 => axi_wr_rd_cs(0),
      I4 => s_axi_wvalid,
      I5 => s_axi_awvalid,
      O => \FSM_sequential_axi_wr_rd_cs[0]_i_2_n_0\
    );
\FSM_sequential_axi_wr_rd_cs[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFE"
    )
        port map (
      I0 => BRESP_1_i_i_3_n_0,
      I1 => axi_wr_rd_cs(2),
      I2 => axi_wr_rd_cs(0),
      I3 => \^q\(0),
      O => axi_wr_rd_ns(1)
    );
\FSM_sequential_axi_wr_rd_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEFFEFFEEE"
    )
        port map (
      I0 => BRESP_1_i_i_3_n_0,
      I1 => \FSM_sequential_axi_wr_rd_cs[2]_i_3_n_0\,
      I2 => axi_wr_rd_cs(0),
      I3 => s_axi_wvalid,
      I4 => axi_wr_rd_cs(2),
      I5 => \^q\(0),
      O => \FSM_sequential_axi_wr_rd_cs[2]_i_1_n_0\
    );
\FSM_sequential_axi_wr_rd_cs[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77807791"
    )
        port map (
      I0 => axi_wr_rd_cs(0),
      I1 => \^q\(0),
      I2 => s_axi_awvalid,
      I3 => axi_wr_rd_cs(2),
      I4 => s_axi_arvalid,
      O => axi_wr_rd_ns(2)
    );
\FSM_sequential_axi_wr_rd_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00C000CA0FCA0FC"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \FSM_sequential_axi_wr_rd_cs[2]_i_4_n_0\,
      I2 => axi_wr_rd_cs(0),
      I3 => \^q\(0),
      I4 => s_axi_bready,
      I5 => axi_wr_rd_cs(2),
      O => \FSM_sequential_axi_wr_rd_cs[2]_i_3_n_0\
    );
\FSM_sequential_axi_wr_rd_cs[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_arvalid,
      O => \FSM_sequential_axi_wr_rd_cs[2]_i_4_n_0\
    );
\FSM_sequential_axi_wr_rd_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_axi_wr_rd_cs[2]_i_1_n_0\,
      D => axi_wr_rd_ns(0),
      Q => axi_wr_rd_cs(0),
      R => \^sr\(0)
    );
\FSM_sequential_axi_wr_rd_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_axi_wr_rd_cs[2]_i_1_n_0\,
      D => axi_wr_rd_ns(1),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\FSM_sequential_axi_wr_rd_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_axi_wr_rd_cs[2]_i_1_n_0\,
      D => axi_wr_rd_ns(2),
      Q => axi_wr_rd_cs(2),
      R => \^sr\(0)
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAABBBF"
    )
        port map (
      I0 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[0]_i_2_n_0\,
      I1 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]\,
      I2 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_n_0\,
      I3 => m_apb_pready(0),
      I4 => s_axi_araddr(17),
      I5 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[0]_i_3_n_0\,
      O => D(0)
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001010105"
    )
        port map (
      I0 => address_i(16),
      I1 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]_0\,
      I2 => BRESP_1_i_i_4_n_0,
      I3 => m_apb_pready(0),
      I4 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_7_n_0\,
      I5 => address_i(17),
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[0]_i_2_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000F1"
    )
        port map (
      I0 => m_apb_pready(0),
      I1 => \^fsm_onehot_apb_wr_rd_cs_reg[2]\,
      I2 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]_1\,
      I3 => s_axi_awaddr(17),
      I4 => s_axi_awaddr(16),
      I5 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]_2\,
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[0]_i_3_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAABBBBB"
    )
        port map (
      I0 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_2_n_0\,
      I1 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_3_n_0\,
      I2 => m_apb_pready(1),
      I3 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_4_n_0\,
      I4 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_5_n_0\,
      I5 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_6_n_0\,
      O => D(1)
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011150000"
    )
        port map (
      I0 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[1]\,
      I1 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_7_n_0\,
      I2 => m_apb_pready(1),
      I3 => \^fsm_onehot_apb_wr_rd_cs_reg[2]_1\,
      I4 => s_axi_araddr(16),
      I5 => s_axi_araddr(17),
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_2_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => address_i(17),
      I1 => address_i(16),
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_3_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => BRESP_1_i_i_4_n_0,
      I1 => PENABLE_i_reg_1(2),
      I2 => \^s_axi_rready_0\,
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_4_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBAAFBFB"
    )
        port map (
      I0 => BRESP_1_i_i_4_n_0,
      I1 => PENABLE_i_reg_1(0),
      I2 => \^s_axi_wvalid_0\,
      I3 => \^s_axi_rready_0\,
      I4 => PENABLE_i_reg_1(1),
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_5_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F10000"
    )
        port map (
      I0 => m_apb_pready(1),
      I1 => \^fsm_onehot_apb_wr_rd_cs_reg[2]\,
      I2 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]_1\,
      I3 => s_axi_awaddr(17),
      I4 => s_axi_awaddr(16),
      I5 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]_2\,
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_6_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFEFFFEFFFFF"
    )
        port map (
      I0 => axi_wr_rd_cs(2),
      I1 => \^q\(0),
      I2 => s_axi_arvalid,
      I3 => axi_wr_rd_cs(0),
      I4 => PENABLE_i_reg_1(0),
      I5 => PENABLE_i_reg_1(1),
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_7_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => PENABLE_i_reg_1(2),
      I1 => axi_wr_rd_cs(0),
      I2 => s_axi_arvalid,
      I3 => \^q\(0),
      I4 => axi_wr_rd_cs(2),
      O => \^fsm_onehot_apb_wr_rd_cs_reg[2]_1\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFFBAFFBAFFFA"
    )
        port map (
      I0 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_2_n_0\,
      I1 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]\,
      I2 => s_axi_araddr(17),
      I3 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[2]\,
      I4 => m_apb_pready(2),
      I5 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_n_0\,
      O => D(2)
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^fsm_onehot_apb_wr_rd_cs_reg[2]_1\,
      I1 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_0\,
      I2 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_1\,
      I3 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_2\,
      I4 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_3\,
      I5 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_4\,
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_12_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011150000"
    )
        port map (
      I0 => BRESP_1_i_i_4_n_0,
      I1 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]_0\,
      I2 => m_apb_pready(2),
      I3 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_7_n_0\,
      I4 => address_i(17),
      I5 => address_i(16),
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_2_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_araddr(16),
      I1 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_12_n_0\,
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^s_axi_rready_0\,
      I1 => PENABLE_i_reg_1(2),
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_7_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => axi_wr_rd_cs(0),
      I1 => s_axi_arvalid,
      I2 => \^q\(0),
      I3 => axi_wr_rd_cs(2),
      O => \FSM_sequential_axi_wr_rd_cs_reg[0]_0\
    );
\PADDR_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(0),
      I2 => address_i(0),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(0),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(0)
    );
\PADDR_i[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(10),
      I2 => address_i(10),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(10),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(10)
    );
\PADDR_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(11),
      I2 => address_i(11),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(11),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(11)
    );
\PADDR_i[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(12),
      I2 => address_i(12),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(12),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(12)
    );
\PADDR_i[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(13),
      I2 => address_i(13),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(13),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(13)
    );
\PADDR_i[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(14),
      I2 => address_i(14),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(14),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(14)
    );
\PADDR_i[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(15),
      I2 => address_i(15),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(15),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(15)
    );
\PADDR_i[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(16),
      I2 => address_i(16),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(16),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(16)
    );
\PADDR_i[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(17),
      I2 => address_i(17),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(17),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(17)
    );
\PADDR_i[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(18),
      I2 => address_i(18),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(18),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(18)
    );
\PADDR_i[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(19),
      I2 => address_i(19),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(19),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(19)
    );
\PADDR_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(1),
      I2 => address_i(1),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(1),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(1)
    );
\PADDR_i[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(20),
      I2 => address_i(20),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(20),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(20)
    );
\PADDR_i[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(21),
      I2 => address_i(21),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(21),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(21)
    );
\PADDR_i[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(22),
      I2 => address_i(22),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(22),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(22)
    );
\PADDR_i[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(23),
      I2 => address_i(23),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(23),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(23)
    );
\PADDR_i[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(24),
      I2 => address_i(24),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(24),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(24)
    );
\PADDR_i[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(25),
      I2 => address_i(25),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(25),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(25)
    );
\PADDR_i[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(26),
      I2 => address_i(26),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(26),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(26)
    );
\PADDR_i[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(27),
      I2 => address_i(27),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(27),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(27)
    );
\PADDR_i[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(28),
      I2 => address_i(28),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(28),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(28)
    );
\PADDR_i[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(29),
      I2 => address_i(29),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(29),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(29)
    );
\PADDR_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(2),
      I2 => address_i(2),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(2),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(2)
    );
\PADDR_i[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(30),
      I2 => address_i(30),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(30),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(30)
    );
\PADDR_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(31),
      I2 => address_i(31),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(31),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(31)
    );
\PADDR_i[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(32),
      I2 => address_i(32),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(32),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(32)
    );
\PADDR_i[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(33),
      I2 => address_i(33),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(33),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(33)
    );
\PADDR_i[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(34),
      I2 => address_i(34),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(34),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(34)
    );
\PADDR_i[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(35),
      I2 => address_i(35),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(35),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(35)
    );
\PADDR_i[36]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(36),
      I2 => address_i(36),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(36),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(36)
    );
\PADDR_i[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(37),
      I2 => address_i(37),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(37),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(37)
    );
\PADDR_i[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(38),
      I2 => address_i(38),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(38),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(38)
    );
\PADDR_i[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808F808F808C8080"
    )
        port map (
      I0 => WREADY_i_i_3_n_0,
      I1 => s_axi_wvalid,
      I2 => axi_wr_rd_cs(0),
      I3 => WREADY_i_i_2_n_0,
      I4 => s_axi_awvalid,
      I5 => s_axi_arvalid,
      O => E(0)
    );
\PADDR_i[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(39),
      I2 => address_i(39),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(39),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(39)
    );
\PADDR_i[39]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^s_axi_rready_1\,
      I1 => s_axi_wvalid,
      O => \PADDR_i[39]_i_3_n_0\
    );
\PADDR_i[39]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => axi_wr_rd_cs(0),
      I2 => axi_wr_rd_cs(2),
      I3 => \^q\(0),
      O => \^s_axi_wvalid_0\
    );
\PADDR_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(3),
      I2 => address_i(3),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(3),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(3)
    );
\PADDR_i[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(4),
      I2 => address_i(4),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(4),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(4)
    );
\PADDR_i[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(5),
      I2 => address_i(5),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(5),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(5)
    );
\PADDR_i[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(6),
      I2 => address_i(6),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(6),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(6)
    );
\PADDR_i[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => s_axi_araddr(7),
      I2 => address_i(7),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_awaddr(7),
      I5 => \PADDR_i[39]_i_3_n_0\,
      O => \s_axi_awaddr[39]\(7)
    );
\PADDR_i[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(8),
      I2 => address_i(8),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(8),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(8)
    );
\PADDR_i[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \PADDR_i[39]_i_3_n_0\,
      I1 => s_axi_awaddr(9),
      I2 => address_i(9),
      I3 => \^s_axi_wvalid_0\,
      I4 => s_axi_araddr(9),
      I5 => \^apb_wr_request\,
      O => \s_axi_awaddr[39]\(9)
    );
PENABLE_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0075"
    )
        port map (
      I0 => PENABLE_i_reg,
      I1 => m_apb_pready(2),
      I2 => s_axi_awaddr(17),
      I3 => \^fsm_onehot_apb_wr_rd_cs_reg[2]\,
      I4 => PENABLE_i_i_4_n_0,
      I5 => PENABLE_i_reg_0,
      O => apb_penable_sm
    );
PENABLE_i_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^s_axi_rready_1\,
      I1 => PENABLE_i_reg_1(2),
      O => \^fsm_onehot_apb_wr_rd_cs_reg[2]\
    );
PENABLE_i_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2220"
    )
        port map (
      I0 => PENABLE_i_reg_1(2),
      I1 => \^s_axi_rready_0\,
      I2 => BRESP_1_i_i_4_n_0,
      I3 => \PWDATA_i[31]_i_5_n_0\,
      O => PENABLE_i_i_4_n_0
    );
\PWDATA_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(0)
    );
\PWDATA_i[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(10)
    );
\PWDATA_i[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(11)
    );
\PWDATA_i[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(12)
    );
\PWDATA_i[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(13),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(13)
    );
\PWDATA_i[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(14),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(14)
    );
\PWDATA_i[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(15),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(15)
    );
\PWDATA_i[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(16),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(16)
    );
\PWDATA_i[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(17),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(17)
    );
\PWDATA_i[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(18),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(18)
    );
\PWDATA_i[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(19),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(19)
    );
\PWDATA_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(1)
    );
\PWDATA_i[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(20),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(20)
    );
\PWDATA_i[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(21),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(21)
    );
\PWDATA_i[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(22),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(22)
    );
\PWDATA_i[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(23),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(23)
    );
\PWDATA_i[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(24),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(24)
    );
\PWDATA_i[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(25),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(25)
    );
\PWDATA_i[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(26),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(26)
    );
\PWDATA_i[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(27),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(27)
    );
\PWDATA_i[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(28),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(28)
    );
\PWDATA_i[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(29),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(29)
    );
\PWDATA_i[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(2)
    );
\PWDATA_i[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(30),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(30)
    );
\PWDATA_i[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBAFFBAFFBAFFFF"
    )
        port map (
      I0 => \^apb_wr_request\,
      I1 => \FSM_onehot_apb_wr_rd_cs_reg[2]_2\,
      I2 => PENABLE_i_reg,
      I3 => \PWDATA_i[31]_i_4_n_0\,
      I4 => \PWDATA_i[31]_i_5_n_0\,
      I5 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[1]_i_4_n_0\,
      O => s_axi_arvalid_0(0)
    );
\PWDATA_i[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(31),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(31)
    );
\PWDATA_i[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000FAC00AC"
    )
        port map (
      I0 => m_apb_pready(2),
      I1 => m_apb_pready(0),
      I2 => s_axi_araddr(17),
      I3 => s_axi_araddr(16),
      I4 => m_apb_pready(1),
      I5 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_12_n_0\,
      O => \PWDATA_i[31]_i_4_n_0\
    );
\PWDATA_i[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFF4747"
    )
        port map (
      I0 => m_apb_pready(1),
      I1 => address_i(16),
      I2 => m_apb_pready(0),
      I3 => m_apb_pready(2),
      I4 => address_i(17),
      O => \PWDATA_i[31]_i_5_n_0\
    );
\PWDATA_i[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(3)
    );
\PWDATA_i[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(4)
    );
\PWDATA_i[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(5),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(5)
    );
\PWDATA_i[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(6),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(6)
    );
\PWDATA_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(7),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(7)
    );
\PWDATA_i[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(8)
    );
\PWDATA_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wdata(9),
      I1 => \^apb_wr_request\,
      O => \s_axi_wdata[31]\(9)
    );
RRESP_1_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_wr_rd_cs(2),
      I1 => BRESP_1_i_i_2_n_0,
      O => RRESP_1_i_i_1_n_0
    );
RRESP_1_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => RRESP_1_i_i_1_n_0,
      Q => s_axi_rresp(0),
      R => \^sr\(0)
    );
RVALID_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22223222"
    )
        port map (
      I0 => BRESP_1_i_i_3_n_0,
      I1 => axi_wr_rd_cs(2),
      I2 => axi_wr_rd_cs(0),
      I3 => \^q\(0),
      I4 => s_axi_rready,
      O => RVALID_sm
    );
RVALID_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => RVALID_sm,
      Q => s_axi_rvalid,
      R => \^sr\(0)
    );
\S_AXI_RDATA[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(0),
      I2 => m_apb_prdata3(0),
      I3 => \S_AXI_RDATA[31]_i_3_n_0\,
      I4 => m_apb_prdata2(0),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(0)
    );
\S_AXI_RDATA[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(10),
      I2 => m_apb_prdata(10),
      I3 => \S_AXI_RDATA[31]_i_4_n_0\,
      I4 => m_apb_prdata2(10),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(10)
    );
\S_AXI_RDATA[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(11),
      I2 => m_apb_prdata3(11),
      I3 => \S_AXI_RDATA[31]_i_3_n_0\,
      I4 => m_apb_prdata2(11),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(11)
    );
\S_AXI_RDATA[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(12),
      I2 => m_apb_prdata3(12),
      I3 => \S_AXI_RDATA[31]_i_3_n_0\,
      I4 => m_apb_prdata2(12),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(12)
    );
\S_AXI_RDATA[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(13),
      I2 => m_apb_prdata3(13),
      I3 => \S_AXI_RDATA[31]_i_3_n_0\,
      I4 => m_apb_prdata2(13),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(13)
    );
\S_AXI_RDATA[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(14),
      I2 => m_apb_prdata(14),
      I3 => \S_AXI_RDATA[31]_i_4_n_0\,
      I4 => m_apb_prdata2(14),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(14)
    );
\S_AXI_RDATA[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(15),
      I2 => m_apb_prdata(15),
      I3 => \S_AXI_RDATA[31]_i_4_n_0\,
      I4 => m_apb_prdata2(15),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(15)
    );
\S_AXI_RDATA[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(16),
      I2 => m_apb_prdata3(16),
      I3 => \S_AXI_RDATA[31]_i_3_n_0\,
      I4 => m_apb_prdata2(16),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(16)
    );
\S_AXI_RDATA[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(17),
      I2 => m_apb_prdata2(17),
      I3 => \S_AXI_RDATA[31]_i_5_n_0\,
      I4 => m_apb_prdata(17),
      I5 => \S_AXI_RDATA[31]_i_4_n_0\,
      O => p_2_in(17)
    );
\S_AXI_RDATA[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(18),
      I2 => m_apb_prdata2(18),
      I3 => \S_AXI_RDATA[31]_i_5_n_0\,
      I4 => m_apb_prdata(18),
      I5 => \S_AXI_RDATA[31]_i_4_n_0\,
      O => p_2_in(18)
    );
\S_AXI_RDATA[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(19),
      I2 => m_apb_prdata3(19),
      I3 => \S_AXI_RDATA[31]_i_3_n_0\,
      I4 => m_apb_prdata2(19),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(19)
    );
\S_AXI_RDATA[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(1),
      I2 => m_apb_prdata3(1),
      I3 => \S_AXI_RDATA[31]_i_3_n_0\,
      I4 => m_apb_prdata2(1),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(1)
    );
\S_AXI_RDATA[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(20),
      I2 => m_apb_prdata3(20),
      I3 => \S_AXI_RDATA[31]_i_3_n_0\,
      I4 => m_apb_prdata2(20),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(20)
    );
\S_AXI_RDATA[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(21),
      I2 => m_apb_prdata2(21),
      I3 => \S_AXI_RDATA[31]_i_5_n_0\,
      I4 => m_apb_prdata3(21),
      I5 => \S_AXI_RDATA[31]_i_3_n_0\,
      O => p_2_in(21)
    );
\S_AXI_RDATA[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(22),
      I2 => m_apb_prdata(22),
      I3 => \S_AXI_RDATA[31]_i_4_n_0\,
      I4 => m_apb_prdata2(22),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(22)
    );
\S_AXI_RDATA[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(23),
      I2 => m_apb_prdata2(23),
      I3 => \S_AXI_RDATA[31]_i_5_n_0\,
      I4 => m_apb_prdata(23),
      I5 => \S_AXI_RDATA[31]_i_4_n_0\,
      O => p_2_in(23)
    );
\S_AXI_RDATA[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(24),
      I2 => m_apb_prdata3(24),
      I3 => \S_AXI_RDATA[31]_i_3_n_0\,
      I4 => m_apb_prdata2(24),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(24)
    );
\S_AXI_RDATA[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(25),
      I2 => m_apb_prdata2(25),
      I3 => \S_AXI_RDATA[31]_i_5_n_0\,
      I4 => m_apb_prdata3(25),
      I5 => \S_AXI_RDATA[31]_i_3_n_0\,
      O => p_2_in(25)
    );
\S_AXI_RDATA[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(26),
      I2 => m_apb_prdata(26),
      I3 => \S_AXI_RDATA[31]_i_4_n_0\,
      I4 => m_apb_prdata2(26),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(26)
    );
\S_AXI_RDATA[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(27),
      I2 => m_apb_prdata2(27),
      I3 => \S_AXI_RDATA[31]_i_5_n_0\,
      I4 => m_apb_prdata(27),
      I5 => \S_AXI_RDATA[31]_i_4_n_0\,
      O => p_2_in(27)
    );
\S_AXI_RDATA[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(28),
      I2 => m_apb_prdata(28),
      I3 => \S_AXI_RDATA[31]_i_4_n_0\,
      I4 => m_apb_prdata2(28),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(28)
    );
\S_AXI_RDATA[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(29),
      I2 => m_apb_prdata(29),
      I3 => \S_AXI_RDATA[31]_i_4_n_0\,
      I4 => m_apb_prdata2(29),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(29)
    );
\S_AXI_RDATA[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(2),
      I2 => m_apb_prdata2(2),
      I3 => \S_AXI_RDATA[31]_i_5_n_0\,
      I4 => m_apb_prdata(2),
      I5 => \S_AXI_RDATA[31]_i_4_n_0\,
      O => p_2_in(2)
    );
\S_AXI_RDATA[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(30),
      I2 => m_apb_prdata(30),
      I3 => \S_AXI_RDATA[31]_i_4_n_0\,
      I4 => m_apb_prdata2(30),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(30)
    );
\S_AXI_RDATA[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => s_axi_rready,
      I1 => axi_wr_rd_cs(2),
      I2 => BRESP_1_i_i_3_n_0,
      O => \S_AXI_RDATA[31]_i_1_n_0\
    );
\S_AXI_RDATA[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(31),
      I2 => m_apb_prdata(31),
      I3 => \S_AXI_RDATA[31]_i_4_n_0\,
      I4 => m_apb_prdata2(31),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(31)
    );
\S_AXI_RDATA[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => m_apb_pready(2),
      I1 => address_i(17),
      I2 => \S_AXI_RDATA[31]_i_6_n_0\,
      I3 => \S_AXI_RDATA[31]_i_7_n_0\,
      I4 => axi_wr_rd_cs(2),
      I5 => address_i(16),
      O => \S_AXI_RDATA[31]_i_3_n_0\
    );
\S_AXI_RDATA[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => m_apb_pready(0),
      I1 => address_i(17),
      I2 => \S_AXI_RDATA[31]_i_6_n_0\,
      I3 => \S_AXI_RDATA[31]_i_7_n_0\,
      I4 => axi_wr_rd_cs(2),
      I5 => address_i(16),
      O => \S_AXI_RDATA[31]_i_4_n_0\
    );
\S_AXI_RDATA[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_8_n_0\,
      I1 => axi_wr_rd_cs(2),
      I2 => \S_AXI_RDATA[31]_i_7_n_0\,
      I3 => \^q\(0),
      I4 => \S_AXI_RDATA_reg[31]_0\,
      I5 => BRESP_1_i_i_4_n_0,
      O => \S_AXI_RDATA[31]_i_5_n_0\
    );
\S_AXI_RDATA[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_0\,
      I1 => BRESP_1_i_i_10_n_0,
      I2 => BRESP_1_i_i_9_n_0,
      I3 => BRESP_1_i_i_8_n_0,
      I4 => BRESP_1_i_i_7_n_0,
      I5 => BRESP_1_i_i_6_n_0,
      O => \S_AXI_RDATA[31]_i_6_n_0\
    );
\S_AXI_RDATA[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => axi_wr_rd_cs(0),
      I1 => PENABLE_i_reg_1(2),
      O => \S_AXI_RDATA[31]_i_7_n_0\
    );
\S_AXI_RDATA[31]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => address_i(16),
      I1 => address_i(17),
      I2 => m_apb_pready(1),
      O => \S_AXI_RDATA[31]_i_8_n_0\
    );
\S_AXI_RDATA[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(3),
      I2 => m_apb_prdata3(3),
      I3 => \S_AXI_RDATA[31]_i_3_n_0\,
      I4 => m_apb_prdata2(3),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(3)
    );
\S_AXI_RDATA[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(4),
      I2 => m_apb_prdata2(4),
      I3 => \S_AXI_RDATA[31]_i_5_n_0\,
      I4 => m_apb_prdata(4),
      I5 => \S_AXI_RDATA[31]_i_4_n_0\,
      O => p_2_in(4)
    );
\S_AXI_RDATA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(5),
      I2 => m_apb_prdata3(5),
      I3 => \S_AXI_RDATA[31]_i_3_n_0\,
      I4 => m_apb_prdata2(5),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(5)
    );
\S_AXI_RDATA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(6),
      I2 => m_apb_prdata3(6),
      I3 => \S_AXI_RDATA[31]_i_3_n_0\,
      I4 => m_apb_prdata2(6),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(6)
    );
\S_AXI_RDATA[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_3_n_0\,
      I1 => m_apb_prdata3(7),
      I2 => m_apb_prdata2(7),
      I3 => \S_AXI_RDATA[31]_i_5_n_0\,
      I4 => m_apb_prdata(7),
      I5 => \S_AXI_RDATA[31]_i_4_n_0\,
      O => p_2_in(7)
    );
\S_AXI_RDATA[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(8),
      I2 => m_apb_prdata3(8),
      I3 => \S_AXI_RDATA[31]_i_3_n_0\,
      I4 => m_apb_prdata2(8),
      I5 => \S_AXI_RDATA[31]_i_5_n_0\,
      O => p_2_in(8)
    );
\S_AXI_RDATA[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \S_AXI_RDATA[31]_i_4_n_0\,
      I1 => m_apb_prdata(9),
      I2 => m_apb_prdata2(9),
      I3 => \S_AXI_RDATA[31]_i_5_n_0\,
      I4 => m_apb_prdata3(9),
      I5 => \S_AXI_RDATA[31]_i_3_n_0\,
      O => p_2_in(9)
    );
\S_AXI_RDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(0),
      Q => s_axi_rdata(0),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(10),
      Q => s_axi_rdata(10),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(11),
      Q => s_axi_rdata(11),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(12),
      Q => s_axi_rdata(12),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(13),
      Q => s_axi_rdata(13),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(14),
      Q => s_axi_rdata(14),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(15),
      Q => s_axi_rdata(15),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(16),
      Q => s_axi_rdata(16),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(17),
      Q => s_axi_rdata(17),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(18),
      Q => s_axi_rdata(18),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(19),
      Q => s_axi_rdata(19),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(1),
      Q => s_axi_rdata(1),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(20),
      Q => s_axi_rdata(20),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(21),
      Q => s_axi_rdata(21),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(22),
      Q => s_axi_rdata(22),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(23),
      Q => s_axi_rdata(23),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(24),
      Q => s_axi_rdata(24),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(25),
      Q => s_axi_rdata(25),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(26),
      Q => s_axi_rdata(26),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(27),
      Q => s_axi_rdata(27),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(28),
      Q => s_axi_rdata(28),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(29),
      Q => s_axi_rdata(29),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(2),
      Q => s_axi_rdata(2),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(30),
      Q => s_axi_rdata(30),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(31),
      Q => s_axi_rdata(31),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(3),
      Q => s_axi_rdata(3),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(4),
      Q => s_axi_rdata(4),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(5),
      Q => s_axi_rdata(5),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(6),
      Q => s_axi_rdata(6),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(7),
      Q => s_axi_rdata(7),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(8),
      Q => s_axi_rdata(8),
      R => \^sr\(0)
    );
\S_AXI_RDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \S_AXI_RDATA[31]_i_1_n_0\,
      D => p_2_in(9),
      Q => s_axi_rdata(9),
      R => \^sr\(0)
    );
WREADY_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00000010001000"
    )
        port map (
      I0 => WREADY_i_i_2_n_0,
      I1 => s_axi_arvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => WREADY_i_i_3_n_0,
      I5 => axi_wr_rd_cs(0),
      O => \^apb_wr_request\
    );
WREADY_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => axi_wr_rd_cs(2),
      O => WREADY_i_i_2_n_0
    );
WREADY_i_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3830"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^q\(0),
      I2 => axi_wr_rd_cs(2),
      I3 => s_axi_rready,
      O => WREADY_i_i_3_n_0
    );
WREADY_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^apb_wr_request\,
      Q => s_axi_wready,
      R => \^sr\(0)
    );
\address_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(0),
      O => \address_i[0]_i_1_n_0\
    );
\address_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(10),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(10),
      O => \address_i[10]_i_1_n_0\
    );
\address_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(11),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(11),
      O => \address_i[11]_i_1_n_0\
    );
\address_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(12),
      O => \address_i[12]_i_1_n_0\
    );
\address_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(13),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(13),
      O => \address_i[13]_i_1_n_0\
    );
\address_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(14),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(14),
      O => \address_i[14]_i_1_n_0\
    );
\address_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(15),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(15),
      O => \address_i[15]_i_1_n_0\
    );
\address_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(16),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(16),
      O => \address_i[16]_i_1_n_0\
    );
\address_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(17),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(17),
      O => \address_i[17]_i_1_n_0\
    );
\address_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(18),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(18),
      O => \address_i[18]_i_1_n_0\
    );
\address_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(19),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(19),
      O => \address_i[19]_i_1_n_0\
    );
\address_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(1),
      O => \address_i[1]_i_1_n_0\
    );
\address_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(20),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(20),
      O => \address_i[20]_i_1_n_0\
    );
\address_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(21),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(21),
      O => \address_i[21]_i_1_n_0\
    );
\address_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(22),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(22),
      O => \address_i[22]_i_1_n_0\
    );
\address_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(23),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(23),
      O => \address_i[23]_i_1_n_0\
    );
\address_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(24),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(24),
      O => \address_i[24]_i_1_n_0\
    );
\address_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(25),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(25),
      O => \address_i[25]_i_1_n_0\
    );
\address_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(26),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(26),
      O => \address_i[26]_i_1_n_0\
    );
\address_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(27),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(27),
      O => \address_i[27]_i_1_n_0\
    );
\address_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(28),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(28),
      O => \address_i[28]_i_1_n_0\
    );
\address_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(29),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(29),
      O => \address_i[29]_i_1_n_0\
    );
\address_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(2),
      O => \address_i[2]_i_1_n_0\
    );
\address_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(30),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(30),
      O => \address_i[30]_i_1_n_0\
    );
\address_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(31),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(31),
      O => \address_i[31]_i_1_n_0\
    );
\address_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(32),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(32),
      O => \address_i[32]_i_1_n_0\
    );
\address_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(33),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(33),
      O => \address_i[33]_i_1_n_0\
    );
\address_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(34),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(34),
      O => \address_i[34]_i_1_n_0\
    );
\address_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(35),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(35),
      O => \address_i[35]_i_1_n_0\
    );
\address_i[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(36),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(36),
      O => \address_i[36]_i_1_n_0\
    );
\address_i[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(37),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(37),
      O => \address_i[37]_i_1_n_0\
    );
\address_i[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(38),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(38),
      O => \address_i[38]_i_1_n_0\
    );
\address_i[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0803000308030000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => axi_wr_rd_cs(0),
      I2 => axi_wr_rd_cs(2),
      I3 => \^q\(0),
      I4 => s_axi_awvalid,
      I5 => s_axi_arvalid,
      O => \^s_axi_rready_0\
    );
\address_i[39]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(39),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(39),
      O => \address_i[39]_i_2_n_0\
    );
\address_i[39]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFDFFFFFFFFFFFCF"
    )
        port map (
      I0 => s_axi_rready,
      I1 => axi_wr_rd_cs(2),
      I2 => s_axi_awvalid,
      I3 => s_axi_arvalid,
      I4 => axi_wr_rd_cs(0),
      I5 => \^q\(0),
      O => \^s_axi_rready_1\
    );
\address_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(3),
      O => \address_i[3]_i_1_n_0\
    );
\address_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(4),
      O => \address_i[4]_i_1_n_0\
    );
\address_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(5),
      O => \address_i[5]_i_1_n_0\
    );
\address_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(6),
      O => \address_i[6]_i_1_n_0\
    );
\address_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(7),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(7),
      O => \address_i[7]_i_1_n_0\
    );
\address_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(8),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(8),
      O => \address_i[8]_i_1_n_0\
    );
\address_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_araddr(9),
      I1 => \^s_axi_rready_1\,
      I2 => s_axi_awaddr(9),
      O => \address_i[9]_i_1_n_0\
    );
\address_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[0]_i_1_n_0\,
      Q => address_i(0),
      R => \^sr\(0)
    );
\address_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[10]_i_1_n_0\,
      Q => address_i(10),
      R => \^sr\(0)
    );
\address_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[11]_i_1_n_0\,
      Q => address_i(11),
      R => \^sr\(0)
    );
\address_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[12]_i_1_n_0\,
      Q => address_i(12),
      R => \^sr\(0)
    );
\address_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[13]_i_1_n_0\,
      Q => address_i(13),
      R => \^sr\(0)
    );
\address_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[14]_i_1_n_0\,
      Q => address_i(14),
      R => \^sr\(0)
    );
\address_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[15]_i_1_n_0\,
      Q => address_i(15),
      R => \^sr\(0)
    );
\address_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[16]_i_1_n_0\,
      Q => address_i(16),
      R => \^sr\(0)
    );
\address_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[17]_i_1_n_0\,
      Q => address_i(17),
      R => \^sr\(0)
    );
\address_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[18]_i_1_n_0\,
      Q => address_i(18),
      R => \^sr\(0)
    );
\address_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[19]_i_1_n_0\,
      Q => address_i(19),
      R => \^sr\(0)
    );
\address_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[1]_i_1_n_0\,
      Q => address_i(1),
      R => \^sr\(0)
    );
\address_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[20]_i_1_n_0\,
      Q => address_i(20),
      R => \^sr\(0)
    );
\address_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[21]_i_1_n_0\,
      Q => address_i(21),
      R => \^sr\(0)
    );
\address_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[22]_i_1_n_0\,
      Q => address_i(22),
      R => \^sr\(0)
    );
\address_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[23]_i_1_n_0\,
      Q => address_i(23),
      R => \^sr\(0)
    );
\address_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[24]_i_1_n_0\,
      Q => address_i(24),
      R => \^sr\(0)
    );
\address_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[25]_i_1_n_0\,
      Q => address_i(25),
      R => \^sr\(0)
    );
\address_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[26]_i_1_n_0\,
      Q => address_i(26),
      R => \^sr\(0)
    );
\address_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[27]_i_1_n_0\,
      Q => address_i(27),
      R => \^sr\(0)
    );
\address_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[28]_i_1_n_0\,
      Q => address_i(28),
      R => \^sr\(0)
    );
\address_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[29]_i_1_n_0\,
      Q => address_i(29),
      R => \^sr\(0)
    );
\address_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[2]_i_1_n_0\,
      Q => address_i(2),
      R => \^sr\(0)
    );
\address_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[30]_i_1_n_0\,
      Q => address_i(30),
      R => \^sr\(0)
    );
\address_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[31]_i_1_n_0\,
      Q => address_i(31),
      R => \^sr\(0)
    );
\address_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[32]_i_1_n_0\,
      Q => address_i(32),
      R => \^sr\(0)
    );
\address_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[33]_i_1_n_0\,
      Q => address_i(33),
      R => \^sr\(0)
    );
\address_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[34]_i_1_n_0\,
      Q => address_i(34),
      R => \^sr\(0)
    );
\address_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[35]_i_1_n_0\,
      Q => address_i(35),
      R => \^sr\(0)
    );
\address_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[36]_i_1_n_0\,
      Q => address_i(36),
      R => \^sr\(0)
    );
\address_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[37]_i_1_n_0\,
      Q => address_i(37),
      R => \^sr\(0)
    );
\address_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[38]_i_1_n_0\,
      Q => address_i(38),
      R => \^sr\(0)
    );
\address_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[39]_i_2_n_0\,
      Q => address_i(39),
      R => \^sr\(0)
    );
\address_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[3]_i_1_n_0\,
      Q => address_i(3),
      R => \^sr\(0)
    );
\address_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[4]_i_1_n_0\,
      Q => address_i(4),
      R => \^sr\(0)
    );
\address_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[5]_i_1_n_0\,
      Q => address_i(5),
      R => \^sr\(0)
    );
\address_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[6]_i_1_n_0\,
      Q => address_i(6),
      R => \^sr\(0)
    );
\address_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[7]_i_1_n_0\,
      Q => address_i(7),
      R => \^sr\(0)
    );
\address_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[8]_i_1_n_0\,
      Q => address_i(8),
      R => \^sr\(0)
    );
\address_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^s_axi_rready_0\,
      D => \address_i[9]_i_1_n_0\,
      Q => address_i(9),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplexor is
  port (
    \s_axi_araddr[23]\ : out STD_LOGIC;
    \s_axi_araddr[23]_0\ : out STD_LOGIC;
    \s_axi_araddr[33]\ : out STD_LOGIC;
    \s_axi_araddr[30]\ : out STD_LOGIC;
    \s_axi_araddr[38]\ : out STD_LOGIC;
    \s_axi_araddr[36]\ : out STD_LOGIC;
    \s_axi_awaddr[30]\ : out STD_LOGIC;
    m_apb_psel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 21 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 21 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplexor;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplexor is
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_18_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_19_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_20_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_21_n_0\ : STD_LOGIC;
  signal \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_22_n_0\ : STD_LOGIC;
  signal \^s_axi_araddr[23]_0\ : STD_LOGIC;
  signal \^s_axi_araddr[30]\ : STD_LOGIC;
  signal \^s_axi_araddr[33]\ : STD_LOGIC;
  signal \^s_axi_araddr[36]\ : STD_LOGIC;
  signal \^s_axi_araddr[38]\ : STD_LOGIC;
begin
  \s_axi_araddr[23]_0\ <= \^s_axi_araddr[23]_0\;
  \s_axi_araddr[30]\ <= \^s_axi_araddr[30]\;
  \s_axi_araddr[33]\ <= \^s_axi_araddr[33]\;
  \s_axi_araddr[36]\ <= \^s_axi_araddr[36]\;
  \s_axi_araddr[38]\ <= \^s_axi_araddr[38]\;
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_18_n_0\,
      I1 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_19_n_0\,
      I2 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_20_n_0\,
      I3 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_21_n_0\,
      I4 => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_22_n_0\,
      O => \s_axi_awaddr[30]\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_araddr(8),
      I2 => s_axi_araddr(14),
      I3 => s_axi_araddr(11),
      I4 => s_axi_araddr(2),
      I5 => s_axi_araddr(10),
      O => \^s_axi_araddr[23]_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_araddr(15),
      I1 => s_axi_araddr(7),
      I2 => s_axi_araddr(17),
      I3 => s_axi_araddr(0),
      O => \^s_axi_araddr[33]\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s_axi_araddr(12),
      I1 => s_axi_araddr(4),
      I2 => s_axi_araddr(13),
      I3 => s_axi_araddr(9),
      O => \^s_axi_araddr[30]\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_araddr(20),
      I1 => s_axi_araddr(21),
      I2 => s_axi_araddr(1),
      I3 => s_axi_araddr(3),
      O => \^s_axi_araddr[38]\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_araddr(18),
      I1 => s_axi_araddr(19),
      I2 => s_axi_araddr(16),
      I3 => s_axi_araddr(6),
      O => \^s_axi_araddr[36]\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => s_axi_awaddr(12),
      I1 => s_axi_awaddr(15),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awaddr(20),
      I4 => s_axi_awaddr(4),
      I5 => s_axi_awaddr(21),
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_18_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => s_axi_awaddr(8),
      I2 => s_axi_awaddr(10),
      I3 => s_axi_awaddr(14),
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_19_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => s_axi_awaddr(18),
      I2 => s_axi_awaddr(13),
      I3 => s_axi_awaddr(16),
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_20_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => s_axi_awaddr(9),
      I2 => s_axi_awaddr(17),
      I3 => s_axi_awaddr(7),
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_21_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => s_axi_awaddr(5),
      I2 => s_axi_awaddr(19),
      I3 => s_axi_awaddr(3),
      O => \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_22_n_0\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^s_axi_araddr[23]_0\,
      I1 => \^s_axi_araddr[33]\,
      I2 => \^s_axi_araddr[30]\,
      I3 => \^s_axi_araddr[38]\,
      I4 => \^s_axi_araddr[36]\,
      O => \s_axi_araddr[23]\
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(0),
      Q => m_apb_psel(0),
      R => SR(0)
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(1),
      Q => m_apb_psel(1),
      R => SR(0)
    );
\GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => D(2),
      Q => m_apb_psel(2),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_apb_paddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_apb_psel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_apb_penable : out STD_LOGIC;
    m_apb_pwrite : out STD_LOGIC;
    m_apb_pwdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_pready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_apb_prdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata11 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata13 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata14 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata15 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata16 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_pslverr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_apb_pprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_apb_pstrb : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute C_APB_NUM_SLAVES : integer;
  attribute C_APB_NUM_SLAVES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is 3;
  attribute C_BASEADDR : string;
  attribute C_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000010000000000000000000000000000000";
  attribute C_DPHASE_TIMEOUT : integer;
  attribute C_DPHASE_TIMEOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "zynquplus";
  attribute C_HIGHADDR : string;
  attribute C_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000010000000000000001111111111111111";
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "axi_apb_bridge_inst";
  attribute C_M_APB_ADDR_WIDTH : integer;
  attribute C_M_APB_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is 40;
  attribute C_M_APB_DATA_WIDTH : integer;
  attribute C_M_APB_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is 32;
  attribute C_M_APB_PROTOCOL : string;
  attribute C_M_APB_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "apb3";
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is 40;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is 32;
  attribute C_S_AXI_RNG10_BASEADDR : string;
  attribute C_S_AXI_RNG10_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000010010000000000000000000000000000";
  attribute C_S_AXI_RNG10_HIGHADDR : string;
  attribute C_S_AXI_RNG10_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000010011111111111111111111111111111";
  attribute C_S_AXI_RNG11_BASEADDR : string;
  attribute C_S_AXI_RNG11_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000010100000000000000000000000000000";
  attribute C_S_AXI_RNG11_HIGHADDR : string;
  attribute C_S_AXI_RNG11_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000010101111111111111111111111111111";
  attribute C_S_AXI_RNG12_BASEADDR : string;
  attribute C_S_AXI_RNG12_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000010110000000000000000000000000000";
  attribute C_S_AXI_RNG12_HIGHADDR : string;
  attribute C_S_AXI_RNG12_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000010111111111111111111111111111111";
  attribute C_S_AXI_RNG13_BASEADDR : string;
  attribute C_S_AXI_RNG13_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000011000000000000000000000000000000";
  attribute C_S_AXI_RNG13_HIGHADDR : string;
  attribute C_S_AXI_RNG13_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000011001111111111111111111111111111";
  attribute C_S_AXI_RNG14_BASEADDR : string;
  attribute C_S_AXI_RNG14_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000011010000000000000000000000000000";
  attribute C_S_AXI_RNG14_HIGHADDR : string;
  attribute C_S_AXI_RNG14_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000011011111111111111111111111111111";
  attribute C_S_AXI_RNG15_BASEADDR : string;
  attribute C_S_AXI_RNG15_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000011100000000000000000000000000000";
  attribute C_S_AXI_RNG15_HIGHADDR : string;
  attribute C_S_AXI_RNG15_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000011101111111111111111111111111111";
  attribute C_S_AXI_RNG16_BASEADDR : string;
  attribute C_S_AXI_RNG16_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000011110000000000000000000000000000";
  attribute C_S_AXI_RNG16_HIGHADDR : string;
  attribute C_S_AXI_RNG16_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000011111111111111111111111111111111";
  attribute C_S_AXI_RNG2_BASEADDR : string;
  attribute C_S_AXI_RNG2_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000010000000000000010000000000000000";
  attribute C_S_AXI_RNG2_HIGHADDR : string;
  attribute C_S_AXI_RNG2_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000010000000000000011111111111111111";
  attribute C_S_AXI_RNG3_BASEADDR : string;
  attribute C_S_AXI_RNG3_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000010000000000000100000000000000000";
  attribute C_S_AXI_RNG3_HIGHADDR : string;
  attribute C_S_AXI_RNG3_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000010000000000000101111111111111111";
  attribute C_S_AXI_RNG4_BASEADDR : string;
  attribute C_S_AXI_RNG4_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000000110000000000000000000000000000";
  attribute C_S_AXI_RNG4_HIGHADDR : string;
  attribute C_S_AXI_RNG4_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000000111111111111111111111111111111";
  attribute C_S_AXI_RNG5_BASEADDR : string;
  attribute C_S_AXI_RNG5_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000001000000000000000000000000000000";
  attribute C_S_AXI_RNG5_HIGHADDR : string;
  attribute C_S_AXI_RNG5_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000001001111111111111111111111111111";
  attribute C_S_AXI_RNG6_BASEADDR : string;
  attribute C_S_AXI_RNG6_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000001010000000000000000000000000000";
  attribute C_S_AXI_RNG6_HIGHADDR : string;
  attribute C_S_AXI_RNG6_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000001011111111111111111111111111111";
  attribute C_S_AXI_RNG7_BASEADDR : string;
  attribute C_S_AXI_RNG7_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000001100000000000000000000000000000";
  attribute C_S_AXI_RNG7_HIGHADDR : string;
  attribute C_S_AXI_RNG7_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000001101111111111111111111111111111";
  attribute C_S_AXI_RNG8_BASEADDR : string;
  attribute C_S_AXI_RNG8_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000001110000000000000000000000000000";
  attribute C_S_AXI_RNG8_HIGHADDR : string;
  attribute C_S_AXI_RNG8_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000001111111111111111111111111111111";
  attribute C_S_AXI_RNG9_BASEADDR : string;
  attribute C_S_AXI_RNG9_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000010000000000000000000000000000000";
  attribute C_S_AXI_RNG9_HIGHADDR : string;
  attribute C_S_AXI_RNG9_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "64'b0000000000000000000000000000000010001111111111111111111111111111";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal APB_MASTER_IF_MODULE_n_10 : STD_LOGIC;
  signal APB_MASTER_IF_MODULE_n_11 : STD_LOGIC;
  signal APB_MASTER_IF_MODULE_n_12 : STD_LOGIC;
  signal APB_MASTER_IF_MODULE_n_13 : STD_LOGIC;
  signal APB_MASTER_IF_MODULE_n_2 : STD_LOGIC;
  signal APB_MASTER_IF_MODULE_n_3 : STD_LOGIC;
  signal APB_MASTER_IF_MODULE_n_4 : STD_LOGIC;
  signal APB_MASTER_IF_MODULE_n_5 : STD_LOGIC;
  signal APB_MASTER_IF_MODULE_n_6 : STD_LOGIC;
  signal APB_MASTER_IF_MODULE_n_7 : STD_LOGIC;
  signal APB_MASTER_IF_MODULE_n_8 : STD_LOGIC;
  signal APB_MASTER_IF_MODULE_n_9 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_1 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_10 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_11 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_12 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_13 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_14 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_15 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_16 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_17 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_19 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_20 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_21 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_22 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_23 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_24 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_25 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_26 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_27 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_28 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_29 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_30 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_31 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_32 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_33 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_34 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_35 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_36 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_37 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_38 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_39 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_40 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_41 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_42 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_43 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_44 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_45 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_46 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_47 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_48 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_49 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_50 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_51 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_52 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_53 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_54 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_55 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_56 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_57 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_58 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_59 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_60 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_61 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_62 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_63 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_64 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_65 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_66 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_67 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_68 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_69 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_70 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_71 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_72 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_73 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_74 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_75 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_76 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_77 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_78 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_79 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_80 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_81 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_82 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_83 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_84 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_85 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_86 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_87 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_88 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_89 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_90 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_91 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_92 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_93 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_94 : STD_LOGIC;
  signal AXILITE_SLAVE_IF_MODULE_n_95 : STD_LOGIC;
  signal MULTIPLEXOR_MODULE_n_0 : STD_LOGIC;
  signal MULTIPLEXOR_MODULE_n_1 : STD_LOGIC;
  signal MULTIPLEXOR_MODULE_n_2 : STD_LOGIC;
  signal MULTIPLEXOR_MODULE_n_3 : STD_LOGIC;
  signal MULTIPLEXOR_MODULE_n_4 : STD_LOGIC;
  signal MULTIPLEXOR_MODULE_n_5 : STD_LOGIC;
  signal MULTIPLEXOR_MODULE_n_6 : STD_LOGIC;
  signal apb_penable_sm : STD_LOGIC;
  signal apb_wr_request : STD_LOGIC;
  signal axi_wr_rd_cs : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^m_apb_penable\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  m_apb_penable <= \^m_apb_penable\;
  m_apb_pprot(2) <= \<const0>\;
  m_apb_pprot(1) <= \<const0>\;
  m_apb_pprot(0) <= \<const0>\;
  m_apb_pstrb(3) <= \<const1>\;
  m_apb_pstrb(2) <= \<const1>\;
  m_apb_pstrb(1) <= \<const1>\;
  m_apb_pstrb(0) <= \<const1>\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
APB_MASTER_IF_MODULE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_apb_mif
     port map (
      D(39) => AXILITE_SLAVE_IF_MODULE_n_21,
      D(38) => AXILITE_SLAVE_IF_MODULE_n_22,
      D(37) => AXILITE_SLAVE_IF_MODULE_n_23,
      D(36) => AXILITE_SLAVE_IF_MODULE_n_24,
      D(35) => AXILITE_SLAVE_IF_MODULE_n_25,
      D(34) => AXILITE_SLAVE_IF_MODULE_n_26,
      D(33) => AXILITE_SLAVE_IF_MODULE_n_27,
      D(32) => AXILITE_SLAVE_IF_MODULE_n_28,
      D(31) => AXILITE_SLAVE_IF_MODULE_n_29,
      D(30) => AXILITE_SLAVE_IF_MODULE_n_30,
      D(29) => AXILITE_SLAVE_IF_MODULE_n_31,
      D(28) => AXILITE_SLAVE_IF_MODULE_n_32,
      D(27) => AXILITE_SLAVE_IF_MODULE_n_33,
      D(26) => AXILITE_SLAVE_IF_MODULE_n_34,
      D(25) => AXILITE_SLAVE_IF_MODULE_n_35,
      D(24) => AXILITE_SLAVE_IF_MODULE_n_36,
      D(23) => AXILITE_SLAVE_IF_MODULE_n_37,
      D(22) => AXILITE_SLAVE_IF_MODULE_n_38,
      D(21) => AXILITE_SLAVE_IF_MODULE_n_39,
      D(20) => AXILITE_SLAVE_IF_MODULE_n_40,
      D(19) => AXILITE_SLAVE_IF_MODULE_n_41,
      D(18) => AXILITE_SLAVE_IF_MODULE_n_42,
      D(17) => AXILITE_SLAVE_IF_MODULE_n_43,
      D(16) => AXILITE_SLAVE_IF_MODULE_n_44,
      D(15) => AXILITE_SLAVE_IF_MODULE_n_45,
      D(14) => AXILITE_SLAVE_IF_MODULE_n_46,
      D(13) => AXILITE_SLAVE_IF_MODULE_n_47,
      D(12) => AXILITE_SLAVE_IF_MODULE_n_48,
      D(11) => AXILITE_SLAVE_IF_MODULE_n_49,
      D(10) => AXILITE_SLAVE_IF_MODULE_n_50,
      D(9) => AXILITE_SLAVE_IF_MODULE_n_51,
      D(8) => AXILITE_SLAVE_IF_MODULE_n_52,
      D(7) => AXILITE_SLAVE_IF_MODULE_n_53,
      D(6) => AXILITE_SLAVE_IF_MODULE_n_54,
      D(5) => AXILITE_SLAVE_IF_MODULE_n_55,
      D(4) => AXILITE_SLAVE_IF_MODULE_n_56,
      D(3) => AXILITE_SLAVE_IF_MODULE_n_57,
      D(2) => AXILITE_SLAVE_IF_MODULE_n_58,
      D(1) => AXILITE_SLAVE_IF_MODULE_n_59,
      D(0) => AXILITE_SLAVE_IF_MODULE_n_60,
      E(0) => AXILITE_SLAVE_IF_MODULE_n_93,
      \FSM_onehot_apb_wr_rd_cs_reg[1]_0\ => APB_MASTER_IF_MODULE_n_3,
      \FSM_onehot_apb_wr_rd_cs_reg[1]_1\ => APB_MASTER_IF_MODULE_n_8,
      \FSM_onehot_apb_wr_rd_cs_reg[1]_2\ => APB_MASTER_IF_MODULE_n_9,
      \FSM_onehot_apb_wr_rd_cs_reg[2]_0\(2) => APB_MASTER_IF_MODULE_n_4,
      \FSM_onehot_apb_wr_rd_cs_reg[2]_0\(1) => APB_MASTER_IF_MODULE_n_5,
      \FSM_onehot_apb_wr_rd_cs_reg[2]_0\(0) => APB_MASTER_IF_MODULE_n_6,
      \FSM_onehot_apb_wr_rd_cs_reg[2]_1\ => APB_MASTER_IF_MODULE_n_12,
      \FSM_onehot_apb_wr_rd_cs_reg[2]_2\ => AXILITE_SLAVE_IF_MODULE_n_94,
      \FSM_onehot_apb_wr_rd_cs_reg[2]_3\ => AXILITE_SLAVE_IF_MODULE_n_95,
      \FSM_onehot_apb_wr_rd_cs_reg[2]_4\(0) => AXILITE_SLAVE_IF_MODULE_n_16,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_2\ => AXILITE_SLAVE_IF_MODULE_n_11,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_2_0\ => AXILITE_SLAVE_IF_MODULE_n_15,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]\ => AXILITE_SLAVE_IF_MODULE_n_20,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[2]\ => AXILITE_SLAVE_IF_MODULE_n_10,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[2]_0\ => MULTIPLEXOR_MODULE_n_6,
      PENABLE_i_reg_0 => \^m_apb_penable\,
      PENABLE_i_reg_1 => APB_MASTER_IF_MODULE_n_2,
      PENABLE_i_reg_2 => AXILITE_SLAVE_IF_MODULE_n_19,
      PENABLE_i_reg_3 => MULTIPLEXOR_MODULE_n_0,
      \PWDATA_i_reg[31]_0\(0) => AXILITE_SLAVE_IF_MODULE_n_17,
      \PWDATA_i_reg[31]_1\(31) => AXILITE_SLAVE_IF_MODULE_n_61,
      \PWDATA_i_reg[31]_1\(30) => AXILITE_SLAVE_IF_MODULE_n_62,
      \PWDATA_i_reg[31]_1\(29) => AXILITE_SLAVE_IF_MODULE_n_63,
      \PWDATA_i_reg[31]_1\(28) => AXILITE_SLAVE_IF_MODULE_n_64,
      \PWDATA_i_reg[31]_1\(27) => AXILITE_SLAVE_IF_MODULE_n_65,
      \PWDATA_i_reg[31]_1\(26) => AXILITE_SLAVE_IF_MODULE_n_66,
      \PWDATA_i_reg[31]_1\(25) => AXILITE_SLAVE_IF_MODULE_n_67,
      \PWDATA_i_reg[31]_1\(24) => AXILITE_SLAVE_IF_MODULE_n_68,
      \PWDATA_i_reg[31]_1\(23) => AXILITE_SLAVE_IF_MODULE_n_69,
      \PWDATA_i_reg[31]_1\(22) => AXILITE_SLAVE_IF_MODULE_n_70,
      \PWDATA_i_reg[31]_1\(21) => AXILITE_SLAVE_IF_MODULE_n_71,
      \PWDATA_i_reg[31]_1\(20) => AXILITE_SLAVE_IF_MODULE_n_72,
      \PWDATA_i_reg[31]_1\(19) => AXILITE_SLAVE_IF_MODULE_n_73,
      \PWDATA_i_reg[31]_1\(18) => AXILITE_SLAVE_IF_MODULE_n_74,
      \PWDATA_i_reg[31]_1\(17) => AXILITE_SLAVE_IF_MODULE_n_75,
      \PWDATA_i_reg[31]_1\(16) => AXILITE_SLAVE_IF_MODULE_n_76,
      \PWDATA_i_reg[31]_1\(15) => AXILITE_SLAVE_IF_MODULE_n_77,
      \PWDATA_i_reg[31]_1\(14) => AXILITE_SLAVE_IF_MODULE_n_78,
      \PWDATA_i_reg[31]_1\(13) => AXILITE_SLAVE_IF_MODULE_n_79,
      \PWDATA_i_reg[31]_1\(12) => AXILITE_SLAVE_IF_MODULE_n_80,
      \PWDATA_i_reg[31]_1\(11) => AXILITE_SLAVE_IF_MODULE_n_81,
      \PWDATA_i_reg[31]_1\(10) => AXILITE_SLAVE_IF_MODULE_n_82,
      \PWDATA_i_reg[31]_1\(9) => AXILITE_SLAVE_IF_MODULE_n_83,
      \PWDATA_i_reg[31]_1\(8) => AXILITE_SLAVE_IF_MODULE_n_84,
      \PWDATA_i_reg[31]_1\(7) => AXILITE_SLAVE_IF_MODULE_n_85,
      \PWDATA_i_reg[31]_1\(6) => AXILITE_SLAVE_IF_MODULE_n_86,
      \PWDATA_i_reg[31]_1\(5) => AXILITE_SLAVE_IF_MODULE_n_87,
      \PWDATA_i_reg[31]_1\(4) => AXILITE_SLAVE_IF_MODULE_n_88,
      \PWDATA_i_reg[31]_1\(3) => AXILITE_SLAVE_IF_MODULE_n_89,
      \PWDATA_i_reg[31]_1\(2) => AXILITE_SLAVE_IF_MODULE_n_90,
      \PWDATA_i_reg[31]_1\(1) => AXILITE_SLAVE_IF_MODULE_n_91,
      \PWDATA_i_reg[31]_1\(0) => AXILITE_SLAVE_IF_MODULE_n_92,
      Q(0) => axi_wr_rd_cs(1),
      SR(0) => AXILITE_SLAVE_IF_MODULE_n_1,
      apb_penable_sm => apb_penable_sm,
      apb_wr_request => apb_wr_request,
      m_apb_paddr(39 downto 0) => m_apb_paddr(39 downto 0),
      m_apb_pready(2 downto 0) => m_apb_pready(2 downto 0),
      m_apb_pready_2_sp_1 => APB_MASTER_IF_MODULE_n_10,
      m_apb_pwdata(31 downto 0) => m_apb_pwdata(31 downto 0),
      m_apb_pwrite => m_apb_pwrite,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(17 downto 16),
      \s_axi_araddr[16]\ => APB_MASTER_IF_MODULE_n_7,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(17 downto 16),
      \s_axi_awaddr[17]\ => APB_MASTER_IF_MODULE_n_13,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0 => APB_MASTER_IF_MODULE_n_11
    );
AXILITE_SLAVE_IF_MODULE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axilite_sif
     port map (
      D(2) => AXILITE_SLAVE_IF_MODULE_n_12,
      D(1) => AXILITE_SLAVE_IF_MODULE_n_13,
      D(0) => AXILITE_SLAVE_IF_MODULE_n_14,
      E(0) => AXILITE_SLAVE_IF_MODULE_n_93,
      \FSM_onehot_apb_wr_rd_cs_reg[2]\ => AXILITE_SLAVE_IF_MODULE_n_10,
      \FSM_onehot_apb_wr_rd_cs_reg[2]_0\(0) => AXILITE_SLAVE_IF_MODULE_n_16,
      \FSM_onehot_apb_wr_rd_cs_reg[2]_1\ => AXILITE_SLAVE_IF_MODULE_n_19,
      \FSM_onehot_apb_wr_rd_cs_reg[2]_2\ => APB_MASTER_IF_MODULE_n_12,
      \FSM_onehot_apb_wr_rd_cs_reg[2]_3\ => APB_MASTER_IF_MODULE_n_8,
      \FSM_sequential_axi_wr_rd_cs_reg[0]_0\ => AXILITE_SLAVE_IF_MODULE_n_20,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_0\ => MULTIPLEXOR_MODULE_n_5,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_1\ => MULTIPLEXOR_MODULE_n_4,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_2\ => MULTIPLEXOR_MODULE_n_3,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_3\ => MULTIPLEXOR_MODULE_n_2,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i[2]_i_5_4\ => MULTIPLEXOR_MODULE_n_1,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]\ => APB_MASTER_IF_MODULE_n_7,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]_0\ => APB_MASTER_IF_MODULE_n_9,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]_1\ => APB_MASTER_IF_MODULE_n_11,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[0]_2\ => MULTIPLEXOR_MODULE_n_6,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[1]\ => MULTIPLEXOR_MODULE_n_0,
      \GEN_3_SELECT_SLAVE.M_APB_PSEL_i_reg[2]\ => APB_MASTER_IF_MODULE_n_10,
      PENABLE_i_reg => APB_MASTER_IF_MODULE_n_13,
      PENABLE_i_reg_0 => APB_MASTER_IF_MODULE_n_3,
      PENABLE_i_reg_1(2) => APB_MASTER_IF_MODULE_n_4,
      PENABLE_i_reg_1(1) => APB_MASTER_IF_MODULE_n_5,
      PENABLE_i_reg_1(0) => APB_MASTER_IF_MODULE_n_6,
      Q(0) => axi_wr_rd_cs(1),
      SR(0) => AXILITE_SLAVE_IF_MODULE_n_1,
      \S_AXI_RDATA[31]_i_3_0\ => APB_MASTER_IF_MODULE_n_2,
      \S_AXI_RDATA_reg[31]_0\ => \^m_apb_penable\,
      apb_penable_sm => apb_penable_sm,
      apb_wr_request => apb_wr_request,
      m_apb_prdata(31 downto 0) => m_apb_prdata(31 downto 0),
      m_apb_prdata2(31 downto 0) => m_apb_prdata2(31 downto 0),
      m_apb_prdata3(31 downto 0) => m_apb_prdata3(31 downto 0),
      m_apb_pready(2 downto 0) => m_apb_pready(2 downto 0),
      m_apb_pslverr(2 downto 0) => m_apb_pslverr(2 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(39 downto 0) => s_axi_araddr(39 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arvalid_0(0) => AXILITE_SLAVE_IF_MODULE_n_17,
      s_axi_arvalid_1 => AXILITE_SLAVE_IF_MODULE_n_94,
      s_axi_awaddr(39 downto 0) => s_axi_awaddr(39 downto 0),
      \s_axi_awaddr[39]\(39) => AXILITE_SLAVE_IF_MODULE_n_21,
      \s_axi_awaddr[39]\(38) => AXILITE_SLAVE_IF_MODULE_n_22,
      \s_axi_awaddr[39]\(37) => AXILITE_SLAVE_IF_MODULE_n_23,
      \s_axi_awaddr[39]\(36) => AXILITE_SLAVE_IF_MODULE_n_24,
      \s_axi_awaddr[39]\(35) => AXILITE_SLAVE_IF_MODULE_n_25,
      \s_axi_awaddr[39]\(34) => AXILITE_SLAVE_IF_MODULE_n_26,
      \s_axi_awaddr[39]\(33) => AXILITE_SLAVE_IF_MODULE_n_27,
      \s_axi_awaddr[39]\(32) => AXILITE_SLAVE_IF_MODULE_n_28,
      \s_axi_awaddr[39]\(31) => AXILITE_SLAVE_IF_MODULE_n_29,
      \s_axi_awaddr[39]\(30) => AXILITE_SLAVE_IF_MODULE_n_30,
      \s_axi_awaddr[39]\(29) => AXILITE_SLAVE_IF_MODULE_n_31,
      \s_axi_awaddr[39]\(28) => AXILITE_SLAVE_IF_MODULE_n_32,
      \s_axi_awaddr[39]\(27) => AXILITE_SLAVE_IF_MODULE_n_33,
      \s_axi_awaddr[39]\(26) => AXILITE_SLAVE_IF_MODULE_n_34,
      \s_axi_awaddr[39]\(25) => AXILITE_SLAVE_IF_MODULE_n_35,
      \s_axi_awaddr[39]\(24) => AXILITE_SLAVE_IF_MODULE_n_36,
      \s_axi_awaddr[39]\(23) => AXILITE_SLAVE_IF_MODULE_n_37,
      \s_axi_awaddr[39]\(22) => AXILITE_SLAVE_IF_MODULE_n_38,
      \s_axi_awaddr[39]\(21) => AXILITE_SLAVE_IF_MODULE_n_39,
      \s_axi_awaddr[39]\(20) => AXILITE_SLAVE_IF_MODULE_n_40,
      \s_axi_awaddr[39]\(19) => AXILITE_SLAVE_IF_MODULE_n_41,
      \s_axi_awaddr[39]\(18) => AXILITE_SLAVE_IF_MODULE_n_42,
      \s_axi_awaddr[39]\(17) => AXILITE_SLAVE_IF_MODULE_n_43,
      \s_axi_awaddr[39]\(16) => AXILITE_SLAVE_IF_MODULE_n_44,
      \s_axi_awaddr[39]\(15) => AXILITE_SLAVE_IF_MODULE_n_45,
      \s_axi_awaddr[39]\(14) => AXILITE_SLAVE_IF_MODULE_n_46,
      \s_axi_awaddr[39]\(13) => AXILITE_SLAVE_IF_MODULE_n_47,
      \s_axi_awaddr[39]\(12) => AXILITE_SLAVE_IF_MODULE_n_48,
      \s_axi_awaddr[39]\(11) => AXILITE_SLAVE_IF_MODULE_n_49,
      \s_axi_awaddr[39]\(10) => AXILITE_SLAVE_IF_MODULE_n_50,
      \s_axi_awaddr[39]\(9) => AXILITE_SLAVE_IF_MODULE_n_51,
      \s_axi_awaddr[39]\(8) => AXILITE_SLAVE_IF_MODULE_n_52,
      \s_axi_awaddr[39]\(7) => AXILITE_SLAVE_IF_MODULE_n_53,
      \s_axi_awaddr[39]\(6) => AXILITE_SLAVE_IF_MODULE_n_54,
      \s_axi_awaddr[39]\(5) => AXILITE_SLAVE_IF_MODULE_n_55,
      \s_axi_awaddr[39]\(4) => AXILITE_SLAVE_IF_MODULE_n_56,
      \s_axi_awaddr[39]\(3) => AXILITE_SLAVE_IF_MODULE_n_57,
      \s_axi_awaddr[39]\(2) => AXILITE_SLAVE_IF_MODULE_n_58,
      \s_axi_awaddr[39]\(1) => AXILITE_SLAVE_IF_MODULE_n_59,
      \s_axi_awaddr[39]\(0) => AXILITE_SLAVE_IF_MODULE_n_60,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rready_0 => AXILITE_SLAVE_IF_MODULE_n_11,
      s_axi_rready_1 => AXILITE_SLAVE_IF_MODULE_n_95,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      \s_axi_wdata[31]\(31) => AXILITE_SLAVE_IF_MODULE_n_61,
      \s_axi_wdata[31]\(30) => AXILITE_SLAVE_IF_MODULE_n_62,
      \s_axi_wdata[31]\(29) => AXILITE_SLAVE_IF_MODULE_n_63,
      \s_axi_wdata[31]\(28) => AXILITE_SLAVE_IF_MODULE_n_64,
      \s_axi_wdata[31]\(27) => AXILITE_SLAVE_IF_MODULE_n_65,
      \s_axi_wdata[31]\(26) => AXILITE_SLAVE_IF_MODULE_n_66,
      \s_axi_wdata[31]\(25) => AXILITE_SLAVE_IF_MODULE_n_67,
      \s_axi_wdata[31]\(24) => AXILITE_SLAVE_IF_MODULE_n_68,
      \s_axi_wdata[31]\(23) => AXILITE_SLAVE_IF_MODULE_n_69,
      \s_axi_wdata[31]\(22) => AXILITE_SLAVE_IF_MODULE_n_70,
      \s_axi_wdata[31]\(21) => AXILITE_SLAVE_IF_MODULE_n_71,
      \s_axi_wdata[31]\(20) => AXILITE_SLAVE_IF_MODULE_n_72,
      \s_axi_wdata[31]\(19) => AXILITE_SLAVE_IF_MODULE_n_73,
      \s_axi_wdata[31]\(18) => AXILITE_SLAVE_IF_MODULE_n_74,
      \s_axi_wdata[31]\(17) => AXILITE_SLAVE_IF_MODULE_n_75,
      \s_axi_wdata[31]\(16) => AXILITE_SLAVE_IF_MODULE_n_76,
      \s_axi_wdata[31]\(15) => AXILITE_SLAVE_IF_MODULE_n_77,
      \s_axi_wdata[31]\(14) => AXILITE_SLAVE_IF_MODULE_n_78,
      \s_axi_wdata[31]\(13) => AXILITE_SLAVE_IF_MODULE_n_79,
      \s_axi_wdata[31]\(12) => AXILITE_SLAVE_IF_MODULE_n_80,
      \s_axi_wdata[31]\(11) => AXILITE_SLAVE_IF_MODULE_n_81,
      \s_axi_wdata[31]\(10) => AXILITE_SLAVE_IF_MODULE_n_82,
      \s_axi_wdata[31]\(9) => AXILITE_SLAVE_IF_MODULE_n_83,
      \s_axi_wdata[31]\(8) => AXILITE_SLAVE_IF_MODULE_n_84,
      \s_axi_wdata[31]\(7) => AXILITE_SLAVE_IF_MODULE_n_85,
      \s_axi_wdata[31]\(6) => AXILITE_SLAVE_IF_MODULE_n_86,
      \s_axi_wdata[31]\(5) => AXILITE_SLAVE_IF_MODULE_n_87,
      \s_axi_wdata[31]\(4) => AXILITE_SLAVE_IF_MODULE_n_88,
      \s_axi_wdata[31]\(3) => AXILITE_SLAVE_IF_MODULE_n_89,
      \s_axi_wdata[31]\(2) => AXILITE_SLAVE_IF_MODULE_n_90,
      \s_axi_wdata[31]\(1) => AXILITE_SLAVE_IF_MODULE_n_91,
      \s_axi_wdata[31]\(0) => AXILITE_SLAVE_IF_MODULE_n_92,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      s_axi_wvalid_0 => AXILITE_SLAVE_IF_MODULE_n_15
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
MULTIPLEXOR_MODULE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_multiplexor
     port map (
      D(2) => AXILITE_SLAVE_IF_MODULE_n_12,
      D(1) => AXILITE_SLAVE_IF_MODULE_n_13,
      D(0) => AXILITE_SLAVE_IF_MODULE_n_14,
      SR(0) => AXILITE_SLAVE_IF_MODULE_n_1,
      m_apb_psel(2 downto 0) => m_apb_psel(2 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(21 downto 0) => s_axi_araddr(39 downto 18),
      \s_axi_araddr[23]\ => MULTIPLEXOR_MODULE_n_0,
      \s_axi_araddr[23]_0\ => MULTIPLEXOR_MODULE_n_1,
      \s_axi_araddr[30]\ => MULTIPLEXOR_MODULE_n_3,
      \s_axi_araddr[33]\ => MULTIPLEXOR_MODULE_n_2,
      \s_axi_araddr[36]\ => MULTIPLEXOR_MODULE_n_5,
      \s_axi_araddr[38]\ => MULTIPLEXOR_MODULE_n_4,
      s_axi_awaddr(21 downto 0) => s_axi_awaddr(39 downto 18),
      \s_axi_awaddr[30]\ => MULTIPLEXOR_MODULE_n_6
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_apb_paddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_apb_psel : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_apb_penable : out STD_LOGIC;
    m_apb_pwrite : out STD_LOGIC;
    m_apb_pwdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_pready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_apb_prdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_prdata3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_apb_pslverr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_axi_apb_bridge_0_0,axi_apb_bridge,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_apb_bridge,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_m_apb_pprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_apb_pstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute C_APB_NUM_SLAVES : integer;
  attribute C_APB_NUM_SLAVES of U0 : label is 3;
  attribute C_BASEADDR : string;
  attribute C_BASEADDR of U0 : label is "64'b0000000000000000000000000000000010000000000000000000000000000000";
  attribute C_DPHASE_TIMEOUT : integer;
  attribute C_DPHASE_TIMEOUT of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynquplus";
  attribute C_HIGHADDR : string;
  attribute C_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000010000000000000001111111111111111";
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of U0 : label is "axi_apb_bridge_inst";
  attribute C_M_APB_ADDR_WIDTH : integer;
  attribute C_M_APB_ADDR_WIDTH of U0 : label is 40;
  attribute C_M_APB_DATA_WIDTH : integer;
  attribute C_M_APB_DATA_WIDTH of U0 : label is 32;
  attribute C_M_APB_PROTOCOL : string;
  attribute C_M_APB_PROTOCOL of U0 : label is "apb3";
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 40;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_RNG10_BASEADDR : string;
  attribute C_S_AXI_RNG10_BASEADDR of U0 : label is "64'b0000000000000000000000000000000010010000000000000000000000000000";
  attribute C_S_AXI_RNG10_HIGHADDR : string;
  attribute C_S_AXI_RNG10_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000010011111111111111111111111111111";
  attribute C_S_AXI_RNG11_BASEADDR : string;
  attribute C_S_AXI_RNG11_BASEADDR of U0 : label is "64'b0000000000000000000000000000000010100000000000000000000000000000";
  attribute C_S_AXI_RNG11_HIGHADDR : string;
  attribute C_S_AXI_RNG11_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000010101111111111111111111111111111";
  attribute C_S_AXI_RNG12_BASEADDR : string;
  attribute C_S_AXI_RNG12_BASEADDR of U0 : label is "64'b0000000000000000000000000000000010110000000000000000000000000000";
  attribute C_S_AXI_RNG12_HIGHADDR : string;
  attribute C_S_AXI_RNG12_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000010111111111111111111111111111111";
  attribute C_S_AXI_RNG13_BASEADDR : string;
  attribute C_S_AXI_RNG13_BASEADDR of U0 : label is "64'b0000000000000000000000000000000011000000000000000000000000000000";
  attribute C_S_AXI_RNG13_HIGHADDR : string;
  attribute C_S_AXI_RNG13_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000011001111111111111111111111111111";
  attribute C_S_AXI_RNG14_BASEADDR : string;
  attribute C_S_AXI_RNG14_BASEADDR of U0 : label is "64'b0000000000000000000000000000000011010000000000000000000000000000";
  attribute C_S_AXI_RNG14_HIGHADDR : string;
  attribute C_S_AXI_RNG14_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000011011111111111111111111111111111";
  attribute C_S_AXI_RNG15_BASEADDR : string;
  attribute C_S_AXI_RNG15_BASEADDR of U0 : label is "64'b0000000000000000000000000000000011100000000000000000000000000000";
  attribute C_S_AXI_RNG15_HIGHADDR : string;
  attribute C_S_AXI_RNG15_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000011101111111111111111111111111111";
  attribute C_S_AXI_RNG16_BASEADDR : string;
  attribute C_S_AXI_RNG16_BASEADDR of U0 : label is "64'b0000000000000000000000000000000011110000000000000000000000000000";
  attribute C_S_AXI_RNG16_HIGHADDR : string;
  attribute C_S_AXI_RNG16_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000011111111111111111111111111111111";
  attribute C_S_AXI_RNG2_BASEADDR : string;
  attribute C_S_AXI_RNG2_BASEADDR of U0 : label is "64'b0000000000000000000000000000000010000000000000010000000000000000";
  attribute C_S_AXI_RNG2_HIGHADDR : string;
  attribute C_S_AXI_RNG2_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000010000000000000011111111111111111";
  attribute C_S_AXI_RNG3_BASEADDR : string;
  attribute C_S_AXI_RNG3_BASEADDR of U0 : label is "64'b0000000000000000000000000000000010000000000000100000000000000000";
  attribute C_S_AXI_RNG3_HIGHADDR : string;
  attribute C_S_AXI_RNG3_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000010000000000000101111111111111111";
  attribute C_S_AXI_RNG4_BASEADDR : string;
  attribute C_S_AXI_RNG4_BASEADDR of U0 : label is "64'b0000000000000000000000000000000000110000000000000000000000000000";
  attribute C_S_AXI_RNG4_HIGHADDR : string;
  attribute C_S_AXI_RNG4_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000000111111111111111111111111111111";
  attribute C_S_AXI_RNG5_BASEADDR : string;
  attribute C_S_AXI_RNG5_BASEADDR of U0 : label is "64'b0000000000000000000000000000000001000000000000000000000000000000";
  attribute C_S_AXI_RNG5_HIGHADDR : string;
  attribute C_S_AXI_RNG5_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000001001111111111111111111111111111";
  attribute C_S_AXI_RNG6_BASEADDR : string;
  attribute C_S_AXI_RNG6_BASEADDR of U0 : label is "64'b0000000000000000000000000000000001010000000000000000000000000000";
  attribute C_S_AXI_RNG6_HIGHADDR : string;
  attribute C_S_AXI_RNG6_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000001011111111111111111111111111111";
  attribute C_S_AXI_RNG7_BASEADDR : string;
  attribute C_S_AXI_RNG7_BASEADDR of U0 : label is "64'b0000000000000000000000000000000001100000000000000000000000000000";
  attribute C_S_AXI_RNG7_HIGHADDR : string;
  attribute C_S_AXI_RNG7_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000001101111111111111111111111111111";
  attribute C_S_AXI_RNG8_BASEADDR : string;
  attribute C_S_AXI_RNG8_BASEADDR of U0 : label is "64'b0000000000000000000000000000000001110000000000000000000000000000";
  attribute C_S_AXI_RNG8_HIGHADDR : string;
  attribute C_S_AXI_RNG8_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000001111111111111111111111111111111";
  attribute C_S_AXI_RNG9_BASEADDR : string;
  attribute C_S_AXI_RNG9_BASEADDR of U0 : label is "64'b0000000000000000000000000000000010000000000000000000000000000000";
  attribute C_S_AXI_RNG9_HIGHADDR : string;
  attribute C_S_AXI_RNG9_HIGHADDR of U0 : label is "64'b0000000000000000000000000000000010001111111111111111111111111111";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of m_apb_penable : signal is "xilinx.com:interface:apb:1.0 APB_M PENABLE, xilinx.com:interface:apb:1.0 APB_M2 PENABLE, xilinx.com:interface:apb:1.0 APB_M3 PENABLE";
  attribute x_interface_info of m_apb_pwrite : signal is "xilinx.com:interface:apb:1.0 APB_M PWRITE, xilinx.com:interface:apb:1.0 APB_M2 PWRITE, xilinx.com:interface:apb:1.0 APB_M3 PWRITE";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME ACLK, ASSOCIATED_BUSIF AXI4_LITE:APB_M:APB_M2:APB_M3:APB_M4:APB_M5:APB_M6:APB_M7:APB_M8:APB_M9:APB_M10:APB_M11:APB_M12:APB_M13:APB_M14:APB_M15:APB_M16, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 ARESETN RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE WVALID";
  attribute x_interface_info of m_apb_paddr : signal is "xilinx.com:interface:apb:1.0 APB_M PADDR, xilinx.com:interface:apb:1.0 APB_M2 PADDR, xilinx.com:interface:apb:1.0 APB_M3 PADDR";
  attribute x_interface_info of m_apb_prdata : signal is "xilinx.com:interface:apb:1.0 APB_M PRDATA";
  attribute x_interface_info of m_apb_prdata2 : signal is "xilinx.com:interface:apb:1.0 APB_M2 PRDATA";
  attribute x_interface_info of m_apb_prdata3 : signal is "xilinx.com:interface:apb:1.0 APB_M3 PRDATA";
  attribute x_interface_info of m_apb_pready : signal is "xilinx.com:interface:apb:1.0 APB_M PREADY [0:0] [0:0], xilinx.com:interface:apb:1.0 APB_M2 PREADY [0:0] [1:1], xilinx.com:interface:apb:1.0 APB_M3 PREADY [0:0] [2:2]";
  attribute x_interface_info of m_apb_psel : signal is "xilinx.com:interface:apb:1.0 APB_M PSEL [0:0] [0:0], xilinx.com:interface:apb:1.0 APB_M2 PSEL [0:0] [1:1], xilinx.com:interface:apb:1.0 APB_M3 PSEL [0:0] [2:2]";
  attribute x_interface_info of m_apb_pslverr : signal is "xilinx.com:interface:apb:1.0 APB_M PSLVERR [0:0] [0:0], xilinx.com:interface:apb:1.0 APB_M2 PSLVERR [0:0] [1:1], xilinx.com:interface:apb:1.0 APB_M3 PSLVERR [0:0] [2:2]";
  attribute x_interface_info of m_apb_pwdata : signal is "xilinx.com:interface:apb:1.0 APB_M PWDATA, xilinx.com:interface:apb:1.0 APB_M2 PWDATA, xilinx.com:interface:apb:1.0 APB_M3 PWDATA";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME AXI4_LITE, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 200000000, ID_WIDTH 0, ADDR_WIDTH 40, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 AXI4_LITE WDATA";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_apb_bridge
     port map (
      m_apb_paddr(39 downto 0) => m_apb_paddr(39 downto 0),
      m_apb_penable => m_apb_penable,
      m_apb_pprot(2 downto 0) => NLW_U0_m_apb_pprot_UNCONNECTED(2 downto 0),
      m_apb_prdata(31 downto 0) => m_apb_prdata(31 downto 0),
      m_apb_prdata10(31 downto 0) => B"00000000000000000000000000000000",
      m_apb_prdata11(31 downto 0) => B"00000000000000000000000000000000",
      m_apb_prdata12(31 downto 0) => B"00000000000000000000000000000000",
      m_apb_prdata13(31 downto 0) => B"00000000000000000000000000000000",
      m_apb_prdata14(31 downto 0) => B"00000000000000000000000000000000",
      m_apb_prdata15(31 downto 0) => B"00000000000000000000000000000000",
      m_apb_prdata16(31 downto 0) => B"00000000000000000000000000000000",
      m_apb_prdata2(31 downto 0) => m_apb_prdata2(31 downto 0),
      m_apb_prdata3(31 downto 0) => m_apb_prdata3(31 downto 0),
      m_apb_prdata4(31 downto 0) => B"00000000000000000000000000000000",
      m_apb_prdata5(31 downto 0) => B"00000000000000000000000000000000",
      m_apb_prdata6(31 downto 0) => B"00000000000000000000000000000000",
      m_apb_prdata7(31 downto 0) => B"00000000000000000000000000000000",
      m_apb_prdata8(31 downto 0) => B"00000000000000000000000000000000",
      m_apb_prdata9(31 downto 0) => B"00000000000000000000000000000000",
      m_apb_pready(2 downto 0) => m_apb_pready(2 downto 0),
      m_apb_psel(2 downto 0) => m_apb_psel(2 downto 0),
      m_apb_pslverr(2 downto 0) => m_apb_pslverr(2 downto 0),
      m_apb_pstrb(3 downto 0) => NLW_U0_m_apb_pstrb_UNCONNECTED(3 downto 0),
      m_apb_pwdata(31 downto 0) => m_apb_pwdata(31 downto 0),
      m_apb_pwrite => m_apb_pwrite,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(39 downto 0) => s_axi_araddr(39 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(39 downto 0) => s_axi_awaddr(39 downto 0),
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
