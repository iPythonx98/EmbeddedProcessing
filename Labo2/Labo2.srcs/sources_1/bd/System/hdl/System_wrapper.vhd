--Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2014.2 (win64) Build 932637 Wed Jun 11 13:33:10 MDT 2014
--Date        : Tue Mar 20 15:43:31 2018
--Host        : PCGENT12297 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target System_wrapper.bd
--Design      : System_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity System_wrapper is
  port (
    btnCpuReset : in STD_LOGIC;
    btns_5bit_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_in1 : in STD_LOGIC;
    sw_8bit_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    uart_rxd : in STD_LOGIC;
    uart_txd : out STD_LOGIC
  );
end System_wrapper;

architecture STRUCTURE of System_wrapper is
  component System is
  port (
    uart_rxd : in STD_LOGIC;
    uart_txd : out STD_LOGIC;
    btnCpuReset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    sw_8bit_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    btns_5bit_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component System;
begin
System_i: component System
    port map (
      btnCpuReset => btnCpuReset,
      btns_5bit_tri_i(4 downto 0) => btns_5bit_tri_i(4 downto 0),
      clk_in1 => clk_in1,
      sw_8bit_tri_i(7 downto 0) => sw_8bit_tri_i(7 downto 0),
      uart_rxd => uart_rxd,
      uart_txd => uart_txd
    );
end STRUCTURE;
