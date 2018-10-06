library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--used for sound generating uses input clock of 50mHz
entity SoundOutput is
	port(	CLK,Reset:in std_logic;
			OMain,OBG:out std_logic);
	end entity;

architecture Behavioral of SoundOutput is
component SoundGen is
	port(	CLK,Reset:in std_logic;
			Divisor:in integer range 0 to 31; 
			O:out std_logic);
	end component;
component SoundCLK is
	port(	CLK,Reset:in std_logic;
			O:out std_logic);
	end component;

component SoundLoopBG is
	port(	CLK,Reset,Pause:in std_logic;
			Divisor:out integer range 0 to 31);
	end component;
component SoundLoop is
	port(	CLK,Reset,Pause:in std_logic;
			Divisor:out integer range 0 to 31);
	end component;
component BeatCLK is
	port(	CLK,Reset:in std_logic;
			O,Pause:out std_logic);
end component;

signal SCLK,BCLK: std_logic;
signal Divisor,Divisor2: integer range 0 to 31;
signal Pause,o1,o2: std_logic;
begin
C0: SoundCLK 		port map(CLK,Reset,SCLK);
C1: SoundGen 		port map(SCLK,Reset,Divisor,o1);
C2: SoundGen 		port map(SCLK,Reset,Divisor2,o2);
S0: SoundLoop		port map(BCLK,Reset,Pause,Divisor);
S1: SoundLoopBG	port map(BCLK,Reset,Pause,Divisor2);
B3: BeatCLK			port map(CLK,Reset,BCLK,Pause);
OMain <= o1;
OBG <=o2;
end Behavioral;

