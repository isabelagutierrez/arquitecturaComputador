----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.03.2025 11:20:12
-- Design Name: 
-- Module Name: muxTresUno1B - Behavioral
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

entity muxTresUno1B is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           C : in STD_LOGIC_VECTOR (27 downto 0);
           sel : in STD_LOGIC_VECTOR(1 downto 0);
           Mout : out STD_LOGIC_VECTOR (31 downto 0));
           
end muxTresUno1B;

architecture Behavioral of muxTresUno1B is

begin


end Behavioral;
