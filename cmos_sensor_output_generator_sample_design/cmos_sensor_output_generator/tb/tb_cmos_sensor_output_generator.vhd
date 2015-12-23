library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.cmos_sensor_output_generator_constants.all;
use work.conversion_util.all;

entity tb_cmos_sensor_output_generator is
end tb_cmos_sensor_output_generator;

architecture test of tb_cmos_sensor_output_generator is
    -- 10 MHz -> 100 ns period. Duty cycle = 1/2.
    constant CLK_PERIOD      : time := 100 ns;
    constant CLK_HIGH_PERIOD : time := 50 ns;
    constant CLK_LOW_PERIOD  : time := 50 ns;

    signal clk   : std_logic := '0';
    signal reset : std_logic := '0';

    signal sim_finished : boolean := false;

    -- cmos_sensor_output_generator --------------------------------------------
    constant PIX_DEPTH                : positive := 8;
    constant ROW_SIZE                 : positive := 4;
    constant COL_SIZE                 : positive := 5;
    constant FRAME_FRAME_BLANK_CYCLES : positive := 1;
    constant FRAME_LINE_BLANK_CYCLES  : natural  := 0;
    constant LINE_LINE_BLANK_CYCLES   : positive := 1;
    constant LINE_FRAME_BLANK_CYCLES  : natural  := 0;

    signal addr        : std_logic_vector(2 downto 0)                                                := (others => '0');
    signal read        : std_logic                                                                   := '0';
    signal write       : std_logic                                                                   := '0';
    signal rddata      : std_logic_vector(CMOS_SENSOR_OUTPUT_GENERATOR_MM_S_DATA_WIDTH - 1 downto 0) := (others => '0');
    signal wrdata      : std_logic_vector(CMOS_SENSOR_OUTPUT_GENERATOR_MM_S_DATA_WIDTH - 1 downto 0) := (others => '0');
    signal frame_valid : std_logic                                                                   := '0';
    signal line_valid  : std_logic                                                                   := '0';
    signal data        : std_logic_vector(PIX_DEPTH - 1 downto 0)                                    := (others => '0');

begin
    clk_generation : process
    begin
        if not sim_finished then
            clk <= '1';
            wait for CLK_HIGH_PERIOD;
            clk <= '0';
            wait for CLK_LOW_PERIOD;
        else
            wait;
        end if;
    end process;

    cmos_sensor_output_generator_inst : entity work.cmos_sensor_output_generator
        generic map(PIX_DEPTH => PIX_DEPTH)
        port map(clk         => clk,
                 reset       => reset,
                 addr        => addr,
                 read        => read,
                 write       => write,
                 rddata      => rddata,
                 wrdata      => wrdata,
                 frame_valid => frame_valid,
                 line_valid  => line_valid,
                 data        => data);

    sim : process
        procedure perform_reset is
        begin
            wait until falling_edge(clk);
            reset <= '1';

            wait until falling_edge(clk);
            reset <= '0';
        end procedure perform_reset;

        procedure write_register(constant ofst : in natural;
                                 constant val  : in natural) is
        begin
            wait until falling_edge(clk);
            addr   <= to_std_logic_vector(ofst, addr'length);
            write  <= '1';
            wrdata <= to_std_logic_vector(val, wrdata'length);

            wait until falling_edge(clk);
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

        write_register(CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_ROW_SIZE_OFST, ROW_SIZE);
        write_register(CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_COL_SIZE_OFST, COL_SIZE);
        write_register(CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_FRAME_BLANK_CYCLES_OFST, FRAME_FRAME_BLANK_CYCLES);
        write_register(CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_LINE_BLANK_CYCLES_OFST, FRAME_LINE_BLANK_CYCLES);
        write_register(CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_LINE_BLANK_CYCLES_OFST, LINE_LINE_BLANK_CYCLES);
        write_register(CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_FRAME_BLANK_CYCLES_OFST, LINE_FRAME_BLANK_CYCLES);
        write_register(CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_OFST, CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_START);

        wait_clock_cycles(100);

        write_register(CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_OFST, CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_STOP);
        wait until falling_edge(frame_valid);
        wait_clock_cycles(10);

        sim_finished <= true;
        wait;
    end process;

end architecture test;
