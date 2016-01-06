library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library work;

entity controller is 
	port
	(
	-- BUS AVALON --
		if_clk :  in  std_logic;
		if_reset_n : in std_logic;
		
	-- INTERNAL --
		-- from Slave --
		as_init_ok : in std_logic;
		as_valid : in std_logic;
		as_data : in std_logic_vector(15 downto 0);		
		as_dc : in std_logic;
		-- to interface --
		if_ack : out std_logic;
		-- to LCD --
		lcd_data : out std_logic_vector(15 downto 0);
		lcd_dc : out std_logic;
		lcd_rd : out std_logic;
		lcd_wr : out std_logic;
		-- from FIFO --
		fifo_almost_empty : in std_logic;
		fifo_data : in std_logic_vector(15 downto 0);
		-- to fifo --
		if_rdFifo : out std_logic
		
	);
end controller;

architecture implementation of controller is
type state_type is (INIT, WAIT_STATE, RESET_COL_1, RESET_COL_2, RESET_COL_3, RESET_PAGE_1, RESET_PAGE_2, RESET_PAGE_3, DEPILE, DEPILE_2, DEPILE_3, DEPILE_4, DEPILE_5, DEPILE_6, PIPE);
signal state, next_state : state_type;
signal burst_counter, next_burst_counter : std_logic_vector(16 downto 0);
begin

	process(if_clk, if_reset_n)
	begin 
		if if_reset_n = '0' then 
			state <= INIT;
			burst_counter <= (others => '0');
		elsif rising_edge(if_clk) then 
			state <= next_state;
			burst_counter <= next_burst_counter;
		end if;
	end process;
	
	
	process(state, as_valid, as_init_ok, as_data, as_dc, fifo_almost_empty, fifo_data, burst_counter)
	begin
	
		next_state <= state;
		if_rdFifo <= '0';
		lcd_dc <= '1';
		lcd_rd <= '1';
		lcd_wr <= '1'; 
		lcd_data <= (others => '0');
		next_burst_counter <= burst_counter;
		if_ack <= '0';
		case state is 
		when INIT =>
			if as_valid = '1' then
				next_state <= PIPE;
			elsif as_init_ok = '1' then
				next_state <= WAIT_STATE;
			end if;
		
		when WAIT_STATE => 
			if fifo_almost_empty = '0' then
				lcd_dc <= '1';
				lcd_wr <= '0';
				if_rdFifo <= '1';
				next_state <= DEPILE_2;
			else 
				next_state <= WAIT_STATE;
			end if;
			
		when DEPILE_2 =>
			lcd_data <= fifo_data;
			lcd_dc <= '1';
			lcd_wr <= '0'; 
			next_burst_counter <= burst_counter + 1;
			next_state <= DEPILE_3;
		
		when DEPILE_3 =>
			lcd_data <= fifo_data;
			lcd_dc <= '1';
			lcd_wr <= '1'; 
			next_state <= DEPILE_4;
			
			
		when DEPILE_4 =>
			lcd_data <= fifo_data;
			lcd_wr <= '1'; 
			lcd_dc <= '1';
			next_state <= DEPILE_5;
			
			
		when DEPILE_5 =>
			lcd_wr <= '0'; 
			lcd_dc <= '1';
			next_state <= WAIT_STATE;
			
		when PIPE => 
			lcd_data <= as_data;
			lcd_dc <= as_dc;
			lcd_wr <= '0';
			if_ack <= '1';
			next_state <= INIT;
			
		when others => 
		
		end case;
	end process;
	
end implementation;