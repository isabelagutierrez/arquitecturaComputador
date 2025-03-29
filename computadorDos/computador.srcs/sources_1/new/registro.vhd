----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.03.2025 11:06:00
-- Design Name: 
-- Module Name: registro - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registro is
    Port ( dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataOut : out STD_LOGIC_VECTOR (31 downto 0);
           reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           enable : in STD_LOGIC);
end registro;

architecture Behavioral of registro is

begin

    process(clock, reset, enable)
    begin
        if reset = '1' then
            dataOut <= x"00000000";
        elsif(clock' event and clock = '1' and enable = '1') then
            dataOut <= dataIn;
        end if;
    end process;

end Behavioral;
