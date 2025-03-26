----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.03.2025 10:25:52
-- Design Name: 
-- Module Name: aluComputador - Behavioral
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
use ieee.std_logic_signed.all;

entity aluComputador is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           operation : in STD_LOGIC_VECTOR (3 downto 0);
           result : out STD_LOGIC_VECTOR (31 downto 0);
           zeroFlag : out STD_LOGIC);
end aluComputador;

architecture Behavioral of aluComputador is

signal andOp, orOp, addOp, subOp, sltOp, tempResult : std_logic_vector (31 downto 0);

begin

    andOp <= A and B;
    orOp <= A or B;
    addOp <= A + B;
    subOp <= A - B;
    sltOp <= x"00000001" when A < B else x"00000000";
    
--    result <= andOp when operation = "0000" else
--              orOp when operation = "0001" else
--              addOp when operation = "0010" else
--              subOp when operation = "0110" else
--              sltOp when operation = "0111" else addOp;

    with operation select
        tempResult <= andOp when "0000",
                  orOp when "0001",
                  addOp when "0010",
                  subOp when "0110",
                  sltOp when "0111",
                  addOp when others;
                  
    zeroFlag <= '1' when tempResult = x"00000000" else '0';
    
    result <= tempResult;

end Behavioral;
