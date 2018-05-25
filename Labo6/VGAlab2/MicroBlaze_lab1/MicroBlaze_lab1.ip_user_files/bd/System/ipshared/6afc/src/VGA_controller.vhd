 -----------------------------------------------------------------------------
 -- File           : VGA_controller.vhd
 -----------------------------------------------------------------------------
 -- Description    : Module to control a VGA display in 800x640 mode
 -- The screen colors are determined by the signal COLOR_CONTROL (11 downto 0)
 -- in 12 bit color mode: bit(11 downto 8) Blue, bit(7 downto 4)  green, bit(3 downto 0) red
 -- Origial project adapted for ues with Vivado Block Design component
 -- (C) Piet Coussens, university college Odisee, 2014
 -- --------------------------------------------------------------------------
 -- Name           : 
 -- Group          : 
 -----------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE IEEE.std_logic_signed.all;

ENTITY VGA_controller_ip IS
port(
  VGA_CLOCK_IN        : in std_logic;
  VGA_VSYNCH          : out std_logic;
  VGA_HSYNCH          : out std_logic;
  VGA_OUT_RED         : out std_logic_vector(3 downto 0);
  VGA_OUT_GREEN       : out std_logic_vector(3 downto 0);
  VGA_OUT_BLUE        : out std_logic_vector(3 downto 0);
  COLOR_CONTROL_IN	  : in std_logic_vector (11 downto 0)	-- 4 bit blue, 4 bit green, 4 bit red
);
end VGA_controller_ip;

ARCHITECTURE behav OF VGA_controller_ip IS

-- VGA definition constants, can be changed to accomodate other resolutions
-- resolution   : 800 x 600
-- refresh rate : 72 Hz
-- pixel clock  : 50 MHz

  constant SYSTEM_CLOCK_PERIOD : time     := 10 ns;  -- 100 MHz system clock
  constant PixClkPeriod 		: time    := 20 ns; -- for simulation only

  -- VGA controller screen parameters
  constant GEN_H_total      	: integer := 1040;
  constant GEN_H_active     	: integer := 800;
  constant GEN_H_fp         	: integer := 56;
  constant GEN_H_sync       	: integer := 120;
  constant GEN_H_bp         	: integer := 64;
  
  constant GEN_V_total      	: integer := 666;
  constant GEN_V_active     	: integer := 600;
  constant GEN_V_fp         	: integer := 37;
  constant GEN_V_sync       	: integer := 6;
  constant GEN_V_bp         	: integer := 23;
  
  -- Clock generator parameters
  constant GEN_Clk_Div			: integer := 1;
  constant GEN_ClkFbOut_Mult	: real    := 10.000;
  constant GEN_ClkOut0_div		: real    := 20.000;

  
  component VideoTimingGen 
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
    Clk            : in std_logic; 
    Clk_en         : in std_logic; 
    Reset_n        : in std_logic; 
    Hsync          : out std_logic;
    Vsync          : out std_logic;
    Hcount         : out std_logic_vector(10 downto 0);
    Vcount         : out std_logic_vector(10 downto 0);
    Start_video    : out std_logic;
    Video_on       : out std_logic
    );
  end component;
  
  component ClkAndResetGen
  generic(
    Clk_Div         : integer;
    ClkFbOut_Mult   : real;
    ClkOut0_div     : real
  );
  port(
    SYSTEM_CLOCK     : in std_logic;  -- 100 MHz clock
    Clk              : out std_logic; 
    Reset_n          : out std_logic  -- active low reset
  );
  end component; 
   
  component ColorGen 
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
    Color_in			: in std_logic_vector (11 downto 0)	-- 4 bit blue, 4 bit green, 4 bit red
  );
  end component; 
  
  signal Clk              : std_logic;
  signal Reset_n          : std_logic;
  signal Hsync            : std_logic;
  signal Vsync            : std_logic;  
  signal start_video      : std_logic;
  signal hor_count        : std_logic_vector(10 downto 0);
  signal ver_count        : std_logic_vector(10 downto 0);
  signal Video_on         : std_logic; 
  signal Red_out          : std_logic_vector(3 downto 0);  
  signal Green_out        : std_logic_vector(3 downto 0);  
  signal Blue_out         : std_logic_vector(3 downto 0);  
  constant zero           : std_logic := '0';
  constant one            : std_logic := '1';
 
begin

  U1 : ClkAndResetGen
  generic map (
    Clk_Div       => GEN_Clk_Div,
    ClkFbOut_Mult => GEN_ClkFbOut_Mult,
    ClkOut0_div   => GEN_ClkOut0_div
  )
  port map (
    SYSTEM_CLOCK => VGA_CLOCK_IN,
    Clk          => Clk,
    Reset_n      => Reset_n
  );
       
  U2 : VideoTimingGen 
  generic map (
    H_total        => GEN_H_total,
    H_active       => GEN_H_active,
    H_fp           => GEN_H_fp,
    H_sync         => GEN_H_sync,
    H_bp           => GEN_H_bp,
    V_total        => GEN_V_total,
    V_active       => GEN_V_active,
    V_fp           => GEN_V_fp,
    V_sync         => GEN_V_sync,
    V_bp           => GEN_V_bp
    )
  port map (
    Clk            =>  Clk,           
    Clk_en         =>  one,       
    Reset_n        =>  Reset_n,        
    Hsync          =>  Hsync,
    Vsync          =>  Vsync,
    Hcount         =>  hor_count,
    Vcount         =>  ver_count,
    Start_video    =>  Start_video,   
    Video_on       =>  Video_on  
   );

  U3 : ColorGen
  generic map (
    H_total        => GEN_H_total,
    H_active       => GEN_H_active,
    H_fp           => GEN_H_fp,
    H_sync         => GEN_H_sync,
    H_bp           => GEN_H_bp,
    V_total        => GEN_V_total,
    V_active       => GEN_V_active,
    V_fp           => GEN_V_fp,
    V_sync         => GEN_V_sync,
    V_bp           => GEN_V_bp
    )
  port map (
  clk             =>  Clk,
  ver_count       =>  ver_count,
  Hor_count       =>  hor_count,
  RedOut          =>  Red_Out,
  GreenOut        =>  Green_Out,
  BlueOut         =>  Blue_Out,
  Color_in		  =>  COLOR_CONTROL_IN
  );
    
VGA_control: process(Clk)
  begin
    if falling_edge(Clk) then
      if Video_on = '1' then
		-- draw background
  		VGA_OUT_RED    <= Red_Out;  
  		VGA_OUT_GREEN  <= Green_Out;  
  		VGA_OUT_BLUE   <= Blue_Out;     
      else
  	    -- suppress colors when not visible (to avoid smearing)
  	    VGA_OUT_RED    <= (others => '0');  
  	    VGA_OUT_GREEN  <= (others => '0');  
  	    VGA_OUT_BLUE   <= (others => '0');     
      end if;
      -- Resync timing signals Hsync/Vsync to ports
      VGA_HSYNCH <= Hsync;
      VGA_VSYNCH <= Vsync;
    end if;                                
  end process VGA_control;
  
  end architecture behav;