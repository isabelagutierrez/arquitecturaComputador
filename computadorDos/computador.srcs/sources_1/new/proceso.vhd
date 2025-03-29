----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.03.2025 11:12:42
-- Design Name: 
-- Module Name: proceso - Behavioral
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

entity proceso is
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           address : out STD_LOGIC_VECTOR (31 downto 0);
           dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataOut : out STD_LOGIC_VECTOR (31 downto 0);
           read : out STD_LOGIC;
           write : out STD_LOGIC);
end proceso;

architecture Behavioral of proceso is

component registro
    Port ( dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataOut : out STD_LOGIC_VECTOR (31 downto 0);
           reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           enable : in STD_LOGIC);
end component;

component muxCuatroUno
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           C : in STD_LOGIC_VECTOR (31 downto 0);
           D : in STD_LOGIC_VECTOR (31 downto 0);
           sel : in STD_LOGIC_VECTOR (1 downto 0);
           Mout : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component muxDosUno
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           Sel : in STD_LOGIC;
           Mout : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component aluComputador
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           operation : in STD_LOGIC_VECTOR (3 downto 0);
           result : out STD_LOGIC_VECTOR (31 downto 0);
           zeroFlag : out STD_LOGIC);
end component;

component aluControl
    Port ( aluOp : in STD_LOGIC_VECTOR (2 downto 0);
           funcion : in STD_LOGIC_VECTOR (5 downto 0);
           operation : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component registerFile
    Port ( clock : in STD_LOGIC;
           write : in STD_LOGIC;
           addressUno : in STD_LOGIC_VECTOR (4 downto 0);
           addressDos : in STD_LOGIC_VECTOR (4 downto 0);
           addressTres : in STD_LOGIC_VECTOR (4 downto 0);
           dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataOutUno : out STD_LOGIC_VECTOR (31 downto 0);
           dataOutDos : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component memoria
    Port ( clock : in STD_LOGIC;
           address : in STD_LOGIC_VECTOR (31 downto 0);
           dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataOut : out STD_LOGIC_VECTOR (31 downto 0);
           read : in STD_LOGIC_VECTOR(1 downto 0);
           write : in STD_LOGIC);
end component;

component muxTresUno
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           C : in STD_LOGIC_VECTOR (31 downto 0);
           sel : in STD_LOGIC;
           Mout : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component uniControl
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
end component;

component compAnd
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cout : out STD_LOGIC);
end component;

component compOr
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cout : out STD_LOGIC);
end component; 

component muxTresUnoCincoB
    Port ( A : in STD_LOGIC_VECTOR (4 downto 0);
           B : in STD_LOGIC_VECTOR (4 downto 0);
           C : in STD_LOGIC_VECTOR (4 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           Mout : out STD_LOGIC_VECTOR (4 downto 0));
end component;

component signExtend
    Port ( dataIn : in STD_LOGIC_VECTOR (15 downto 0);
           dataOut : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component shiftLeft
    Port ( dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataOut : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component muxTresUno1B
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           C : in STD_LOGIC_VECTOR (27 downto 0);
           sel : in STD_LOGIC_VECTOR(1 downto 0);
           Mout : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component shiftLeftDos
    Port ( dataIn : in STD_LOGIC_VECTOR (25 downto 0);
           dataOut : out STD_LOGIC_VECTOR (27 downto 0));
end component;

signal enablePC, IRwrite, inAnd, regWrite, IRwriteUC, memToRUC, memWriteUC, IorDUC, pcWriteUC, branchUC, aluSrcAUC, regWriteUC, orIn: STD_LOGIC;
signal dataInPC, dataOutMux5, dataOutSE, dataOutSL2, dataOutMux2, dataOutR2, addressMem, dataOutA, dataOutPC, dataOutAlu, dataOutAO, dataOutIR, dataOutMDR, dataInRF, dataOut1RF, dataOut2RF, dataOutRE, salidaAux, dataOutMem: STD_LOGIC_VECTOR(31 downto 0);
signal regDst, memToReg, pcSrcUC, aluSrcBUC, regDstUC, memReadUC: STD_LOGIC_VECTOR(1 downto 0);
signal aluOpUC: STD_LOGIC_VECTOR(2 downto 0);
signal addressTres: STD_LOGIC_VECTOR(4 downto 0);
signal aContOut: STD_LOGIC_VECTOR(3 downto 0);
signal outSLdos: STD_LOGIC_VECTOR(27 downto 0);

begin

    PC: registro
    port map(
        reset => reset, 
        clock => clock,
        enable => enablePC,
        dataIn => dataInPC,
        dataOut => dataOutPC
    );
    
    MUX01: muxDosUno
    port map(
        A => dataOutPC,
        B => dataOutAO,
        Sel => IorDUC,
        Mout => addressMem
    );
    
    MUX05: muxDosUno
    port map(
        A => dataOutPC,
        B => dataOutA,
        Sel => aluSrcAUC,
        Mout => dataOutMux5
    );
    
    IR: registro
    port map(
        reset => reset, 
        clock => clock,
        enable => IRwriteUC, 
        dataIn => dataOutMem,
        dataOut => dataOutIR
    );
    
    MDR: registro
    port map(
        reset => reset, 
        clock => clock,
        enable => '1', 
        dataIn => dataOutMem,
        dataOut => dataOutMDR
    );
    
    MUX07: muxTresUno
        port map(
            A => dataOutAO,
            B => dataOutMDR,
            C => dataOutPC,
            Sel => memToRUC,
            Mout => dataInRF
    );
    
    RF: registerFile
        port map(
            clock => clock,
            write => regWriteUC,
            addressUno => dataOutIR(25 downto 21),
            addressDos => dataOutIR(20 downto 16),
            addressTres => addressTres,
            dataIn => dataInRF,
            dataOutUno => dataOut1RF,
            dataOutDos => dataOut2RF
    );

    MEM: memoria
        port map(
            clock => clock,
            address => addressMem,
            dataIn => dataOutR2,
            dataOut => dataOutMem,
            read => memReadUC,
            write => memWriteUC
    );
    
    UC: uniControl
        port map(
            reset => reset,
            clock => clock,
            opcode => dataOutIR(31 downto 26),
            IRwrite => IRwriteUC,
            memToR => memToRUC,
            memWrite => memWriteUC,
            memRead => memReadUC,
            IorD => IorDUC,
            pcWrite => pcWriteUC,
            branch => branchUC,
            pcSrc => pcSrcUC,
            aluOp => aluOpUC,
            aluSrcB => aluSrcBUC,
            aluSrcA => aluSrcAUC,
            regWrite => regWriteUC,
            regDst => regDstUC
    );
    
    COR: compOr
        port map(
            A => orIn,
            B => pcWriteUC,
            Cout => enablePC
   );
        
    CAND: compAnd
        port map(
            A => inAnd,
            B => branchUC,
            Cout => orIn
    );
    
    ALUOUT: registro
        port map(
            reset => reset, 
            clock => clock,
            enable => '1', 
            dataIn => dataOutAlu,
            dataOut => dataOutAO
    );
    
    ALUCOMP: aluComputador
        Port map(
            A => dataOutMux5,
            B => dataOutMux2,
            operation => aContOut,
            result => dataOutAlu,
            zeroFlag => inAnd
    );
    
    MUX03: muxTresUnoCincoB
        port map(
            A => dataOutIR(20 downto 16),
            B => dataOutIR(15 downto 11),
            C => "11111",
            sel => RegDstUC,
            Mout => addressTres
    );
    
    REGA: registro
        port map(
            reset => reset, 
            clock => clock,
            enable => '1', 
            dataIn => dataOut1RF,
            dataOut => dataOutA
    );
    
    REGB: registro
        port map(
            reset => reset, 
            clock => clock,
            enable => '1', 
            dataIn => dataOut2RF,
            dataOut => dataOutR2
    );
    
    MUX02: muxCuatroUno
        port map(
            A => dataOutR2,
            B => x"00000004",
            C => dataOutSE,
            D => dataOutSL2,
            sel => aluSrcBUC,
            Mout => dataOutMux2        
    );
    
    SE: signExtend
        port map(
            dataIn => dataOutIR(15 downto 0),
            dataOut => dataOutSE
    );
    
    SL2: shiftLeft
        port map(
            dataIn => dataOutSE,
            dataOut => dataOutSL2
    );
    
    ACONTROL: aluControl
        port map(
            aluOp => aluOpUC,
            funcion => dataOutIR(5 downto 0),
            operation => aContOut
    );
    
    MUX04: muxTresUno1B
        port map(
            A => dataOutAlu,
            B => dataOutAO,
            C => outSLdos,
            Sel => PCSrcUC,
            Mout => dataInPC
    );
    
    SLDOS: shiftLeftDos
        port map(
            dataIn => dataOutIR(25 downto 0),
            dataOut => outSLdos       
    );
    
end Behavioral;
