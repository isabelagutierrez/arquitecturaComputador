----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.03.2025 11:06:00
-- Design Name: 
-- Module Name: muxCuatroUnoCincoB - Behavioral
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

entity muxCuatroUnoCincoB is
    Port ( A : in STD_LOGIC_VECTOR (4 downto 0);
           B : in STD_LOGIC_VECTOR (4 downto 0);
           C : in STD_LOGIC_VECTOR (4 downto 0);
           D : in STD_LOGIC_VECTOR (4 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           Mout : out STD_LOGIC_VECTOR (4 downto 0));
end muxCuatroUnoCincoB;

architecture Behavioral of muxCuatroUnoCincoB is

begin
    with Sel select
        Mout <= A when "00",
                B when "01",
                C when "10",
                D when others;

end Behavioral;
