--------------------------------------------------------
-- Module Name: lab3_user_logic voor AXI LED-interface
-- 19/7/2014 Piet Coussens
-- Develloped from an example at the Xilinx University Program
--------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity lab3_user_logic is
port(
    S_AXI_ACLK : in std_logic; 
    slv_reg_wren : in std_logic;
    axi_awaddr : in std_logic_vector (1 downto 0);
    S_AXI_WDATA : in std_logic_vector (31 downto 0);
    S_AXI_ARESETN : in std_logic;
    LED : out std_logic_vector (7 downto 0)
    );
end entity lab3_user_logic;
      
architecture RTL of lab3_user_logic is
	begin
	process( S_AXI_ACLK ) is
        begin
          if (rising_edge (S_AXI_ACLK)) then
            if ( S_AXI_ARESETN = '0' ) then
              LED  <= (others => '0');
            else
              if (slv_reg_wren = '1' AND axi_awaddr = "00") then
                  LED <= S_AXI_WDATA(7 downto 0);     
              end if;   
            end if;
          end if;
        end process;
	end architecture RTL;
