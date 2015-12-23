library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package conversion_util is
    function to_std_logic(x : boolean) return std_logic;
    function to_std_logic_vector(x : natural; width : positive) return std_logic_vector;
    function to_natural(x : std_logic_vector) return natural;
    function to_boolean(x : std_logic) return boolean;

end package conversion_util;

package body conversion_util is
    function to_std_logic(x : boolean) return std_logic is
    begin
        if x then
            return '1';
        else
            return '0';
        end if;
    end function to_std_logic;

    function to_std_logic_vector(x : natural; width : positive) return std_logic_vector is
    begin
        return std_logic_vector(to_unsigned(x, width));
    end function to_std_logic_vector;

    function to_natural(x : std_logic_vector) return natural is
    begin
        return to_integer(unsigned(x));
    end function to_natural;

    function to_boolean(x : std_logic) return boolean is
    begin
        if x = '1' then
            return true;
        else
            return false;
        end if;
    end function to_boolean;

end package body conversion_util;


