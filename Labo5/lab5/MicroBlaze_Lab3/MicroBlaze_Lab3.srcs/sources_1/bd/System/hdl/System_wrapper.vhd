--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
--Date        : Mon May 21 14:19:22 2018
--Host        : DESKTOP-A3VP532 running 64-bit major release  (build 9200)
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
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
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
    sw_8bit_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    btns_5bit_tri_i : in STD_LOGIC_VECTOR ( 4 downto 0 );
    btnCpuReset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component System;
begin
System_i: component System
     port map (
      LED(7 downto 0) => LED(7 downto 0),
      btnCpuReset => btnCpuReset,
      btns_5bit_tri_i(4 downto 0) => btns_5bit_tri_i(4 downto 0),
      clk_in1 => clk_in1,
      sw_8bit_tri_i(7 downto 0) => sw_8bit_tri_i(7 downto 0),
      uart_rxd => uart_rxd,
      uart_txd => uart_txd
    );
end STRUCTURE;
