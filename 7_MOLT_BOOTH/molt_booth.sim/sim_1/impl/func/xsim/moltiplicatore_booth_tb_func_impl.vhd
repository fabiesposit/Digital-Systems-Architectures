-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Jan 30 17:11:57 2025
-- Host        : LAPTOP-OHSN7K8C running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/mario/Desktop/molt_booth/molt_booth.sim/sim_1/impl/func/xsim/moltiplicatore_booth_tb_func_impl.vhd
-- Design      : molt_booth_on_board
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a50ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ButtonDebouncer is
  port (
    CLEARED_BTN : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_IBUF : in STD_LOGIC;
    clock_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    start_IBUF : in STD_LOGIC
  );
end ButtonDebouncer;

architecture STRUCTURE of ButtonDebouncer is
  signal BTN_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \BTN_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^cleared_btn\ : STD_LOGIC;
  signal CLEARED_BTN_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_BTN_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_BTN_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_BTN_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_BTN_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_BTN_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_BTN_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_BTN_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_BTN_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_BTN_state[1]_i_9_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \deb.count[0]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count[31]_i_2_n_0\ : STD_LOGIC;
  signal \deb.count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[0]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[10]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[11]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[12]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[13]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[14]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[15]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[16]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[17]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[18]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[19]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[1]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[20]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[21]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[22]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[23]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[24]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[25]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[26]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[27]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[28]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[29]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[2]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[30]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[31]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[3]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[4]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[5]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[6]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[7]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[8]\ : STD_LOGIC;
  signal \deb.count_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_deb.count_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_deb.count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_deb.count_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_deb.count_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_deb.count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_deb.count_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_deb.count_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_deb.count_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_deb.count_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CLEARED_BTN_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_BTN_state[0]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_BTN_state_reg[0]\ : label is "chk_pressed:01,chk_not_pressed:11,pressed:10,not_pressed:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_BTN_state_reg[1]\ : label is "chk_pressed:01,chk_not_pressed:11,pressed:10,not_pressed:00";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \deb.count_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \deb.count_reg[8]_i_1\ : label is 35;
begin
  CLEARED_BTN <= \^cleared_btn\;
CLEARED_BTN_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCFF0040"
    )
        port map (
      I0 => \FSM_sequential_BTN_state[1]_i_2_n_0\,
      I1 => count,
      I2 => start_IBUF,
      I3 => BTN_state(1),
      I4 => \^cleared_btn\,
      O => CLEARED_BTN_i_1_n_0
    );
CLEARED_BTN_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => '1',
      D => CLEARED_BTN_i_1_n_0,
      Q => \^cleared_btn\,
      R => reset_IBUF
    );
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^cleared_btn\,
      I1 => Q(0),
      O => D(0)
    );
\FSM_sequential_BTN_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F606"
    )
        port map (
      I0 => BTN_state(1),
      I1 => start_IBUF,
      I2 => count,
      I3 => \FSM_sequential_BTN_state[1]_i_2_n_0\,
      O => \BTN_state__0\(0)
    );
\FSM_sequential_BTN_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => BTN_state(1),
      I1 => \FSM_sequential_BTN_state[1]_i_2_n_0\,
      I2 => count,
      I3 => start_IBUF,
      O => \BTN_state__0\(1)
    );
\FSM_sequential_BTN_state[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[21]\,
      I1 => \deb.count_reg_n_0_[20]\,
      I2 => \deb.count_reg_n_0_[23]\,
      I3 => \deb.count_reg_n_0_[22]\,
      O => \FSM_sequential_BTN_state[1]_i_10_n_0\
    );
\FSM_sequential_BTN_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_sequential_BTN_state[1]_i_3_n_0\,
      I1 => \FSM_sequential_BTN_state[1]_i_4_n_0\,
      I2 => \FSM_sequential_BTN_state[1]_i_5_n_0\,
      I3 => \FSM_sequential_BTN_state[1]_i_6_n_0\,
      O => \FSM_sequential_BTN_state[1]_i_2_n_0\
    );
\FSM_sequential_BTN_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[10]\,
      I1 => \deb.count_reg_n_0_[11]\,
      I2 => \deb.count_reg_n_0_[8]\,
      I3 => \deb.count_reg_n_0_[9]\,
      I4 => \FSM_sequential_BTN_state[1]_i_7_n_0\,
      O => \FSM_sequential_BTN_state[1]_i_3_n_0\
    );
\FSM_sequential_BTN_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[2]\,
      I1 => \deb.count_reg_n_0_[3]\,
      I2 => \deb.count_reg_n_0_[0]\,
      I3 => \deb.count_reg_n_0_[1]\,
      I4 => \FSM_sequential_BTN_state[1]_i_8_n_0\,
      O => \FSM_sequential_BTN_state[1]_i_4_n_0\
    );
\FSM_sequential_BTN_state[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[26]\,
      I1 => \deb.count_reg_n_0_[27]\,
      I2 => \deb.count_reg_n_0_[24]\,
      I3 => \deb.count_reg_n_0_[25]\,
      I4 => \FSM_sequential_BTN_state[1]_i_9_n_0\,
      O => \FSM_sequential_BTN_state[1]_i_5_n_0\
    );
\FSM_sequential_BTN_state[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[18]\,
      I1 => \deb.count_reg_n_0_[19]\,
      I2 => \deb.count_reg_n_0_[16]\,
      I3 => \deb.count_reg_n_0_[17]\,
      I4 => \FSM_sequential_BTN_state[1]_i_10_n_0\,
      O => \FSM_sequential_BTN_state[1]_i_6_n_0\
    );
\FSM_sequential_BTN_state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \deb.count_reg_n_0_[13]\,
      I1 => \deb.count_reg_n_0_[12]\,
      I2 => \deb.count_reg_n_0_[14]\,
      I3 => \deb.count_reg_n_0_[15]\,
      O => \FSM_sequential_BTN_state[1]_i_7_n_0\
    );
\FSM_sequential_BTN_state[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \deb.count_reg_n_0_[5]\,
      I1 => \deb.count_reg_n_0_[4]\,
      I2 => \deb.count_reg_n_0_[7]\,
      I3 => \deb.count_reg_n_0_[6]\,
      O => \FSM_sequential_BTN_state[1]_i_8_n_0\
    );
\FSM_sequential_BTN_state[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \deb.count_reg_n_0_[29]\,
      I1 => \deb.count_reg_n_0_[28]\,
      I2 => \deb.count_reg_n_0_[31]\,
      I3 => \deb.count_reg_n_0_[30]\,
      O => \FSM_sequential_BTN_state[1]_i_9_n_0\
    );
\FSM_sequential_BTN_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => '1',
      D => \BTN_state__0\(0),
      Q => count,
      R => reset_IBUF
    );
\FSM_sequential_BTN_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => '1',
      D => \BTN_state__0\(1),
      Q => BTN_state(1),
      R => reset_IBUF
    );
\deb.count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => reset_IBUF,
      I1 => count,
      I2 => \deb.count_reg_n_0_[0]\,
      O => \deb.count[0]_i_1_n_0\
    );
\deb.count[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => reset_IBUF,
      I1 => count,
      I2 => \FSM_sequential_BTN_state[1]_i_2_n_0\,
      O => \deb.count[31]_i_1_n_0\
    );
\deb.count[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count,
      I1 => reset_IBUF,
      O => \deb.count[31]_i_2_n_0\
    );
\deb.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => '1',
      D => \deb.count[0]_i_1_n_0\,
      Q => \deb.count_reg_n_0_[0]\,
      R => '0'
    );
\deb.count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(10),
      Q => \deb.count_reg_n_0_[10]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(11),
      Q => \deb.count_reg_n_0_[11]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(12),
      Q => \deb.count_reg_n_0_[12]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[8]_i_1_n_0\,
      CO(3) => \deb.count_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_deb.count_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \deb.count_reg_n_0_[12]\,
      S(2) => \deb.count_reg_n_0_[11]\,
      S(1) => \deb.count_reg_n_0_[10]\,
      S(0) => \deb.count_reg_n_0_[9]\
    );
\deb.count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(13),
      Q => \deb.count_reg_n_0_[13]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(14),
      Q => \deb.count_reg_n_0_[14]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(15),
      Q => \deb.count_reg_n_0_[15]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(16),
      Q => \deb.count_reg_n_0_[16]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[12]_i_1_n_0\,
      CO(3) => \deb.count_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_deb.count_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \deb.count_reg_n_0_[16]\,
      S(2) => \deb.count_reg_n_0_[15]\,
      S(1) => \deb.count_reg_n_0_[14]\,
      S(0) => \deb.count_reg_n_0_[13]\
    );
\deb.count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(17),
      Q => \deb.count_reg_n_0_[17]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(18),
      Q => \deb.count_reg_n_0_[18]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(19),
      Q => \deb.count_reg_n_0_[19]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(1),
      Q => \deb.count_reg_n_0_[1]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(20),
      Q => \deb.count_reg_n_0_[20]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[16]_i_1_n_0\,
      CO(3) => \deb.count_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_deb.count_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \deb.count_reg_n_0_[20]\,
      S(2) => \deb.count_reg_n_0_[19]\,
      S(1) => \deb.count_reg_n_0_[18]\,
      S(0) => \deb.count_reg_n_0_[17]\
    );
\deb.count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(21),
      Q => \deb.count_reg_n_0_[21]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(22),
      Q => \deb.count_reg_n_0_[22]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(23),
      Q => \deb.count_reg_n_0_[23]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(24),
      Q => \deb.count_reg_n_0_[24]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[20]_i_1_n_0\,
      CO(3) => \deb.count_reg[24]_i_1_n_0\,
      CO(2 downto 0) => \NLW_deb.count_reg[24]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \deb.count_reg_n_0_[24]\,
      S(2) => \deb.count_reg_n_0_[23]\,
      S(1) => \deb.count_reg_n_0_[22]\,
      S(0) => \deb.count_reg_n_0_[21]\
    );
\deb.count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(25),
      Q => \deb.count_reg_n_0_[25]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(26),
      Q => \deb.count_reg_n_0_[26]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(27),
      Q => \deb.count_reg_n_0_[27]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(28),
      Q => \deb.count_reg_n_0_[28]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[24]_i_1_n_0\,
      CO(3) => \deb.count_reg[28]_i_1_n_0\,
      CO(2 downto 0) => \NLW_deb.count_reg[28]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \deb.count_reg_n_0_[28]\,
      S(2) => \deb.count_reg_n_0_[27]\,
      S(1) => \deb.count_reg_n_0_[26]\,
      S(0) => \deb.count_reg_n_0_[25]\
    );
\deb.count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(29),
      Q => \deb.count_reg_n_0_[29]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(2),
      Q => \deb.count_reg_n_0_[2]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(30),
      Q => \deb.count_reg_n_0_[30]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(31),
      Q => \deb.count_reg_n_0_[31]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[28]_i_1_n_0\,
      CO(3 downto 0) => \NLW_deb.count_reg[31]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_deb.count_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \deb.count_reg_n_0_[31]\,
      S(1) => \deb.count_reg_n_0_[30]\,
      S(0) => \deb.count_reg_n_0_[29]\
    );
\deb.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(3),
      Q => \deb.count_reg_n_0_[3]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(4),
      Q => \deb.count_reg_n_0_[4]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \deb.count_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_deb.count_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \deb.count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \deb.count_reg_n_0_[4]\,
      S(2) => \deb.count_reg_n_0_[3]\,
      S(1) => \deb.count_reg_n_0_[2]\,
      S(0) => \deb.count_reg_n_0_[1]\
    );
\deb.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(5),
      Q => \deb.count_reg_n_0_[5]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(6),
      Q => \deb.count_reg_n_0_[6]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(7),
      Q => \deb.count_reg_n_0_[7]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(8),
      Q => \deb.count_reg_n_0_[8]\,
      R => \deb.count[31]_i_1_n_0\
    );
\deb.count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \deb.count_reg[4]_i_1_n_0\,
      CO(3) => \deb.count_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_deb.count_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \deb.count_reg_n_0_[8]\,
      S(2) => \deb.count_reg_n_0_[7]\,
      S(1) => \deb.count_reg_n_0_[6]\,
      S(0) => \deb.count_reg_n_0_[5]\
    );
\deb.count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => \deb.count[31]_i_2_n_0\,
      D => data0(9),
      Q => \deb.count_reg_n_0_[9]\,
      R => \deb.count[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cont_mod8 is
  port (
    \FSM_onehot_current_state_reg[6]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_current_state_reg[7]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reset_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end cont_mod8;

architecture STRUCTURE of cont_mod8 is
  signal c : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \c[0]_i_1_n_0\ : STD_LOGIC;
  signal \c[1]_i_1_n_0\ : STD_LOGIC;
  signal \c[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[7]_i_1\ : label is "soft_lutpair7";
  attribute \PinAttr:I2:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I2:HOLD_DETOUR\ of \c[1]_i_1\ : label is 191;
  attribute SOFT_HLUTNM of \c[1]_i_1\ : label is "soft_lutpair8";
  attribute \PinAttr:I0:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I0:HOLD_DETOUR\ of \c[2]_i_1\ : label is 191;
  attribute SOFT_HLUTNM of \c[2]_i_1\ : label is "soft_lutpair8";
begin
\FSM_onehot_current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFAAAA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg[7]\(0),
      I1 => c(2),
      I2 => c(1),
      I3 => c(0),
      I4 => \FSM_onehot_current_state_reg[7]\(1),
      O => \FSM_onehot_current_state_reg[6]\(0)
    );
\FSM_onehot_current_state[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg[7]\(1),
      I1 => c(0),
      I2 => c(1),
      I3 => c(2),
      O => \FSM_onehot_current_state_reg[6]\(1)
    );
\c[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg[7]\(1),
      I1 => c(0),
      O => \c[0]_i_1_n_0\
    );
\c[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => c(0),
      I1 => \FSM_onehot_current_state_reg[7]\(1),
      I2 => c(1),
      O => \c[1]_i_1_n_0\
    );
\c[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => c(1),
      I1 => c(0),
      I2 => \FSM_onehot_current_state_reg[7]\(1),
      I3 => c(2),
      O => \c[2]_i_1_n_0\
    );
\c_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \c[0]_i_1_n_0\,
      Q => c(0),
      R => reset_IBUF
    );
\c_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \c[1]_i_1_n_0\,
      Q => c(1),
      R => reset_IBUF
    );
\c_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \c[2]_i_1_n_0\,
      Q => c(2),
      R => reset_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity registro8 is
  port (
    \FSM_onehot_current_state_reg[4]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \temp_reg[16]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \temp_reg[16]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_IBUF : in STD_LOGIC;
    \temp_b_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC
  );
end registro8;

architecture STRUCTURE of registro8 is
  signal addendo_y : STD_LOGIC_VECTOR ( 7 to 7 );
begin
\temp[16]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \temp_reg[16]\(1),
      I1 => addendo_y(7),
      I2 => \temp_reg[16]_0\(0),
      O => \FSM_onehot_current_state_reg[4]\
    );
\temp_b_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \temp_reg[16]\(0),
      D => \temp_b_reg[7]_0\(0),
      Q => Q(0),
      R => reset_IBUF
    );
\temp_b_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \temp_reg[16]\(0),
      D => \temp_b_reg[7]_0\(1),
      Q => Q(1),
      R => reset_IBUF
    );
\temp_b_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \temp_reg[16]\(0),
      D => \temp_b_reg[7]_0\(2),
      Q => Q(2),
      R => reset_IBUF
    );
\temp_b_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \temp_reg[16]\(0),
      D => \temp_b_reg[7]_0\(3),
      Q => Q(3),
      R => reset_IBUF
    );
\temp_b_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \temp_reg[16]\(0),
      D => \temp_b_reg[7]_0\(4),
      Q => Q(4),
      R => reset_IBUF
    );
\temp_b_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \temp_reg[16]\(0),
      D => \temp_b_reg[7]_0\(5),
      Q => Q(5),
      R => reset_IBUF
    );
\temp_b_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \temp_reg[16]\(0),
      D => \temp_b_reg[7]_0\(6),
      Q => Q(6),
      R => reset_IBUF
    );
\temp_b_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \temp_reg[16]\(0),
      D => \temp_b_reg[7]_0\(7),
      Q => addendo_y(7),
      R => reset_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shift_register is
  port (
    Q : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \temp_reg[13]_0\ : out STD_LOGIC;
    \temp_reg[13]_1\ : out STD_LOGIC;
    \temp_reg[14]_0\ : out STD_LOGIC;
    \temp_reg[15]_0\ : out STD_LOGIC;
    \FSM_onehot_current_state_reg[2]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_current_state_reg[3]\ : out STD_LOGIC;
    \temp_reg[13]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \temp_reg[15]_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    reset_IBUF : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 12 downto 0 );
    CLK : in STD_LOGIC
  );
end shift_register;

architecture STRUCTURE of shift_register is
  signal \^q\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 13 downto 9 );
  signal \temp[11]_i_2_n_0\ : STD_LOGIC;
  signal \temp[11]_i_3_n_0\ : STD_LOGIC;
  signal \temp[12]_i_2_n_0\ : STD_LOGIC;
  signal \temp[12]_i_3_n_0\ : STD_LOGIC;
  signal \temp[13]_i_2_n_0\ : STD_LOGIC;
  signal \temp[13]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_current_state[4]_i_1\ : label is "soft_lutpair6";
begin
  Q(16 downto 0) <= \^q\(16 downto 0);
\FSM_onehot_current_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \temp_reg[13]_2\(1),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \FSM_onehot_current_state_reg[2]\(0)
    );
\FSM_onehot_current_state[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \temp_reg[13]_2\(1),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \FSM_onehot_current_state_reg[2]\(1)
    );
\temp[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C82C3283C283C28"
    )
        port map (
      I0 => \temp_reg[13]_2\(2),
      I1 => \^q\(10),
      I2 => \temp_reg[15]_1\(1),
      I3 => \temp_reg[13]_2\(3),
      I4 => \^q\(9),
      I5 => \temp_reg[15]_1\(0),
      O => \FSM_onehot_current_state_reg[3]\
    );
\temp[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FF00FF00F2222"
    )
        port map (
      I0 => \^q\(12),
      I1 => \temp_reg[13]_2\(0),
      I2 => \temp[11]_i_2_n_0\,
      I3 => \temp[11]_i_3_n_0\,
      I4 => \temp_reg[13]_2\(3),
      I5 => \temp_reg[13]_2\(2),
      O => p_1_in(11)
    );
\temp[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BE28B8B8"
    )
        port map (
      I0 => \^q\(10),
      I1 => \temp_reg[15]_1\(1),
      I2 => \temp_reg[13]_2\(3),
      I3 => \^q\(9),
      I4 => \temp_reg[15]_1\(0),
      O => \temp[11]_i_2_n_0\
    );
\temp[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(11),
      I1 => \temp_reg[15]_1\(2),
      I2 => \temp_reg[13]_2\(3),
      O => \temp[11]_i_3_n_0\
    );
\temp[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FF00FF00F2222"
    )
        port map (
      I0 => \^q\(13),
      I1 => \temp_reg[13]_2\(0),
      I2 => \temp[12]_i_2_n_0\,
      I3 => \temp[12]_i_3_n_0\,
      I4 => \temp_reg[13]_2\(3),
      I5 => \temp_reg[13]_2\(2),
      O => p_1_in(12)
    );
\temp[12]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE28"
    )
        port map (
      I0 => \^q\(11),
      I1 => \temp_reg[15]_1\(2),
      I2 => \temp_reg[13]_2\(3),
      I3 => \temp[11]_i_2_n_0\,
      O => \temp[12]_i_2_n_0\
    );
\temp[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^q\(12),
      I1 => \temp_reg[15]_1\(3),
      I2 => \temp_reg[13]_2\(3),
      O => \temp[12]_i_3_n_0\
    );
\temp[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFF2FFF20002"
    )
        port map (
      I0 => \^q\(14),
      I1 => \temp_reg[13]_2\(0),
      I2 => \temp_reg[13]_2\(3),
      I3 => \temp_reg[13]_2\(2),
      I4 => \temp[13]_i_2_n_0\,
      I5 => \temp[13]_i_3_n_0\,
      O => p_1_in(13)
    );
\temp[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE2EBEB82E28B828"
    )
        port map (
      I0 => \^q\(12),
      I1 => \temp_reg[15]_1\(3),
      I2 => \temp_reg[13]_2\(3),
      I3 => \^q\(11),
      I4 => \temp_reg[15]_1\(2),
      I5 => \temp[11]_i_2_n_0\,
      O => \temp[13]_i_2_n_0\
    );
\temp[13]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q\(13),
      I1 => \temp_reg[15]_1\(4),
      I2 => \temp_reg[13]_2\(3),
      O => \temp[13]_i_3_n_0\
    );
\temp[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"41D7"
    )
        port map (
      I0 => \^q\(13),
      I1 => \temp_reg[15]_1\(4),
      I2 => \temp_reg[13]_2\(3),
      I3 => \temp[13]_i_2_n_0\,
      O => \temp_reg[13]_1\
    );
\temp[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q\(14),
      I1 => \temp_reg[15]_1\(5),
      I2 => \temp_reg[13]_2\(3),
      O => \temp_reg[14]_0\
    );
\temp[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^q\(15),
      I1 => \temp_reg[15]_1\(6),
      I2 => \temp_reg[13]_2\(3),
      O => \temp_reg[15]_0\
    );
\temp[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40D0F1F701074FDF"
    )
        port map (
      I0 => \^q\(13),
      I1 => \temp_reg[15]_1\(4),
      I2 => \temp_reg[13]_2\(3),
      I3 => \temp[13]_i_2_n_0\,
      I4 => \^q\(14),
      I5 => \temp_reg[15]_1\(5),
      O => \temp_reg[13]_0\
    );
\temp[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002FFF2FFF20002"
    )
        port map (
      I0 => \^q\(10),
      I1 => \temp_reg[13]_2\(0),
      I2 => \temp_reg[13]_2\(3),
      I3 => \temp_reg[13]_2\(2),
      I4 => \temp_reg[15]_1\(0),
      I5 => \^q\(9),
      O => p_1_in(9)
    );
\temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => reset_IBUF
    );
\temp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(9),
      Q => \^q\(10),
      R => reset_IBUF
    );
\temp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(11),
      Q => \^q\(11),
      R => reset_IBUF
    );
\temp_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(12),
      Q => \^q\(12),
      R => reset_IBUF
    );
\temp_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(13),
      Q => \^q\(13),
      R => reset_IBUF
    );
\temp_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(10),
      Q => \^q\(14),
      R => reset_IBUF
    );
\temp_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(11),
      Q => \^q\(15),
      R => reset_IBUF
    );
\temp_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(12),
      Q => \^q\(16),
      R => reset_IBUF
    );
\temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => reset_IBUF
    );
\temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(2),
      Q => \^q\(2),
      R => reset_IBUF
    );
\temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(3),
      Q => \^q\(3),
      R => reset_IBUF
    );
\temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(4),
      Q => \^q\(4),
      R => reset_IBUF
    );
\temp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(5),
      Q => \^q\(5),
      R => reset_IBUF
    );
\temp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(6),
      Q => \^q\(6),
      R => reset_IBUF
    );
\temp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(7),
      Q => \^q\(7),
      R => reset_IBUF
    );
\temp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => D(8),
      Q => \^q\(8),
      R => reset_IBUF
    );
\temp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => p_1_in(9),
      Q => \^q\(9),
      R => reset_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity unita_controllo is
  port (
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \FSM_onehot_current_state_reg[6]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \temp_reg[16]\ : in STD_LOGIC;
    \temp_reg[16]_0\ : in STD_LOGIC;
    \temp_reg[15]\ : in STD_LOGIC;
    \temp_reg[14]\ : in STD_LOGIC;
    \temp_reg[14]_0\ : in STD_LOGIC;
    \temp_reg[10]\ : in STD_LOGIC;
    x_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \temp_reg[16]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLEARED_BTN : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    \FSM_onehot_current_state_reg[7]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC
  );
end unita_controllo;

architecture STRUCTURE of unita_controllo is
  signal \FSM_onehot_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_current_state_reg[6]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \FSM_onehot_current_state_reg_n_0_[7]\ : STD_LOGIC;
  signal sig_shift : STD_LOGIC;
  signal \temp[16]_i_3_n_0\ : STD_LOGIC;
  signal \temp[16]_i_4_n_0\ : STD_LOGIC;
  signal \temp[16]_i_7_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "incr_count:01000000,idle:00000001,acquisisci_op:00000010,avvia_shift:00100000,avvia_sub:00010000,avvia_somma:00001000,fine:10000000,scan:00000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "incr_count:01000000,idle:00000001,acquisisci_op:00000010,avvia_shift:00100000,avvia_sub:00010000,avvia_somma:00001000,fine:10000000,scan:00000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[2]\ : label is "incr_count:01000000,idle:00000001,acquisisci_op:00000010,avvia_shift:00100000,avvia_sub:00010000,avvia_somma:00001000,fine:10000000,scan:00000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[3]\ : label is "incr_count:01000000,idle:00000001,acquisisci_op:00000010,avvia_shift:00100000,avvia_sub:00010000,avvia_somma:00001000,fine:10000000,scan:00000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[4]\ : label is "incr_count:01000000,idle:00000001,acquisisci_op:00000010,avvia_shift:00100000,avvia_sub:00010000,avvia_somma:00001000,fine:10000000,scan:00000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[5]\ : label is "incr_count:01000000,idle:00000001,acquisisci_op:00000010,avvia_shift:00100000,avvia_sub:00010000,avvia_somma:00001000,fine:10000000,scan:00000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[6]\ : label is "incr_count:01000000,idle:00000001,acquisisci_op:00000010,avvia_shift:00100000,avvia_sub:00010000,avvia_somma:00001000,fine:10000000,scan:00000100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[7]\ : label is "incr_count:01000000,idle:00000001,acquisisci_op:00000010,avvia_shift:00100000,avvia_sub:00010000,avvia_somma:00001000,fine:10000000,scan:00000100";
begin
  \FSM_onehot_current_state_reg[6]_0\(5 downto 0) <= \^fsm_onehot_current_state_reg[6]_0\(5 downto 0);
\FSM_onehot_current_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[7]\,
      I1 => CLEARED_BTN,
      I2 => \^fsm_onehot_current_state_reg[6]_0\(0),
      O => \FSM_onehot_current_state[0]_i_1_n_0\
    );
\FSM_onehot_current_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF90"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \^fsm_onehot_current_state_reg[6]_0\(2),
      I3 => \^fsm_onehot_current_state_reg[6]_0\(3),
      I4 => \^fsm_onehot_current_state_reg[6]_0\(4),
      O => \FSM_onehot_current_state[5]_i_1_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_current_state[0]_i_1_n_0\,
      Q => \^fsm_onehot_current_state_reg[6]_0\(0),
      S => reset_IBUF
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_current_state_reg[7]_0\(0),
      Q => \^fsm_onehot_current_state_reg[6]_0\(1),
      R => reset_IBUF
    );
\FSM_onehot_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_current_state_reg[7]_0\(1),
      Q => \^fsm_onehot_current_state_reg[6]_0\(2),
      R => reset_IBUF
    );
\FSM_onehot_current_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_current_state_reg[7]_0\(2),
      Q => \^fsm_onehot_current_state_reg[6]_0\(3),
      R => reset_IBUF
    );
\FSM_onehot_current_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_current_state_reg[7]_0\(3),
      Q => \^fsm_onehot_current_state_reg[6]_0\(4),
      R => reset_IBUF
    );
\FSM_onehot_current_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_current_state[5]_i_1_n_0\,
      Q => sig_shift,
      R => reset_IBUF
    );
\FSM_onehot_current_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => sig_shift,
      Q => \^fsm_onehot_current_state_reg[6]_0\(5),
      R => reset_IBUF
    );
\FSM_onehot_current_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \FSM_onehot_current_state_reg[7]_0\(4),
      Q => \FSM_onehot_current_state_reg_n_0_[7]\,
      R => reset_IBUF
    );
\temp[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8ABA8A8"
    )
        port map (
      I0 => Q(0),
      I1 => \^fsm_onehot_current_state_reg[6]_0\(3),
      I2 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I3 => \^fsm_onehot_current_state_reg[6]_0\(1),
      I4 => Q(1),
      O => D(0)
    );
\temp[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0002"
    )
        port map (
      I0 => Q(10),
      I1 => \^fsm_onehot_current_state_reg[6]_0\(3),
      I2 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I3 => \^fsm_onehot_current_state_reg[6]_0\(1),
      I4 => \temp_reg[10]\,
      O => D(9)
    );
\temp[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FF00FF00F4444"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[6]_0\(1),
      I1 => Q(11),
      I2 => \temp_reg[14]\,
      I3 => \temp_reg[14]_0\,
      I4 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I5 => \^fsm_onehot_current_state_reg[6]_0\(3),
      O => D(10)
    );
\temp[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00FF00FF00F4444"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[6]_0\(1),
      I1 => Q(12),
      I2 => \temp_reg[16]\,
      I3 => \temp_reg[15]\,
      I4 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I5 => \^fsm_onehot_current_state_reg[6]_0\(3),
      O => D(11)
    );
\temp[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_shift,
      I1 => \^fsm_onehot_current_state_reg[6]_0\(1),
      I2 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I3 => \^fsm_onehot_current_state_reg[6]_0\(3),
      O => E(0)
    );
\temp[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABFABEAFE"
    )
        port map (
      I0 => \temp[16]_i_3_n_0\,
      I1 => \temp[16]_i_4_n_0\,
      I2 => Q(11),
      I3 => \temp_reg[16]\,
      I4 => \temp_reg[16]_0\,
      I5 => \temp[16]_i_7_n_0\,
      O => D(12)
    );
\temp[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => Q(12),
      I1 => \^fsm_onehot_current_state_reg[6]_0\(1),
      I2 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I3 => \^fsm_onehot_current_state_reg[6]_0\(3),
      O => \temp[16]_i_3_n_0\
    );
\temp[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I1 => \temp_reg[16]_1\(0),
      O => \temp[16]_i_4_n_0\
    );
\temp[16]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I1 => \^fsm_onehot_current_state_reg[6]_0\(3),
      O => \temp[16]_i_7_n_0\
    );
\temp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFCFE03020002"
    )
        port map (
      I0 => Q(2),
      I1 => \^fsm_onehot_current_state_reg[6]_0\(3),
      I2 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I3 => \^fsm_onehot_current_state_reg[6]_0\(1),
      I4 => x_IBUF(0),
      I5 => Q(1),
      O => D(1)
    );
\temp[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFCFE03020002"
    )
        port map (
      I0 => Q(3),
      I1 => \^fsm_onehot_current_state_reg[6]_0\(3),
      I2 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I3 => \^fsm_onehot_current_state_reg[6]_0\(1),
      I4 => x_IBUF(1),
      I5 => Q(2),
      O => D(2)
    );
\temp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFCFE03020002"
    )
        port map (
      I0 => Q(4),
      I1 => \^fsm_onehot_current_state_reg[6]_0\(3),
      I2 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I3 => \^fsm_onehot_current_state_reg[6]_0\(1),
      I4 => x_IBUF(2),
      I5 => Q(3),
      O => D(3)
    );
\temp[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFCFE03020002"
    )
        port map (
      I0 => Q(5),
      I1 => \^fsm_onehot_current_state_reg[6]_0\(3),
      I2 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I3 => \^fsm_onehot_current_state_reg[6]_0\(1),
      I4 => x_IBUF(3),
      I5 => Q(4),
      O => D(4)
    );
\temp[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFCFE03020002"
    )
        port map (
      I0 => Q(6),
      I1 => \^fsm_onehot_current_state_reg[6]_0\(3),
      I2 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I3 => \^fsm_onehot_current_state_reg[6]_0\(1),
      I4 => x_IBUF(4),
      I5 => Q(5),
      O => D(5)
    );
\temp[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFCFE03020002"
    )
        port map (
      I0 => Q(7),
      I1 => \^fsm_onehot_current_state_reg[6]_0\(3),
      I2 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I3 => \^fsm_onehot_current_state_reg[6]_0\(1),
      I4 => x_IBUF(5),
      I5 => Q(6),
      O => D(6)
    );
\temp[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFCFE03020002"
    )
        port map (
      I0 => Q(8),
      I1 => \^fsm_onehot_current_state_reg[6]_0\(3),
      I2 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I3 => \^fsm_onehot_current_state_reg[6]_0\(1),
      I4 => x_IBUF(6),
      I5 => Q(7),
      O => D(7)
    );
\temp[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFCFE03020002"
    )
        port map (
      I0 => Q(9),
      I1 => \^fsm_onehot_current_state_reg[6]_0\(3),
      I2 => \^fsm_onehot_current_state_reg[6]_0\(4),
      I3 => \^fsm_onehot_current_state_reg[6]_0\(1),
      I4 => x_IBUF(7),
      I5 => Q(8),
      O => D(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UO is
  port (
    Q : out STD_LOGIC_VECTOR ( 16 downto 0 );
    \temp_b_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_current_state_reg[4]\ : out STD_LOGIC;
    \temp_reg[13]\ : out STD_LOGIC;
    \temp_reg[13]_0\ : out STD_LOGIC;
    \temp_reg[14]\ : out STD_LOGIC;
    \temp_reg[15]\ : out STD_LOGIC;
    \FSM_onehot_current_state_reg[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_onehot_current_state_reg[3]\ : out STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \FSM_onehot_current_state_reg[7]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reset_IBUF : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \temp_b_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end UO;

architecture STRUCTURE of UO is
  signal \^q\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal addendo_y : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^temp_b_reg[6]\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Q(16 downto 0) <= \^q\(16 downto 0);
  \temp_b_reg[6]\(0) <= \^temp_b_reg[6]\(0);
AQ: entity work.shift_register
     port map (
      CLK => CLK,
      D(12 downto 0) => D(12 downto 0),
      E(0) => E(0),
      \FSM_onehot_current_state_reg[2]\(1 downto 0) => \FSM_onehot_current_state_reg[6]\(2 downto 1),
      \FSM_onehot_current_state_reg[3]\ => \FSM_onehot_current_state_reg[3]\,
      Q(16 downto 0) => \^q\(16 downto 0),
      reset_IBUF => reset_IBUF,
      \temp_reg[13]_0\ => \temp_reg[13]\,
      \temp_reg[13]_1\ => \temp_reg[13]_0\,
      \temp_reg[13]_2\(3 downto 0) => \FSM_onehot_current_state_reg[7]\(3 downto 0),
      \temp_reg[14]_0\ => \temp_reg[14]\,
      \temp_reg[15]_0\ => \temp_reg[15]\,
      \temp_reg[15]_1\(6) => \^temp_b_reg[6]\(0),
      \temp_reg[15]_1\(5 downto 0) => addendo_y(5 downto 0)
    );
contatore: entity work.cont_mod8
     port map (
      CLK => CLK,
      \FSM_onehot_current_state_reg[6]\(1) => \FSM_onehot_current_state_reg[6]\(3),
      \FSM_onehot_current_state_reg[6]\(0) => \FSM_onehot_current_state_reg[6]\(0),
      \FSM_onehot_current_state_reg[7]\(1) => \FSM_onehot_current_state_reg[7]\(4),
      \FSM_onehot_current_state_reg[7]\(0) => \FSM_onehot_current_state_reg[7]\(0),
      reset_IBUF => reset_IBUF
    );
molt: entity work.registro8
     port map (
      CLK => CLK,
      \FSM_onehot_current_state_reg[4]\ => \FSM_onehot_current_state_reg[4]\,
      Q(6) => \^temp_b_reg[6]\(0),
      Q(5 downto 0) => addendo_y(5 downto 0),
      reset_IBUF => reset_IBUF,
      \temp_b_reg[7]_0\(7 downto 0) => \temp_b_reg[7]\(7 downto 0),
      \temp_reg[16]\(1) => \FSM_onehot_current_state_reg[7]\(3),
      \temp_reg[16]\(0) => \FSM_onehot_current_state_reg[7]\(0),
      \temp_reg[16]_0\(0) => \^q\(16)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity moltiplicatore_booth is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \FSM_onehot_current_state_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    x_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLEARED_BTN : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \temp_b_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end moltiplicatore_booth;

architecture STRUCTURE of moltiplicatore_booth is
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal UC_n_15 : STD_LOGIC;
  signal UC_n_16 : STD_LOGIC;
  signal UC_n_19 : STD_LOGIC;
  signal addendo_y : STD_LOGIC_VECTOR ( 6 to 6 );
  signal en_c : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal sig_lm : STD_LOGIC;
  signal sig_sub : STD_LOGIC;
  signal temp : STD_LOGIC_VECTOR ( 0 to 0 );
  signal unita_operativa_n_18 : STD_LOGIC;
  signal unita_operativa_n_19 : STD_LOGIC;
  signal unita_operativa_n_20 : STD_LOGIC;
  signal unita_operativa_n_21 : STD_LOGIC;
  signal unita_operativa_n_22 : STD_LOGIC;
  signal unita_operativa_n_23 : STD_LOGIC;
  signal unita_operativa_n_24 : STD_LOGIC;
  signal unita_operativa_n_25 : STD_LOGIC;
  signal unita_operativa_n_26 : STD_LOGIC;
  signal unita_operativa_n_27 : STD_LOGIC;
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
UC: entity work.unita_controllo
     port map (
      CLEARED_BTN => CLEARED_BTN,
      CLK => CLK,
      D(12 downto 10) => p_1_in(16 downto 14),
      D(9) => p_1_in(10),
      D(8 downto 0) => p_1_in(8 downto 0),
      E(0) => UC_n_19,
      \FSM_onehot_current_state_reg[6]_0\(5) => en_c,
      \FSM_onehot_current_state_reg[6]_0\(4) => sig_sub,
      \FSM_onehot_current_state_reg[6]_0\(3) => UC_n_15,
      \FSM_onehot_current_state_reg[6]_0\(2) => UC_n_16,
      \FSM_onehot_current_state_reg[6]_0\(1) => sig_lm,
      \FSM_onehot_current_state_reg[6]_0\(0) => \FSM_onehot_current_state_reg[0]\(0),
      \FSM_onehot_current_state_reg[7]_0\(4) => unita_operativa_n_23,
      \FSM_onehot_current_state_reg[7]_0\(3) => unita_operativa_n_24,
      \FSM_onehot_current_state_reg[7]_0\(2) => unita_operativa_n_25,
      \FSM_onehot_current_state_reg[7]_0\(1) => unita_operativa_n_26,
      \FSM_onehot_current_state_reg[7]_0\(0) => D(0),
      Q(12 downto 11) => \^q\(15 downto 14),
      Q(10) => \^q\(10),
      Q(9 downto 1) => \^q\(8 downto 0),
      Q(0) => temp(0),
      reset_IBUF => reset_IBUF,
      \temp_reg[10]\ => unita_operativa_n_27,
      \temp_reg[14]\ => unita_operativa_n_20,
      \temp_reg[14]_0\ => unita_operativa_n_21,
      \temp_reg[15]\ => unita_operativa_n_22,
      \temp_reg[16]\ => unita_operativa_n_19,
      \temp_reg[16]_0\ => unita_operativa_n_18,
      \temp_reg[16]_1\(0) => addendo_y(6),
      x_IBUF(7 downto 0) => x_IBUF(7 downto 0)
    );
unita_operativa: entity work.UO
     port map (
      CLK => CLK,
      D(12 downto 10) => p_1_in(16 downto 14),
      D(9) => p_1_in(10),
      D(8 downto 0) => p_1_in(8 downto 0),
      E(0) => UC_n_19,
      \FSM_onehot_current_state_reg[3]\ => unita_operativa_n_27,
      \FSM_onehot_current_state_reg[4]\ => unita_operativa_n_18,
      \FSM_onehot_current_state_reg[6]\(3) => unita_operativa_n_23,
      \FSM_onehot_current_state_reg[6]\(2) => unita_operativa_n_24,
      \FSM_onehot_current_state_reg[6]\(1) => unita_operativa_n_25,
      \FSM_onehot_current_state_reg[6]\(0) => unita_operativa_n_26,
      \FSM_onehot_current_state_reg[7]\(4) => en_c,
      \FSM_onehot_current_state_reg[7]\(3) => sig_sub,
      \FSM_onehot_current_state_reg[7]\(2) => UC_n_15,
      \FSM_onehot_current_state_reg[7]\(1) => UC_n_16,
      \FSM_onehot_current_state_reg[7]\(0) => sig_lm,
      Q(16 downto 1) => \^q\(15 downto 0),
      Q(0) => temp(0),
      reset_IBUF => reset_IBUF,
      \temp_b_reg[6]\(0) => addendo_y(6),
      \temp_b_reg[7]\(7 downto 0) => \temp_b_reg[7]\(7 downto 0),
      \temp_reg[13]\ => unita_operativa_n_19,
      \temp_reg[13]_0\ => unita_operativa_n_20,
      \temp_reg[14]\ => unita_operativa_n_21,
      \temp_reg[15]\ => unita_operativa_n_22
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity molt_booth_on_board is
  port (
    x : in STD_LOGIC_VECTOR ( 7 downto 0 );
    y : in STD_LOGIC_VECTOR ( 7 downto 0 );
    start : in STD_LOGIC;
    clock : in STD_LOGIC;
    z : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of molt_booth_on_board : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of molt_booth_on_board : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of molt_booth_on_board : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of molt_booth_on_board : entity is "f5cd5727";
end molt_booth_on_board;

architecture STRUCTURE of molt_booth_on_board is
  signal CLEARED_BTN : STD_LOGIC;
  signal btnStart_n_1 : STD_LOGIC;
  signal clock_IBUF : STD_LOGIC;
  signal clock_IBUF_BUFG : STD_LOGIC;
  signal molt_booth_n_16 : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal start_IBUF : STD_LOGIC;
  signal x_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal y_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal z_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
btnStart: entity work.ButtonDebouncer
     port map (
      CLEARED_BTN => CLEARED_BTN,
      D(0) => btnStart_n_1,
      Q(0) => molt_booth_n_16,
      clock_IBUF_BUFG => clock_IBUF_BUFG,
      reset_IBUF => reset_IBUF,
      start_IBUF => start_IBUF
    );
clock_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clock_IBUF,
      O => clock_IBUF_BUFG
    );
clock_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clock,
      O => clock_IBUF
    );
molt_booth: entity work.moltiplicatore_booth
     port map (
      CLEARED_BTN => CLEARED_BTN,
      CLK => clock_IBUF_BUFG,
      D(0) => btnStart_n_1,
      \FSM_onehot_current_state_reg[0]\(0) => molt_booth_n_16,
      Q(15 downto 0) => z_OBUF(15 downto 0),
      reset_IBUF => reset_IBUF,
      \temp_b_reg[7]\(7 downto 0) => y_IBUF(7 downto 0),
      x_IBUF(7 downto 0) => x_IBUF(7 downto 0)
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => start,
      O => start_IBUF
    );
\x_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(0),
      O => x_IBUF(0)
    );
\x_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(1),
      O => x_IBUF(1)
    );
\x_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(2),
      O => x_IBUF(2)
    );
\x_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(3),
      O => x_IBUF(3)
    );
\x_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(4),
      O => x_IBUF(4)
    );
\x_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(5),
      O => x_IBUF(5)
    );
\x_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(6),
      O => x_IBUF(6)
    );
\x_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => x(7),
      O => x_IBUF(7)
    );
\y_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(0),
      O => y_IBUF(0)
    );
\y_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(1),
      O => y_IBUF(1)
    );
\y_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(2),
      O => y_IBUF(2)
    );
\y_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(3),
      O => y_IBUF(3)
    );
\y_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(4),
      O => y_IBUF(4)
    );
\y_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(5),
      O => y_IBUF(5)
    );
\y_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(6),
      O => y_IBUF(6)
    );
\y_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => y(7),
      O => y_IBUF(7)
    );
\z_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(0),
      O => z(0)
    );
\z_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(10),
      O => z(10)
    );
\z_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(11),
      O => z(11)
    );
\z_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(12),
      O => z(12)
    );
\z_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(13),
      O => z(13)
    );
\z_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(14),
      O => z(14)
    );
\z_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(15),
      O => z(15)
    );
\z_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(1),
      O => z(1)
    );
\z_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(2),
      O => z(2)
    );
\z_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(3),
      O => z(3)
    );
\z_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(4),
      O => z(4)
    );
\z_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(5),
      O => z(5)
    );
\z_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(6),
      O => z(6)
    );
\z_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(7),
      O => z(7)
    );
\z_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(8),
      O => z(8)
    );
\z_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(9),
      O => z(9)
    );
end STRUCTURE;
