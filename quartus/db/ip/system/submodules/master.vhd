library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

library work;
-- max = 76800 pixels = X"12C00"
-- burstCount = 240 = X"F0"
entity master is
	port
	(
		-- global
		am_clk : in std_logic;
		am_reset_n : in std_logic;
		-- To FIFO
		fifo_wrData : out std_logic_vector(15 downto 0);
		fifo_wrreq     : out std_logic;
		-- From FIFO
		fifo_almostFull : in std_logic;
		-- From slave
		as_initOk : in std_logic;
		add_buf_0 : in std_logic_vector(31 downto 0);
		add_buf_1 : in std_logic_vector(31 downto 0);
		add_buf_2 : in std_logic_vector(31 downto 0);
		-- To bus
		bus_add  : out std_logic_vector(31 downto 0);
		bus_read : out std_logic;
		bus_BE   : out std_logic_vector(1 downto 0);
		bus_burstCount : out std_logic_vector(7 downto 0);

		-- From bus
		bus_waitReq : in std_logic;
		bus_read_data_valid : in std_logic;
		bus_read_data : in std_logic_vector(15 downto 0);
		-- IRQ in
		ext_IRQ : in std_logic;
		-- IRQ out
		am_readOK : out std_logic
	);
end master;

architecture implementation of master is
type state_type is (INIT, WAIT_STATE, READ_INIT, WAIT_SPACE, BUS_REQ, RCV_DATA, OFFSET_STATE, ACK);
signal state, next_state : state_type;
signal current_buffer, next_buffer : std_logic_vector(1 downto 0);
signal offset, next_offset : std_logic_vector(24 downto 0);
signal next_burst_counter, burst_counter : std_logic_vector(16 downto 0);

begin

	bus_BE <= "11";

	process(am_clk, am_reset_n)
	begin
		if am_reset_n = '0' then
			state <= INIT;
		elsif rising_edge(am_clk) then
			state <= next_state;
			current_buffer <= next_buffer;
			offset <= next_offset;
			burst_counter <= next_burst_counter;
		end if;
	end process;

	process(state, current_buffer, offset, burst_counter, add_buf_0, add_buf_1, add_buf_2, bus_read_data, bus_waitReq, bus_read_data_valid, as_initOk,ext_IRQ, fifo_almostFull)
	begin

		next_state <= state;
		next_buffer <= current_buffer;
		next_offset <= offset;
		next_burst_counter <= burst_counter;
		bus_read <= '0';
		bus_burstCount <= X"00";
		fifo_wrData <= (others => '0');
		fifo_wrreq <= '0';
		bus_add <= (others => '0');
		am_readOK <= '0';
		case state is
		when INIT =>
			next_buffer <= "10";
			if as_initOk = '1' then
				next_state <= WAIT_STATE;
			end if;

		when WAIT_STATE =>
			am_readOk <= '0';
			if ext_IRQ = '1' then
				next_state <= READ_INIT;
				if current_buffer = "10" then
					next_buffer <= "00";
				else
					next_buffer <= current_buffer + 1;
				end if;
			end if;

		when READ_INIT =>
			next_offset <= (others => '0');
			next_burst_counter <= (others => '0');
			next_state <= WAIT_SPACE;

		when WAIT_SPACE =>
			if fifo_almostFull = '0' then
				next_state <= BUS_REQ;
			end if;

		when BUS_REQ =>
			bus_read <= '1';
			bus_burstCount <= X"F0";
			case current_buffer is
				when "00" => bus_add <= offset + add_buf_0;
				when "01" => bus_add <= offset + add_buf_1;
				when "10" => bus_add <= offset + add_buf_2;
				when others =>
			end case;

			if bus_waitReq = '0' then
				next_state <= RCV_DATA;
				if bus_read_data_valid = '1' then
					fifo_wrData <= bus_read_data;
					fifo_wrreq <= '1';
					next_burst_counter <= burst_counter + 1;
				end if;
			end if;

		when RCV_DATA =>
			if bus_read_data_valid = '1' then
				fifo_wrData <= bus_read_data;
				fifo_wrreq <= '1';
				next_burst_counter <= burst_counter + 1;
			end if;
			if burst_counter = X"F0" then
				next_state <= OFFSET_STATE;
			end if;

		when OFFSET_STATE =>
			next_offset <= offset + X"01E0";
			if offset + X"0001E0" >= X"25800" then
				next_state <= ACK;
			else
				next_state <= WAIT_SPACE;
			end if;
			next_burst_counter <= (others => '0');

		when ACK =>
			am_readOk <= '1';
			-- if ext_IRQ = '0' then --'0' <= correct
				next_state <= WAIT_STATE;
			-- end if;

		when others =>
		end case;
	end process;

end implementation;
