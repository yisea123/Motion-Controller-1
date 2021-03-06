-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Apr 22 19:32:06 2019
-- Host        : DESKTOP-IEG0QIL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/adomy/Documents/EGR4820/senior_project/Scurve_Mahan_PWM_main/scurve_mb/scurve_mb.srcs/sources_1/bd/design_1/ip/design_1_supervisor_0_2/design_1_supervisor_0_2_sim_netlist.vhdl
-- Design      : design_1_supervisor_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_supervisor_0_2_supervisor is
  port (
    direc : out STD_LOGIC;
    freq_pulse : out STD_LOGIC;
    clk : in STD_LOGIC;
    homing_dir : in STD_LOGIC;
    homing_en : in STD_LOGIC;
    en : in STD_LOGIC;
    mtr_dir : in STD_LOGIC;
    homing_freq_pulse : in STD_LOGIC;
    motion_freq_pulse : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_supervisor_0_2_supervisor : entity is "supervisor";
end design_1_supervisor_0_2_supervisor;

architecture STRUCTURE of design_1_supervisor_0_2_supervisor is
  signal \direc__0_n_0\ : STD_LOGIC;
  signal \freq_pulse__0_n_0\ : STD_LOGIC;
begin
\direc__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => homing_dir,
      I1 => homing_en,
      I2 => en,
      I3 => mtr_dir,
      O => \direc__0_n_0\
    );
direc_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \direc__0_n_0\,
      Q => direc,
      R => '0'
    );
\freq_pulse__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => homing_freq_pulse,
      I1 => homing_en,
      I2 => en,
      I3 => motion_freq_pulse,
      O => \freq_pulse__0_n_0\
    );
freq_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \freq_pulse__0_n_0\,
      Q => freq_pulse,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_supervisor_0_2 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    homing_en : in STD_LOGIC;
    homing_dir : in STD_LOGIC;
    mtr_dir : in STD_LOGIC;
    motion_freq_pulse : in STD_LOGIC;
    homing_freq_pulse : in STD_LOGIC;
    direc : out STD_LOGIC;
    freq_pulse : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_supervisor_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_supervisor_0_2 : entity is "design_1_supervisor_0_2,supervisor,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_supervisor_0_2 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_supervisor_0_2 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_supervisor_0_2 : entity is "supervisor,Vivado 2018.2";
end design_1_supervisor_0_2;

architecture STRUCTURE of design_1_supervisor_0_2 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK0";
begin
inst: entity work.design_1_supervisor_0_2_supervisor
     port map (
      clk => clk,
      direc => direc,
      en => en,
      freq_pulse => freq_pulse,
      homing_dir => homing_dir,
      homing_en => homing_en,
      homing_freq_pulse => homing_freq_pulse,
      motion_freq_pulse => motion_freq_pulse,
      mtr_dir => mtr_dir
    );
end STRUCTURE;
