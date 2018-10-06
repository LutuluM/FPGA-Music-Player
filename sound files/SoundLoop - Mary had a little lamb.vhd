library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.Numeric_std.all;

--used for sound generating uses input clock of 50mHz
entity SoundLoop is
	port(	CLK,Reset:in std_logic;
			Divisor:out integer range 0 to 63);
	end entity;

architecture Behavioral of SoundLoop is

signal Count: integer range 0 to 31 := 0;
begin

process(CLK,Reset) begin
	if(Reset = '1') then
		Count <= 0;
	elsif(rising_edge(CLK)) then
		Count <= Count + 1;
	end if;
end process;
process(Count) begin
case Count is
	when 0 =>
		Divisor <= 17;
	when 1 =>
		Divisor <= 18;
	when 2 =>
		Divisor <= 19;
	when 3 =>
		Divisor <= 18;
	when 4 =>
		Divisor <= 17;
	when 5 =>
		Divisor <= 17;
	when 6 =>
		Divisor <= 17;
	when 7 =>
		Divisor <= 18;
	when 8 =>
		Divisor <= 18;
	when 9 =>
		Divisor <= 18;
	when 10 =>
		Divisor <= 17;
	when 11 =>
		Divisor <= 17;
	when 12 =>
		Divisor <= 17;
	when 13 =>
		Divisor <= 0;
	when 14 =>
		Divisor <= 17;
	when 15 =>
		Divisor <= 18;
	when 16 =>
		Divisor <= 19;
	when 17 =>
		Divisor <= 18;
	when 18 =>
		Divisor <= 17;
	when 19 =>
		Divisor <= 17;
	when 20 =>
		Divisor <= 17;
	when 21 =>
		Divisor <= 18;
	when 22 =>
		Divisor <= 18;
	when 23 =>
		Divisor <= 17;
	when 24 =>
		Divisor <= 18;
	when 25 =>
		Divisor <= 19;
	when 26 =>
		Divisor <= 19;
	when 27 =>
		Divisor <= 0;
	when 28 =>
		Divisor <= 0;
	when 29 =>
		Divisor <= 0;
	when 30 =>
		Divisor <= 0;
	when 31 =>
		Divisor <= 0;
end case;
end process;
end Behavioral;

