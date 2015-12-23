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
	CurrentFrame: OUT std_logic_vector (31 DOWNTO 0);
	Start: OUT STD_LOGIC;
	IncCurrentFrame: IN std_logic;
	ResetCurrentFrame: IN std_logic;

	-- For testing DMA capabilities (to be removed)
	Done: IN STD_LOGIC;
	PxAvail: IN std_logic_vector(8 downto 0);
	PxRdReq: IN std_logic;
	PxData: IN std_logic_vector(15 downto 0);
	PxCount: IN integer range 0 to 33554431
);
End cctrl_slave;

ARCHITECTURE comp OF cctrl_slave IS

	-- API registers
	signal rBuffStart : std_logic_vector(31 downto 0);
	signal rBuffLen   : std_logic_vector(31 downto 0);
	signal rCurrFrame : std_logic_vector(31 downto 0);
	signal rCtl : std_logic_vector(31 downto 0);

	signal nextFrame: std_logic_vector(31 downto 0);

BEGIN

-- Exported signals
Start <= rCtl(4);
SoftReset <= rCtl(6);
CurrentFrame <= rCurrFrame;

-- TODO: increment by actual amount of bytes in an image
nextFrame <= std_logic_vector( unsigned(rCurrFrame) + 5044680 ); -- = 2595 * 1944

-- Registers write
pRegWr:process(Clk, nReset)
begin
	if nReset = '0' then
		rBuffStart <= (others => '0');
		rBuffLen <= (others => '0');
		rCtl <= (others => '0');
		rCurrFrame <= (others => '0');
	elsif rising_edge(Clk) then
		-- Trigger bits are forced to 0 on next rising edge
		rCtl(6 downto 4) <= "000";
		-- DMA TEST, TO BE removed
		if Done = '1' then
			rCtl(7) <= Done;
		end if;

		-- External command to set registers has priority
		if ChipSelect = '1' and Write = '1' then
			-- Writing to any register causes currFrame to reset to buffStart
			rCurrFrame <= rBuffStart;
			-- Write cycle
			case Address(2 downto 0) is
				when "000" =>
					rBuffStart 	<= WriteData;
					rCurrFrame  <= WriteData;
				when "001" => rBuffLen		<= WriteData;
				-- when "010" => rCurrFrame	<= WriteData; READ ONLY
				when "011" => rCtl				<= WriteData ;
				when others => null;
			end case;
		-- Otherwise check signals to update register state
		elsif IncCurrentFrame = '1' then
			rCurrFrame <= nextFrame;
		end if;
	end if;
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
				when "010" => ReadData <= rCurrFrame;
				when "011" => ReadData <= rCtl;
				when "101" => ReadData <= std_logic_vector(to_unsigned(PxCount, 16)) & "000" & PxRdReq & "000" & PxAvail;
				when others => null;
			end case;
		end if;
	end if;
end process pRegRd;
END comp;
