----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.03.2025 09:29:34
-- Design Name: 
-- Module Name: divisorFrec - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divisorFrec is
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           opcode : in STD_LOGIC_VECTOR (5 downto 0);
           outputUC : out STD_LOGIC_VECTOR (18 downto 0);
           divClock: out STD_LOGIC);
end divisorFrec;

architecture Behavioral of divisorFrec is

component uniControl
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           opcode : in STD_LOGIC_VECTOR (5 downto 0);
           IRwrite : out STD_LOGIC;
           memToR : out STD_LOGIC_VECTOR (1 downto 0);
           memWrite : out STD_LOGIC;
           memRead : out STD_LOGIC;
           IorD : out STD_LOGIC;
           pcWrite : out STD_LOGIC;
           branch : out STD_LOGIC;
           pcSrc : out STD_LOGIC_VECTOR (1 downto 0);
           aluOp : out STD_LOGIC_VECTOR (2 downto 0);
           aluSrcB : out STD_LOGIC_VECTOR (1 downto 0);
           aluSrcA : out STD_LOGIC;
           regWrite : out STD_LOGIC;
           regDst : out STD_LOGIC_VECTOR (1 downto 0));
end component;

signal clockDF: STD_LOGIC;
signal currentCount, nextCount: STD_LOGIC_VECTOR (31 downto 0);

begin

    controlUnit: uniControl
        port map(
            reset => reset,
            clock => clockDF,
            opcode => opcode,
            IRwrite => outputUC(0),
            memToR => outputUC(2 downto 1),
            memWrite => outputUC(3),
            memRead => outputUC(4),
            IorD => outputUC(5),
            pcWrite => outputUC(6),
            branch => outputUC(7),
            pcSrc => outputUC(9 downto 8),
            aluOp => outputUC(12 downto 10),
            aluSrcB => outputUC(14 downto 13),
            aluSrcA => outputUC(15),
            regWrite => outputUC(16),
            regDst => outputUC(18 downto 17)
    );
    
    COUNTERREG: process (reset, clock)
    begin
        if (reset = '1') then
            currentCount <= x"00000000";
        elsif (clock' event and clock = '1') then
            currentCount <= nextCount;
        end if;
    end process;
    
    nextCount <= currentCount + 1;
    clockDF <= currentCount(26);
    divClock <= clockDF;       

end Behavioral;
