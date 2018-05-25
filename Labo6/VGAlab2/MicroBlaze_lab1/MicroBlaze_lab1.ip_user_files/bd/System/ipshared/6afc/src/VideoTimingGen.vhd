 -----------------------------------------------------------------------------
 -- File           : VideoTimingGen.vhd
 -----------------------------------------------------------------------------
 -- Description    : VHDL entity and architecture for VideoTimingGen
 -- --------------------------------------------------------------------------
 -- Author         : Geert Vanwijnsberhge (IMEC) / Piet Coussens
 -- Date           : 10/8/2014
 -- Version        : 2.0
 -- Change history : 
 -----------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;

ENTITY VideoTimingGen IS
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
    Clk           : in std_logic;  
    Clk_en        : in std_logic; 
    Reset_n       : in std_logic; -- synchronous active low
    Hsync         : out std_logic;
    Vsync         : out std_logic;
    Hcount        :	out std_logic_vector(10 downto 0);
    Vcount        : out std_logic_vector(10 downto 0);
    Start_video   : out std_logic;
    Video_on      : out std_logic
    );
end VideoTimingGen;

architecture behav of VideoTimingGen is
  signal video_on_h, video_on_v : std_logic;
  signal hcount_sig, vcount_sig : unsigned(10 downto 0);  
begin

  --Generate Horizontal and Vertical counters
  --Sequential process
  process(Clk)
  begin
  if rising_edge(Clk) then
    if Reset_n = '0' then
      hcount_sig        <= (others => '0');
      vcount_sig        <= (others => '0');     
    elsif Clk_en = '1' then 
      -- calculation of hcount_sig    
      if (hcount_sig >= H_total-1) then  
	    hcount_sig <= (others => '0');
      else
	    hcount_sig <= hcount_sig + 1;
      end if;
      -- calculation of vcount_sig
      if (hcount_sig = H_total-1) then         
        if (vcount_sig >= V_total-1) then         
          vcount_sig <= (others => '0');
        else 
          vcount_sig <= vcount_sig + 1;
        end if;
      end if;
    end if;
  end if;
  end process;
   
  --Generate Horizontal Sync Signal using hcount_sig
  --Combinatorial process
  --not spike free!
  process(hcount_sig)
  begin      
    if  (hcount_sig < H_sync)  then
      Hsync <= '0';
    else
	  Hsync <= '1';
    end if;
  end process;
  
  --Generate Vertical Sync Signal using vcount_sig
  --Combinatorial process
  --not spike free!
  process(vcount_sig)
  begin 	  
    if  (vcount_sig < V_sync )  then                                              
      Vsync <= '0';
    else
      Vsync <= '1';
    end if;
  end process;
  
  --Generate Video_on Screen Signals for Pixel Data
  --Combinatorial process
  --not spike free!
  process(hcount_sig,vcount_sig)
  begin
      --video_on_h
      if (hcount_sig >= H_sync + H_bp ) and (hcount_sig < H_sync + H_bp + H_active) then
        video_on_h <= '1';
      else
        video_on_h <= '0';
      end if;
      --video_on_v
      if (vcount_sig >= V_sync + V_bp)  and (vcount_sig < V_sync + V_bp + V_active) then
        video_on_v <= '1'; 
      else
        video_on_v <= '0';
      end if;
   end process;
  
  --Generate Start_video puls
  --not spike free!
  --Combinatorial process
  process(hcount_sig,vcount_sig)
  begin  
      if (hcount_sig = H_sync + H_bp) and (vcount_sig = V_sync + V_bp) then
        Start_video <= '1';
      else
        Start_video <= '0';
      end if;
  end process;
    
  --Concurrent assignment
  Video_on     <= video_on_H AND video_on_V;

  --Cast of unsigned to std_logic_vector
  Hcount        <= std_logic_vector(hcount_sig);
  Vcount        <= std_logic_vector(vcount_sig);
  
end behav;
