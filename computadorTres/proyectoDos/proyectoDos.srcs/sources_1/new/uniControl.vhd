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
end uniControl;

architecture Behavioral of uniControl is

type stateType is (fetchSt, decodeSt, memAddrSt, memReadSt, memWBSt, memWriteSt, executeSt, WBSt, branchSt, jumpSt, addiExSt, andiExSt, OriExSt,
                   sltiExSt, luieXSt, WBISt);

signal currentState, nextState: stateType;

begin

    nextStateFunction: process (opcode, currentState)
    begin
        case (currentState) is
            when fetchSt =>
                nextState <= decodeSt;
            when decodeSt =>
                case opcode is
                    when "100011" | "101011" => nextState <= memAddrSt;
                    when "000000" => nextState <= executeSt;
                    when "000100" => nextState <= branchSt;
                    when "000010" => nextState <= jumpSt;
                    when "001000" => nextState <= addiExSt;
                    when "001100" => nextState <= andiExSt;
                    when "001101" => nextState <= OriExSt;
                    when "001010" => nextState <= sltiExSt;
                    when "001111" => nextState <= luieXSt;
                    when others => nextState <= fetchSt;
                end case;
            when memAddrSt =>
                if (opcode = "100011") then
                    nextState <= memReadSt;
                else
                    nextState <= memWriteSt;
                end if;
            when memReadSt =>
                nextState <= memWBSt;
            when memWriteSt =>
                nextState <= fetchSt;
            when memWBSt =>
                nextState <= fetchSt;
            when executeSt =>
                nextState <= WBISt;
            when WBSt =>
                nextState <= fetchSt;
            when branchSt =>
                nextState <= fetchSt;
            when jumpSt =>
                nextState <= fetchSt;
            when addiExSt | andiExSt | OriExSt | sltiExSt | luieXSt =>
                nextState <= WBISt;
            when WBISt =>
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
        case (currentState) is
            when fetchSt =>
                IRwrite <= '1'; pcWrite <= '1'; memRead <= '1';
                memWrite <= '0'; regWrite <= '0'; aluSrcA <= '0';
                aluSrcB <= "01"; aluOp <= "000"; regDst <= "00";
                pcSrc <= "00"; memToR <= "00"; IorD <= '0'; branch <= '0';
            when decodeSt =>
                IRwrite <= '0'; pcWrite <= '0'; memRead <= '0';
                memWrite <= '0'; regWrite <= '0'; aluSrcA <= '0';
                aluSrcB <= "11"; aluOp <= "000"; regDst <= "00";
                pcSrc <= "00"; memToR <= "00"; IorD <= '0'; branch <= '0';
            when memAddrSt =>
                aluSrcA <= '1'; aluSrcB <= "10";
                aluOp <= "000";
            when memReadSt =>
                memRead <= '1'; IorD <= '1';
            when memWriteSt =>
                memWrite <= '1'; IorD <= '1';
            when executeSt =>
                aluSrcA <= '1'; aluSrcB <= "00";
                aluOp <= "010";
            when WBISt =>
                regWrite <= '1'; regDst <= "01";
            when branchSt =>
                branch <= '1'; aluSrcA <= '1'; aluSrcB <= "00";
                aluOp <= "001"; pcSrc <= "01";
            when jumpSt =>
                pcWrite <= '1'; pcSrc <= "10";
            when addiExSt | andiExSt | OriExSt | sltiExSt | luieXSt =>
                aluSrcA <= '1'; aluSrcB <= "10";
                case currentState is
                    when addiExSt => aluOp <= "000";
                    when andiExSt => aluOp <= "100";
                    when OriExSt => aluOp <= "011";
                    when sltiExSt => aluOp <= "101";
                    when luieXSt => aluOp <= "110";
                    when others => aluOp <= "000";
                end case;
            when others =>
                IRwrite <= '0'; pcWrite <= '0'; memRead <= '0';
                memWrite <= '0'; regWrite <= '0'; aluSrcA <= '0';
                aluSrcB <= "00"; aluOp <= "000"; regDst <= "00";
                pcSrc <= "00"; memToR <= "00"; IorD <= '0'; branch <= '0';
        end case;
    end process;
    
end Behavioral;
