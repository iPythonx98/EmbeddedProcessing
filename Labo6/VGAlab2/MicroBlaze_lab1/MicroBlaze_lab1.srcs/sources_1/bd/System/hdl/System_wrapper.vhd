--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
--Date        : Fri May 25 12:02:38 2018
--Host        : DESKTOP-ATHB2LP running 64-bit major release  (build 9200)
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
    clk_in1 : in STD_LOGIC;
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
    clk_in1 : in STD_LOGIC
  );
  end component System;
begin
System_i: component System
     port map (
      btnCpuReset => btnCpuReset,
      clk_in1 => clk_in1,
      uart_rxd => uart_rxd,
      uart_txd => uart_txd
    );
end STRUCTURE;
