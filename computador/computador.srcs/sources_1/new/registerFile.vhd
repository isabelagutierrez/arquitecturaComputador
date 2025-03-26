----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.03.2025 12:05:30
-- Design Name: 
-- Module Name: registerFile - Behavioral
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

entity registerFile is
    Port ( clock : in STD_LOGIC;
           write : in STD_LOGIC;
           addressUno : in STD_LOGIC_VECTOR (4 downto 0);
           addressDos : in STD_LOGIC_VECTOR (4 downto 0);
           addressTres : in STD_LOGIC_VECTOR (4 downto 0);
           dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataOutUno : out STD_LOGIC_VECTOR (31 downto 0);
           dataOutDos : out STD_LOGIC_VECTOR (31 downto 0));
end registerFile;

architecture Behavioral of registerFile is

begin


end Behavioral;
