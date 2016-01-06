library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

--use work.cmos_sensor_output_generator_constants.all;
use work.conversion_util.all;

entity tb_lcd is
end tb_lcd;


architecture test of tb_lcd is

	component LCD IS 
	PORT
	(
		as_write :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		reset_n :  IN  STD_LOGIC;
		as_add :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		as_wrdata :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		lcd_rd :  OUT  STD_LOGIC;
		lcd_wr :  OUT  STD_LOGIC;
		lcd_dc :  OUT  STD_LOGIC;
		as_wait_request :  OUT  STD_LOGIC;
		lcd_reset_n :  OUT  STD_LOGIC;
		lcd_data :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	end component;

    -- 10 MHz -> 100 ns period. Duty cycle = 1/2.
    constant CLK_PERIOD      : time := 500 ns;
    constant CLK_HIGH_PERIOD : time := 250 ns;
    constant CLK_LOW_PERIOD  : time := 250 ns;

    signal clk   : std_logic := '0';
    signal reset_n : std_logic := '1';

	signal sim_finished : boolean := false;
	
	signal addr            : std_logic_vector(2 downto 0)                                                := (others => '0');
    signal read            : std_logic                                                                   := '0';
    signal write           : std_logic                                                                   := '0';
    signal wrdata          : std_logic_vector(31 downto 0)                                               := (others => '0');
    signal lcd_data        : std_logic_vector(15 downto 0)                                               := (others => '0');
	signal lcd_dc          : std_logic                                                                   := '0';
	signal lcd_rd          : std_logic                                                                   := '0';
	signal lcd_wr          : std_logic                                                                   := '0';
	signal as_wait_request : std_logic                                                                   := '0';
	signal lcd_reset_n     : std_logic                                                                   := '0';
	signal ext_IRQ     : std_logic                                                                       := '0';
	signal bus_waitReq     : std_logic                                                                   := '0';
	signal bus_read_data_valid     : std_logic                                                           := '0';
	signal bus_read_data     : std_logic_vector(15 downto 0)                                             := (others => '0');
	signal nb_clk : std_logic_vector(31 downto 0) := (others => '0');
begin

    clk_generation : process
    begin
        if not sim_finished then
            clk <= '1';
            wait for CLK_HIGH_PERIOD;
			nb_clk <= nb_clk + 1;
            clk <= '0';
            wait for CLK_LOW_PERIOD;
        else
            wait;
        end if;
    end process;
	
	lcd_0: entity work.LCD port map( 
		as_write => write,
		clk  => clk,
		reset_n  => reset_n,
		as_add  => addr,
		as_wrdata  => wrdata,
		lcd_rd  => lcd_rd,
		lcd_wr  => lcd_wr,
		lcd_dc  => lcd_dc,
		as_wait_request  => as_wait_request,
		lcd_reset_n  => lcd_reset_n,
		lcd_data  => lcd_data,
		ext_IRQ => ext_IRQ,
		bus_waitReq => bus_waitReq,
		bus_read_data_valid => bus_read_data_valid,
		bus_read_data => bus_read_data
	);
	
	sim : process
        procedure perform_reset is
        begin
            wait until falling_edge(clk);
            reset_n <= '0';

            wait until falling_edge(clk);
            reset_n <= '1';
        end procedure perform_reset;

        procedure write_register(constant ofst : in natural;
                                 constant val  : in natural) is
        begin
            wait until falling_edge(clk);
            addr   <= to_std_logic_vector(ofst, addr'length);
            write  <= '1';
            wrdata <= to_std_logic_vector(val, wrdata'length);

            wait until falling_edge(clk) and as_wait_request = '0';
            addr   <= (others => '0');
            write  <= '0';
            wrdata <= (others => '0');
        end procedure write_register;

        procedure wait_clock_cycles(constant count : in positive) is
        begin
            wait for count * CLK_PERIOD;
        end procedure wait_clock_cycles;

    begin
        perform_reset;

        --write_register(6, 0);
		--wait_clock_cycles(5);
		--write_register(6, 1);
		write_register(1, 9999);
		write_register(7, 1);

        wait_clock_cycles(3);
		
		ext_IRQ <= '1';
		bus_waitReq <= '1';
		wait_clock_cycles(5);
		bus_waitReq <= '0';
		wait_clock_cycles(2);
		wait until rising_edge(clk);
		bus_read_data_valid <= '1';
		bus_read_data <= X"1234";
		wait until rising_edge(clk);
		bus_read_data <= X"5678";
		wait until rising_edge(clk);
		bus_read_data <= X"9876";
		wait until rising_edge(clk);
		bus_read_data_valid <= '0';
		bus_read_data <= X"0001";
		wait_clock_cycles(10);
        sim_finished <= true;
        wait;
    end process;

end architecture test;
