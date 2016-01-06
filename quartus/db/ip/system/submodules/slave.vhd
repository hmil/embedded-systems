library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library work;

entity slave is 
	port
	(
	-- BUS AVALON --
		as_clk :  in  std_logic;
		as_reset_n : in std_logic;
		as_wrdata : in std_logic_vector(31 downto 0);
		as_add : in std_logic_vector(2 downto 0);
		as_write : in std_logic;
		as_wait_Request : out std_logic;
		
	-- INTERNAL --
		-- to Master --
		as_init_ok : out std_logic;
		add_buf_0_out  : out std_logic_vector(31 downto 0);
		add_buf_1_out  : out std_logic_vector(31 downto 0);
		add_buf_2_out  : out std_logic_vector(31 downto 0);
		-- to interface --
		as_valid : out std_logic;
		as_data : out std_logic_vector(15 downto 0);		
		as_dc : out std_logic;
		-- from interface --
		if_ack : in std_logic;
		-- to lcd --
		lcd_reset_n : out std_logic
	);
end slave;

architecture implementation of slave is
type state_type is (WAIT_STATE, WRITE_STATE, LCD_CONTROL);
signal state, next_state : state_type;
signal init_ok_reg, next_init_ok_reg, reset_reg, next_reset_reg : std_logic;
signal add_buf_0, add_buf_1, add_buf_2, width_reg, height_reg, data_reg : std_logic_vector(31 downto 0);
signal next_add_buf_0, next_add_buf_1, next_add_buf_2, next_width_reg, next_height_reg, next_data_reg : std_logic_vector(31 downto 0);
signal add_reg, next_add_reg : std_logic_vector(2 downto 0);
begin

	as_init_ok <= init_ok_reg;
	lcd_reset_n <= reset_reg;
	
	add_buf_0_out <= add_buf_0;
	add_buf_1_out <= add_buf_1;
	add_buf_2_out <= add_buf_2;
	
	process(as_clk, as_reset_n)
	begin 
		if as_reset_n = '0' then 
			state <= WAIT_STATE;
			add_buf_0 <= (others => '0');
			add_buf_1 <= (others => '0');
			add_buf_2 <= (others => '0');
			width_reg <= (others => '0');
			height_reg <= (others => '0');
			reset_reg <= '1';
			data_reg <= (others => '0');
			init_ok_reg <= '0';
			add_reg <= (others => '0');
		elsif rising_edge(as_clk) then 
			state <= next_state;
			add_buf_0 <= next_add_buf_0;
			add_buf_1 <= next_add_buf_1;
			add_buf_2 <= next_add_buf_2;
			width_reg <= next_width_reg;
			height_reg <= next_height_reg;
			reset_reg <= next_reset_reg;
			data_reg <= next_data_reg;
			init_ok_reg <= next_init_ok_reg;
			add_reg <= next_add_reg;
		end if;
	end process;
	
	process(state, as_write, as_add, data_reg, as_wrdata, if_ack, reset_reg, add_reg, add_buf_0,add_buf_1, add_buf_2, width_reg, height_reg, next_add_reg)
	begin
		next_state <= state;
		as_data <= (others => '0');
		as_dc <= '0';
		as_valid <= '0';
		
		as_wait_Request <= '1';
		
		next_add_reg <= add_reg;
		next_add_buf_0 <= add_buf_0;
		next_add_buf_1 <= add_buf_1;
		next_add_buf_2 <= add_buf_2;
      next_width_reg <= width_reg;
		next_height_reg <= height_reg;
		next_reset_reg <= reset_reg;
		next_data_reg <= data_reg;
		next_init_ok_reg <= init_ok_reg;
		
		case state is 
		when WAIT_STATE => 
			next_add_reg <= as_add;
			next_data_reg <= as_wrdata;
			if as_write = '1' and as_add(2 downto 0) /= "000" then 
				next_state <= WRITE_STATE;
			elsif as_write = '1' then 
				next_state <= LCD_CONTROL;
			end if;
			
		when WRITE_STATE => 
			case add_reg is
				when "001" => next_add_buf_0 <= data_reg;
				when "010" => next_add_buf_1 <= data_reg;
				when "011" => next_add_buf_2 <= data_reg;
				when "100" => next_width_reg <= data_reg;
				when "101" => next_height_reg <= data_reg;
				when "110" => next_reset_reg <= data_reg(0);
				when "111" => next_init_ok_reg <= data_reg(0);
				when others =>
			end case;
			next_state <= WAIT_STATE;
			as_wait_Request <= '0';
			
		when LCD_CONTROL => 
			as_valid <= '1';
			as_data <= data_reg(15 downto 0);
			as_dc <= data_reg(16);
			as_wait_Request <= '1';
			if if_ack = '1' then 
				next_state <= WAIT_STATE;
				as_wait_Request <= '0';
				next_data_reg <= (others => '0');
			end if;
			
		when others => 
		end case;
	end process;
	
end implementation;