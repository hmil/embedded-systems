-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"
-- CREATED		"Sun Jan 03 09:34:41 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY LCD IS 
	PORT
	(
		as_write :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		reset_n :  IN  STD_LOGIC;
		ext_IRQ :  IN  STD_LOGIC;
		bus_waitReq :  IN  STD_LOGIC;
		bus_read_data_valid :  IN  STD_LOGIC;
		as_add :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		as_wrdata :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		bus_read_data :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		lcd_rd :  OUT  STD_LOGIC;
		lcd_wr :  OUT  STD_LOGIC;
		lcd_dc :  OUT  STD_LOGIC;
		as_wait_request :  OUT  STD_LOGIC;
		lcd_reset_n :  OUT  STD_LOGIC;
		am_readOK :  OUT  STD_LOGIC;
		bus_read :  OUT  STD_LOGIC;
		bus_add :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		bus_BE :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		bus_burstCount :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		lcd_data :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END LCD;

ARCHITECTURE bdf_type OF LCD IS 

COMPONENT master
	PORT(am_clk : IN STD_LOGIC;
		 am_reset_n : IN STD_LOGIC;
		 fifo_almostFull : IN STD_LOGIC;
		 as_initOk : IN STD_LOGIC;
		 bus_waitReq : IN STD_LOGIC;
		 bus_read_data_valid : IN STD_LOGIC;
		 ext_IRQ : IN STD_LOGIC;
		 add_buf_0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 add_buf_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 add_buf_2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bus_read_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 fifo_wrreq : OUT STD_LOGIC;
		 bus_read : OUT STD_LOGIC;
		 am_readOK : OUT STD_LOGIC;
		 bus_add : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 bus_BE : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		 bus_burstCount : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 fifo_wrData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT slave
	PORT(as_clk : IN STD_LOGIC;
		 as_reset_n : IN STD_LOGIC;
		 as_write : IN STD_LOGIC;
		 if_ack : IN STD_LOGIC;
		 as_add : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 as_wrdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 as_wait_Request : OUT STD_LOGIC;
		 as_init_ok : OUT STD_LOGIC;
		 as_valid : OUT STD_LOGIC;
		 as_dc : OUT STD_LOGIC;
		 lcd_reset_n : OUT STD_LOGIC;
		 add_buf_0_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 add_buf_1_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 add_buf_2_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 as_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT fifo
	PORT(wrreq : IN STD_LOGIC;
		 rdreq : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 aclr : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 almost_full : OUT STD_LOGIC;
		 almost_empty : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT controller
	PORT(if_clk : IN STD_LOGIC;
		 if_reset_n : IN STD_LOGIC;
		 as_init_ok : IN STD_LOGIC;
		 as_valid : IN STD_LOGIC;
		 as_dc : IN STD_LOGIC;
		 fifo_almost_empty : IN STD_LOGIC;
		 as_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 fifo_data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 if_ack : OUT STD_LOGIC;
		 lcd_dc : OUT STD_LOGIC;
		 lcd_rd : OUT STD_LOGIC;
		 lcd_wr : OUT STD_LOGIC;
		 if_rdFifo : OUT STD_LOGIC;
		 lcd_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(15 DOWNTO 0);


BEGIN 



b2v_inst : master
PORT MAP(am_clk => clk,
		 am_reset_n => reset_n,
		 fifo_almostFull => SYNTHESIZED_WIRE_0,
		 as_initOk => SYNTHESIZED_WIRE_16,
		 bus_waitReq => bus_waitReq,
		 bus_read_data_valid => bus_read_data_valid,
		 ext_IRQ => ext_IRQ,
		 add_buf_0 => SYNTHESIZED_WIRE_2,
		 add_buf_1 => SYNTHESIZED_WIRE_3,
		 add_buf_2 => SYNTHESIZED_WIRE_4,
		 bus_read_data => bus_read_data,
		 fifo_wrreq => SYNTHESIZED_WIRE_6,
		 bus_read => bus_read,
		 am_readOK => am_readOK,
		 bus_add => bus_add,
		 bus_BE => bus_BE,
		 bus_burstCount => bus_burstCount,
		 fifo_wrData => SYNTHESIZED_WIRE_9);


b2v_inst12 : slave
PORT MAP(as_clk => clk,
		 as_reset_n => reset_n,
		 as_write => as_write,
		 if_ack => SYNTHESIZED_WIRE_5,
		 as_add => as_add,
		 as_wrdata => as_wrdata,
		 as_wait_Request => as_wait_request,
		 as_init_ok => SYNTHESIZED_WIRE_16,
		 as_valid => SYNTHESIZED_WIRE_11,
		 as_dc => SYNTHESIZED_WIRE_12,
		 lcd_reset_n => lcd_reset_n,
		 add_buf_0_out => SYNTHESIZED_WIRE_2,
		 add_buf_1_out => SYNTHESIZED_WIRE_3,
		 add_buf_2_out => SYNTHESIZED_WIRE_4,
		 as_data => SYNTHESIZED_WIRE_14);


b2v_inst34 : fifo
PORT MAP(wrreq => SYNTHESIZED_WIRE_6,
		 rdreq => SYNTHESIZED_WIRE_7,
		 clock => clk,
		 aclr => SYNTHESIZED_WIRE_8,
		 data => SYNTHESIZED_WIRE_9,
		 almost_full => SYNTHESIZED_WIRE_0,
		 almost_empty => SYNTHESIZED_WIRE_13,
		 q => SYNTHESIZED_WIRE_15);


SYNTHESIZED_WIRE_8 <= NOT(reset_n);



b2v_inst5 : controller
PORT MAP(if_clk => clk,
		 if_reset_n => reset_n,
		 as_init_ok => SYNTHESIZED_WIRE_16,
		 as_valid => SYNTHESIZED_WIRE_11,
		 as_dc => SYNTHESIZED_WIRE_12,
		 fifo_almost_empty => SYNTHESIZED_WIRE_13,
		 as_data => SYNTHESIZED_WIRE_14,
		 fifo_data => SYNTHESIZED_WIRE_15,
		 if_ack => SYNTHESIZED_WIRE_5,
		 lcd_dc => lcd_dc,
		 lcd_rd => lcd_rd,
		 lcd_wr => lcd_wr,
		 if_rdFifo => SYNTHESIZED_WIRE_7,
		 lcd_data => lcd_data);


END bdf_type;