library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY cctrl_slave IS
PORT(
	-- Avalon interfaces signals
	Clk : IN std_logic;
	nReset: IN std_logic;
	Address: IN std_logic_vector (2 DOWNTO 0);
	ChipSelect: IN std_logic;
	Read: IN std_logic;
	Write: IN std_logic;
	ReadData: OUT std_logic_vector (31 DOWNTO 0);
	WriteData: IN std_logic_vector (31 DOWNTO 0);

	SoftReset: OUT STD_LOGIC;

	--  Camera controller interconnect
	CurrentFrame: IN std_logic_vector (31 DOWNTO 0);
	BufferAddr: OUT std_logic_vector (31 DOWNTO 0);
	Start: OUT STD_LOGIC;
	Stop: OUT STD_LOGIC;
	SoftReadDone: OUT STD_LOGIC;
	ReadAvail: IN STD_LOGIC;
	FrameLength: OUT std_logic_vector(31 downto 0)
);
End cctrl_slave;

ARCHITECTURE comp OF cctrl_slave IS

	-- API registers
	signal rBuffStart : std_logic_vector(31 downto 0);
	signal rBuffLen   : std_logic_vector(31 downto 0);
	signal rCtl : std_logic_vector(31 downto 0);

BEGIN

-- Exported signals
Start <= rCtl(4);
Stop <= rCtl(5);
SoftReset <= rCtl(6);
SoftReadDone <= rCtl(7);
BufferAddr <= rBuffStart;
FrameLength <= rBuffLen;

-- Registers write
pRegWr:process(Clk, nReset)
begin
	if nReset = '0' then
		rBuffStart <= (others => '0');
		rBuffLen <= (others => '0');
		rCtl <= (others => '0');
	elsif rising_edge(Clk) then
		-- Trigger bits are forced to 0 on next rising edge
		rCtl(7 downto 4) <= "0000";
		-- Status bits
		rCtl(8) <= ReadAvail;

		-- External command to set registers has priority
		if ChipSelect = '1' and Write = '1' then
			-- Write cycle
			case Address(2 downto 0) is
				when "000" =>
					rBuffStart 	<= WriteData;
				when "001" => rBuffLen		<= WriteData;
				when "011" => rCtl				<= WriteData ;
				when others => null;
			end case;
		end if;
	end if;
	rCtl(3 downto 0) <= "0000";
	rCtl(15 downto 9) <= "0000000";
end process pRegWr;

-- Registers read
pRegRd:process(Clk)
begin
	if nReset = '0' then
		ReadData <= (others => '0');
	elsif rising_edge(Clk) then
		--default value
		ReadData <= (others => '0');
		--Read cycle
		if ChipSelect = '1' and Read = '1' then
			case Address(2 downto 0) is
				when "000" => ReadData <= rBuffStart;
				when "001" => ReadData <= rBuffLen;
				when "010" => ReadData <= CurrentFrame;
				when "011" => ReadData <= rCtl;
				when others => null;
			end case;
		end if;
	end if;
end process pRegRd;
END comp;
