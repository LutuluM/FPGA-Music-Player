library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SoundGen is
	port(	CLK,Reset:in std_logic;
			Divisor:in integer range 0 to 63; 
			O:out std_logic);
end entity;

architecture Behavioral of SoundGen is
signal W:std_logic;
signal count: integer :=0;
begin
	O <= W;
	process(CLK,Reset) begin
		if (Reset = '1') then
			W<= '0';
			count <= 0;
		elsif rising_edge(CLK) then
			if count>=(Divisor) then--original clk divided by 2 plus 1 will give 1hz
				W <= not W;
				count <= 0;
			else
				count <= count + 1;
			end if;
		end if;	
	end process;
end Behavioral;

