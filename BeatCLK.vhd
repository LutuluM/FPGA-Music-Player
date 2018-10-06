library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BeatCLK is
	port(	CLK,Reset:in std_logic;
			O:out std_logic);
end entity;

architecture Behavioral of BeatCLK is
signal W:std_logic;
signal count: integer :=0;
begin
	O <= W;
	process(CLK,Reset) begin
		if (Reset = '1') then
			W<= '0';
			count <= 0;
		elsif rising_edge(CLK) then
			if count >=(3125000*2)-1 then--returns 8Hz clock
				W <= not W;
				count <= 0;
			else
				count <= count + 1;
			end if;
		end if;	
	end process;
end Behavioral;

