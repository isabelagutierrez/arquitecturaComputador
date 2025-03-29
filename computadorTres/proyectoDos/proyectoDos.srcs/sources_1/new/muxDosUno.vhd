----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.03.2025 11:06:00
-- Design Name: 
-- Module Name: muxDosUno - Behavioral
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

entity muxDosUno is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           Sel : in STD_LOGIC;
           Mout : out STD_LOGIC_VECTOR (31 downto 0));
end muxDosUno;

architecture Behavioral of muxDosUno is

begin
    Mout <= A when Sel = '0' else B;

end Behavioral;
