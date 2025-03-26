----------------------------------------------------------------------------------
-- Company: Pontifica Universidad Javeriana Cali
-- Engineer: Isabela Gutiérrez Reyes
-- 
-- Create Date: 01.03.2025 11:10:01
-- Design Name: Computador para laberinto o sumo
-- Module Name: computador - Behavioral
-- Project Name: Computador para laberinto o sumo
-- Target Devices: Artix - 7
-- Tool Versions: 2020.2
-- Description: Procesador para el computador
-- 
-- Dependencies: N.A
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity computador is
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           sensores : in STD_LOGIC_VECTOR (15 downto 0);
           actuadores : out STD_LOGIC_VECTOR (15 downto 0));
end computador;

architecture Behavioral of computador is

component proceso
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           address : out STD_LOGIC_VECTOR (31 downto 0);
           dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataOut : out STD_LOGIC_VECTOR (31 downto 0);
           read : out STD_LOGIC;
           write : out STD_LOGIC);
end component;
           
component memoria
    Port ( clock : in STD_LOGIC;
           address : in STD_LOGIC_VECTOR (10 downto 0);
           dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataOut : out STD_LOGIC_VECTOR (31 downto 0);
           read : in STD_LOGIC;
           write : in STD_LOGIC);           
end component;

signal Iaddress, IdataInP, IdataOutP: std_logic_vector (31 downto 0);
signal Iwrite, Iread: std_logic;

begin

    processor: proceso
    port map(
        reset => reset,
        clock => clock,
        address => Iaddress,
        dataIn => IdataInP,
        dataOut => IdataOutP,
        read => Iread,
        write => Iwrite
    );
    
    memory: memoria
    port map(
        clock => clock,
        address => Iaddress (10 downto 0),
        dataIn => IdataOutP,
        dataOut => IdataInP,
        read => Iread,
        write => Iwrite 
    );

end Behavioral;
