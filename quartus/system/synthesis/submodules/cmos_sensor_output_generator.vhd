library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.cmos_sensor_output_generator_constants.all;

entity cmos_sensor_output_generator is
    generic(
        PIX_DEPTH : positive := 8
    );
    port(
        clk         : in  std_logic;
        reset       : in  std_logic;

        -- Avalon-MM slave
        addr        : in  std_logic_vector(2 downto 0);
        read        : in  std_logic;
        write       : in  std_logic;
        rddata      : out std_logic_vector(CMOS_SENSOR_OUTPUT_GENERATOR_MM_S_DATA_WIDTH - 1 downto 0);
        wrdata      : in  std_logic_vector(CMOS_SENSOR_OUTPUT_GENERATOR_MM_S_DATA_WIDTH - 1 downto 0);

        frame_valid : out std_logic;
        line_valid  : out std_logic;
        data        : out std_logic_vector(PIX_DEPTH - 1 downto 0)
    );
end entity cmos_sensor_output_generator;

architecture rtl of cmos_sensor_output_generator is
    signal reg_config_row_size                 : positive := CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_ROW_SIZE_DEFAULT;
    signal reg_config_col_size                 : positive := CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_COL_SIZE_DEFAULT;
    signal reg_config_frame_frame_blank_cycles : positive := CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_FRAME_BLANK_CYCLES_DEFAULT;
    signal reg_config_frame_line_blank_cycles  : natural  := CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_LINE_BLANK_CYCLES_DEFAULT;
    signal reg_config_line_line_blank_cycles   : positive := CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_LINE_BLANK_CYCLES_DEFAULT;
    signal reg_config_line_frame_blank_cycles  : natural  := CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_FRAME_BLANK_CYCLES_DEFAULT;
    signal reg_config_random                   : boolean  := CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_RANDOM_DEFAULT;
    signal reg_go                              : boolean  := false;

    signal reg_read : boolean := false;
    signal reg_addr : natural := 0;

    signal reg_row                       : natural := 0;
    signal reg_col                       : natural := 0;
    signal reg_frame_frame_blank_counter : natural := 0;
    signal reg_frame_line_blank_counter  : natural := 0;
    signal reg_line_line_blank_counter   : natural := 0;
    signal reg_line_frame_blank_counter  : natural := 0;

    signal reg_cmos_data        : std_logic_vector(data'range) := (others => '0');
    signal reg_cmos_frame_valid : std_logic                    := '0';
    signal reg_cmos_line_valid  : std_logic                    := '0';

    type state_type is (STATE_FRAME_FRAME_BLANK, STATE_FRAME_LINE_BLANK, STATE_VALID, STATE_LINE_LINE_BLANK, STATE_LINE_FRAME_BLANK);
    signal reg_state : state_type := STATE_FRAME_FRAME_BLANK;

    signal random_num : std_logic_vector(data'length - 1 downto 0) := (others => '0');

    function to_std_logic(x : boolean) return std_logic is
    begin
        if x then
            return '1';
        else
            return '0';
        end if;
    end function to_std_logic;

    function to_boolean(x : std_logic) return boolean is
    begin
        if x = '1' then
            return true;
        else
            return false;
        end if;
    end function to_boolean;

begin
    cmos_sensor_output_generator_random_inst : entity work.cmos_sensor_output_generator_random
        generic map(width => data'length)
        port map(clk        => clk,
                 random_num => random_num);

    data        <= reg_cmos_data;
    frame_valid <= reg_cmos_frame_valid;
    line_valid  <= reg_cmos_line_valid;

    process(reset, clk)
    begin
        if reset = '1' then
            reg_config_row_size                 <= CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_ROW_SIZE_DEFAULT;
            reg_config_col_size                 <= CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_COL_SIZE_DEFAULT;
            reg_config_frame_frame_blank_cycles <= CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_FRAME_BLANK_CYCLES_DEFAULT;
            reg_config_frame_line_blank_cycles  <= CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_LINE_BLANK_CYCLES_DEFAULT;
            reg_config_line_line_blank_cycles   <= CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_LINE_BLANK_CYCLES_DEFAULT;
            reg_config_line_frame_blank_cycles  <= CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_FRAME_BLANK_CYCLES_DEFAULT;
            reg_config_random                   <= CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_RANDOM_DEFAULT;
            reg_go                              <= false;
            reg_read                            <= false;
            reg_addr                            <= 0;
        elsif rising_edge(clk) then
            reg_read <= to_boolean(read);
            reg_addr <= to_integer(unsigned(addr));

            if write = '1' then
                case to_integer(unsigned(addr)) is
                    when CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_ROW_SIZE_OFST =>
                        if not reg_go then
                            reg_config_row_size <= to_integer(unsigned(wrdata));
                        end if;
                    when CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_COL_SIZE_OFST =>
                        if not reg_go then
                            reg_config_col_size <= to_integer(unsigned(wrdata));
                        end if;
                    when CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_FRAME_BLANK_CYCLES_OFST =>
                        if not reg_go then
                            reg_config_frame_frame_blank_cycles <= to_integer(unsigned(wrdata));
                        end if;
                    when CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_LINE_BLANK_CYCLES_OFST =>
                        if not reg_go then
                            reg_config_frame_line_blank_cycles <= to_integer(unsigned(wrdata));
                        end if;
                    when CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_LINE_BLANK_CYCLES_OFST =>
                        if not reg_go then
                            reg_config_line_line_blank_cycles <= to_integer(unsigned(wrdata));
                        end if;
                    when CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_FRAME_BLANK_CYCLES_OFST =>
                        if not reg_go then
                            reg_config_line_frame_blank_cycles <= to_integer(unsigned(wrdata));
                        end if;
                    when CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_RANDOM_OFST =>
                        if not reg_go then
                            if to_integer(unsigned(wrdata)) = CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_RANDOM then
                                reg_config_random <= true;
                            elsif to_integer(unsigned(wrdata)) = CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_SEQUENTIAL then
                                reg_config_random <= false;
                            end if;
                        end if;
                    when CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_OFST =>
                        if to_integer(unsigned(wrdata)) = CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_START then
                            reg_go <= true;
                        elsif to_integer(unsigned(wrdata)) = CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_STOP then
                            reg_go <= false;
                        end if;
                    when others =>
                end case;
            end if;
        end if;
    end process;

    process(reg_addr, reg_config_col_size, reg_config_frame_frame_blank_cycles, reg_config_frame_line_blank_cycles, reg_config_line_frame_blank_cycles, reg_config_line_line_blank_cycles, reg_config_random, reg_config_row_size, reg_read)
    begin
        rddata <= (others => '0');
        if reg_read then
            case reg_addr is
                when CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_ROW_SIZE_OFST =>
                    rddata <= std_logic_vector(to_unsigned(reg_config_row_size, rddata'length));
                when CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_COL_SIZE_OFST =>
                    rddata <= std_logic_vector(to_unsigned(reg_config_col_size, rddata'length));
                when CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_FRAME_BLANK_CYCLES_OFST =>
                    rddata <= std_logic_vector(to_unsigned(reg_config_frame_frame_blank_cycles, rddata'length));
                when CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_LINE_BLANK_CYCLES_OFST =>
                    rddata <= std_logic_vector(to_unsigned(reg_config_frame_line_blank_cycles, rddata'length));
                when CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_LINE_BLANK_CYCLES_OFST =>
                    rddata <= std_logic_vector(to_unsigned(reg_config_line_line_blank_cycles, rddata'length));
                when CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_FRAME_BLANK_CYCLES_OFST =>
                    rddata <= std_logic_vector(to_unsigned(reg_config_line_frame_blank_cycles, rddata'length));
                when CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_RANDOM_OFST =>
                    if reg_config_random then
                        rddata <= std_logic_vector(to_unsigned(CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_RANDOM, rddata'length));
                    else
                        rddata <= std_logic_vector(to_unsigned(CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_SEQUENTIAL, rddata'length));
                    end if;
                when others =>
                    null;
            end case;
        end if;
    end process;

    process(reset, clk)
    begin
        if reset = '1' then
            reg_row                       <= 0;
            reg_col                       <= 0;
            reg_frame_frame_blank_counter <= 0;
            reg_frame_line_blank_counter  <= 0;
            reg_line_line_blank_counter   <= 0;
            reg_line_frame_blank_counter  <= 0;
            reg_cmos_data                 <= (others => '0');
            reg_cmos_frame_valid          <= '0';
            reg_cmos_line_valid           <= '0';
            reg_state                     <= STATE_FRAME_FRAME_BLANK;
        elsif rising_edge(clk) then
            reg_cmos_data        <= (others => '0');
            reg_cmos_frame_valid <= '1';
            reg_cmos_line_valid  <= '0';

            case reg_state is
                when STATE_FRAME_FRAME_BLANK =>
                    reg_col              <= 0;
                    reg_row              <= 0;
                    reg_cmos_frame_valid <= '0';

                    if reg_go then
                        if reg_frame_frame_blank_counter < reg_config_frame_frame_blank_cycles - 1 then
                            reg_frame_frame_blank_counter <= reg_frame_frame_blank_counter + 1;
                        else
                            reg_frame_frame_blank_counter <= 0;
                            if reg_config_frame_line_blank_cycles = 0 then
                                reg_state <= STATE_VALID;
                            else
                                reg_state <= STATE_FRAME_LINE_BLANK;
                            end if;
                        end if;
                    end if;

                when STATE_FRAME_LINE_BLANK =>
                    if reg_frame_line_blank_counter < reg_config_frame_line_blank_cycles - 1 then
                        reg_frame_line_blank_counter <= reg_frame_line_blank_counter + 1;
                    else
                        reg_frame_line_blank_counter <= 0;
                        reg_state                    <= STATE_VALID;
                    end if;

                WHEN STATE_VALID =>
                    reg_cmos_line_valid <= '1';

                    if reg_config_random then
                        reg_cmos_data <= random_num;
                    else
                        reg_cmos_data <= std_logic_vector(to_unsigned(reg_row * reg_config_col_size + reg_col, data'length));
                    end if;

                    if reg_col < reg_config_col_size - 1 then
                        reg_col <= reg_col + 1;
                    else
                        reg_col <= 0;
                        if reg_row < reg_config_row_size - 1 then
                            reg_row   <= reg_row + 1;
                            reg_state <= STATE_LINE_LINE_BLANK;
                        else
                            reg_row <= 0;
                            if reg_config_line_frame_blank_cycles = 0 then
                                reg_state <= STATE_FRAME_FRAME_BLANK;
                            else
                                reg_state <= STATE_LINE_FRAME_BLANK;
                            end if;
                        end if;
                    end if;

                when STATE_LINE_LINE_BLANK =>
                    if reg_line_line_blank_counter < reg_config_line_line_blank_cycles - 1 then
                        reg_line_line_blank_counter <= reg_line_line_blank_counter + 1;
                    else
                        reg_line_line_blank_counter <= 0;
                        reg_state                   <= STATE_VALID;
                    end if;

                when STATE_LINE_FRAME_BLANK =>
                    if reg_line_frame_blank_counter < reg_config_line_frame_blank_cycles - 1 then
                        reg_line_frame_blank_counter <= reg_line_frame_blank_counter + 1;
                    else
                        reg_line_frame_blank_counter <= 0;
                        reg_state                    <= STATE_FRAME_FRAME_BLANK;
                    end if;
            end case;
        end if;
    end process;

end architecture rtl;
