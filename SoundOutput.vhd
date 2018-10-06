library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--used for sound generating uses input clock of 50mHz
entity SoundOutput is
	port(	CLK,Reset:in std_logic;
			O:out std_logic);
	end entity;

architecture Behavioral of SoundOutput is
component SoundGen is
	port(	CLK,Reset:in std_logic;
			Divisor:in integer range 0 to 63; 
			O:out std_logic);
	end component;
component SoundCLK is
	port(	CLK,Reset:in std_logic;
			O:out std_logic);
	end component;

component SoundLoop is
	port(	CLK,Reset:in std_logic;
			Divisor:out integer range 0 to 63);
	end component;
component BeatCLK is
	port(	CLK,Reset:in std_logic;
			O:out std_logic);
end component;

signal SCLK,BCLK: std_logic;
signal Divisor: integer range 0 to 63;

begin
C0: SoundCLK 	port map(CLK,Reset,SCLK);
C1: SoundGen 	port map(SCLK,Reset,Divisor,O);
C2: SoundLoop	port map(BCLK,Reset,Divisor);
C3: BeatCLK		port map(CLK,Reset,BCLK);

end Behavioral;

