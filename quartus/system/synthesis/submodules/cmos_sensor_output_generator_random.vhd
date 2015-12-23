-- PRNG from vhdlguru: http://vhdlguru.blogspot.ch/2010/03/random-number-generator-in-vhdl.html

library ieee;
use ieee.std_logic_1164.all;

entity cmos_sensor_output_generator_random is
    generic(width : integer := 32);
    port(
        clk        : in  std_logic;
        random_num : out std_logic_vector(width - 1 downto 0)
    );
end cmos_sensor_output_generator_random;

architecture behavioral of cmos_sensor_output_generator_random is
begin
    process(clk)
        variable rand_temp : std_logic_vector(width - 1 downto 0) := '1' & (width - 2 downto 0 => '0');
        variable temp      : std_logic                            := '0';
    begin
        if (rising_edge(clk)) then
            temp                          := rand_temp(width - 1) xor rand_temp(width - 2);
            rand_temp(width - 1 downto 1) := rand_temp(width - 2 downto 0);
            rand_temp(0)                  := temp;
        end if;
        random_num <= rand_temp;
    end process;
end architecture behavioral;
