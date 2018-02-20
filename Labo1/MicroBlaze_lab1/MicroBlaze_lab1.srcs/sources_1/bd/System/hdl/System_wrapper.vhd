--Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2014.2 (win64) Build 932637 Wed Jun 11 13:30:22 MDT 2014
--Date        : Tue Feb 20 16:51:53 2018
--Host        : LAPTOP-9JFIOBFO running 64-bit major release  (build 9200)
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
    btnCpuReset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    uart_rxd : in STD_LOGIC;
    uart_txd : out STD_LOGIC
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
