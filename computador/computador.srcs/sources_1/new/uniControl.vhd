----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2025 08:45:55
-- Design Name: 
-- Module Name: uniControl - Behavioral
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

entity uniControl is
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           opcode : in STD_LOGIC_VECTOR (5 downto 0);
           IRwrite : out STD_LOGIC;
           memToR : out STD_LOGIC;
           memWrite : out STD_LOGIC;
           memRead : out STD_LOGIC_VECTOR (1 downto 0);
           IorD : out STD_LOGIC;
           pcWrite : out STD_LOGIC;
           branch : out STD_LOGIC;
           pcSrc : out STD_LOGIC_VECTOR (1 downto 0);
           aluOp : out STD_LOGIC_VECTOR (2 downto 0);
           aluSrcB : out STD_LOGIC_VECTOR (1 downto 0);
           aluSrcA : out STD_LOGIC;
           regWrite : out STD_LOGIC;
           regDst : out STD_LOGIC_VECTOR (1 downto 0));
end uniControl;

architecture Behavioral of uniControl is

type stateType is (fetchSt, decodeSt, memAddrSt, memReadSt, memWBSt, memWriteSt, executeSt, WBSt, branchSt, jumpSt, addiExSt, andiExSt, OriExSt,
                   sltiExSt, luieXSt, WBISt);

signal currentState, nextState: statetype;

begin

    nextStateFunction: process (opcode, currentState)
    begin
        case (currentState) is
            when fetchSt =>  -- Fetch state
                nextState <= decodeSt;
            when decodeSt =>  -- Decode state
--                if (opcode = "100011" or opcode = "101011" then
--                    nextState <= memAddrSt;
--                elsif (opcode = "000000") then
--                    nextState <= executeSt;
--                elsif (opcode = "000100") then
--                    nextState <= branchSt;
--                elsif (opcode = "000010") then
--                    nextState <= jumpSt;
--                else
--                    nextState <= fetchSt;
--                end if;
            when memAddrSt =>
                nextState <= memWBSt;
            when memWBSt =>
                nextState <= fetchSt;
            when memWriteSt =>
                nextState <= fetchSt;
            when executeSt =>
                nextState <= WBISt;
            when WBISt =>
                nextState <= fetchSt;
            when branchSt =>
                nextState <= fetchSt;
            when jumpSt =>
                nextState <= fetchSt;
            when others =>
                nextState <= fetchSt;
        end case;   
    end process;
    
    currentStateRegister: process (reset, clock)
    begin
        if (reset = '1') then
            currentState <= fetchSt;
        elsif (clock' event and clock = '1') then
            currentState <= nextState;
        end if;
    end process;
    
    outputsFunction: process (currentState)
    begin
    
    end process;
    
end Behavioral;
