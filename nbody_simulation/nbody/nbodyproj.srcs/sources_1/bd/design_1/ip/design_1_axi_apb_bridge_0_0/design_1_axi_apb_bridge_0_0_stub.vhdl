-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sun Jul 27 12:44:46 2025
-- Host        : call-me-utka running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/call_me_utka/Documents/Projects/aes-ultra96-v2-playground/nbody_simulation/nbody/nbodyproj.srcs/sources_1/bd/design_1/ip/design_1_axi_apb_bridge_0_0/design_1_axi_apb_bridge_0_0_stub.vhdl
-- Design      : design_1_axi_apb_bridge_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_axi_apb_bridge_0_0 is
  Port ( 
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

end design_1_axi_apb_bridge_0_0;

architecture stub of design_1_axi_apb_bridge_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axi_awaddr[39:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[39:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,m_apb_paddr[39:0],m_apb_psel[2:0],m_apb_penable,m_apb_pwrite,m_apb_pwdata[31:0],m_apb_pready[2:0],m_apb_prdata[31:0],m_apb_prdata2[31:0],m_apb_prdata3[31:0],m_apb_pslverr[2:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "axi_apb_bridge,Vivado 2018.3";
begin
end;
