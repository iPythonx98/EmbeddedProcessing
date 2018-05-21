 -----------------------------------------------------------------------------
 -- File           : ColorGenerator.vhd
 -----------------------------------------------------------------------------
 -- Description    : Module to generate the color signals for a VGA display 
 -- in 800x640 mode. It takes the dip switches 11 to 0 and sets the screen
 -- to the desired color with a white border
 -- in 12 bit color mode ( 4 bit Blue, 4 bit green, 4 bit red)
 -- --------------------------------------------------------------------------
 -- Name           : 
 -- Group          : 
 -----------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE IEEE.std_logic_signed.all;

ENTITY ColorGen IS
  generic(
    H_total          : integer;
    H_active         : integer;
    H_fp             : integer;
    H_sync           : integer;
    H_bp             : integer;
    V_total          : integer;
    V_active         : integer;
    V_fp             : integer;
    V_sync           : integer;
    V_bp             : integer
    );
  port(
    Clk                 : in std_logic;
    Ver_count           : in std_logic_vector(10 downto 0);
    Hor_count           : in std_logic_vector(10 downto 0);
    RedOut              : out std_logic_vector(3 downto 0);
    GreenOut            : out std_logic_vector(3 downto 0);
    BlueOut             : out std_logic_vector(3 downto 0);
    Color_in  		  : in std_logic_vector (11 downto 0)	-- 4 bit blue, 4 bit green, 4 bit red
    );
end ColorGen;

ARCHITECTURE behav OF Colorgen IS

  constant Line0_ver_count: integer := V_sync+V_bp;
  constant Col0_hor_count : integer := H_sync+H_bp; 
  signal Draw_border : std_logic;

Begin

GenDraw_border : process(ver_count, hor_count)
begin
  if to_integer(unsigned(ver_count))=Line0_ver_count or 
     to_integer(unsigned(ver_count))=Line0_ver_count+V_active-1 or
     to_integer(unsigned(hor_count))=Col0_hor_count or 
     to_integer(unsigned(hor_count))=Col0_hor_count+H_active-1 
  then
    Draw_border <= '1';
  else
    Draw_border <= '0';
  end if;
end process GenDraw_border;

SetColor : process (Draw_border, Color_in)
  Begin
  if Draw_border = '1' then
    RedOut   <= "1111";
    GreenOut <= "1111";
    BlueOut  <= "1111";
  else
    RedOut   <= Color_in ( 3 downto 0);
    GreenOut <= Color_in ( 7 downto 4);
    BlueOut  <= Color_in (11 downto 8);
  end if;
end process SetColor;

end architecture behav;
