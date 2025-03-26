----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.03.2025 10:56:32
-- Design Name: 
-- Module Name: aluControl - Behavioral
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

entity aluControl is
    Port ( aluOp : in STD_LOGIC_VECTOR (2 downto 0);
           funcion : in STD_LOGIC_VECTOR (5 downto 0);
           operation : out STD_LOGIC_VECTOR (3 downto 0));
end aluControl;

architecture Behavioral of aluControl is

signal funcionOp : std_logic_vector (3 downto 0);

begin

    with aluOp select
        operation <= "0010" when "00",
                     "0110" when "01",
                     funcionOp when "10",
                     "0010" when others;
                     
    with funcion select
        funcionOp <= "0010" when "100000",
                     "0110" when "100010",
                     "0000" when "100100",
                     "0001" when "100101",
                     "0111" when "101010",
                     "0010" when others;

end Behavioral;
