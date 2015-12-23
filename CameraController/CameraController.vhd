library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY CameraController IS
	PORT(
		-- Avalon interfaces signals
		Clk : IN std_logic;
		nReset: IN std_logic;
		-- Avalon slave
		AS_Address: IN std_logic_vector (2 DOWNTO 0);
		AS_ChipSelect: IN std_logic;
		AS_Read: IN std_logic;
		AS_Write: IN std_logic;
		AS_ReadData: OUT std_logic_vector (31 DOWNTO 0);
		AS_WriteData: IN std_logic_vector (31 DOWNTO 0);
		-- Avalon Master :
		AM_Address : OUT STD_LOGIC_VECTOR(31 downto 0);
		AM_BurstCount: OUT STD_LOGIC_VECTOR(2 downto 0);
		AM_ReadDataValid: IN STD_LOGIC;
		AM_ByteEnable : OUT STD_LOGIC_VECTOR(1 downto 0);
		AM_Write : OUT STD_LOGIC;
		AM_Read : OUT STD_LOGIC;
		AM_DataWrite : OUT STD_LOGIC_VECTOR(15 downto 0);
		AM_DataRead : IN STD_LOGIC_VECTOR(15 downto 0);
		AM_WaitRequest : IN STD_LOGIC;
		-- LCD <-> Camera protocol conduit
		CurrentFrame : OUT STD_LOGIC_VECTOR(31 downto 0);
		ReadDone : IN STD_LOGIC ;
		FrameRDY : OUT STD_LOGIC ;
		-- Camera conduit
		CamClk : IN STD_LOGIC ;
		CamFV: IN STD_LOGIC ;
		CamLV: IN STD_LOGIC ;
		CamData: IN STD_LOGIC_VECTOR(11 downto 0) ;
		CamReset_n: OUT STD_LOGIC
	);
End CameraController;

ARCHITECTURE comp OF CameraController IS

	signal sCurrentFrame: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal sIncrementFrame: STD_LOGIC;
	signal sStart: STD_LOGIC;
	signal sDone: STD_LOGIC;
	signal sReset_n: STD_LOGIC;
	signal sSoftReset: STD_LOGIC;

	signal sPxAvail: STD_LOGIC_VECTOR(10 downto 0);
	signal sPxData: STD_LOGIC_VECTOR(15 downto 0);
	signal sPxRdReq: STD_LOGIC;
	signal sPxCount: integer range 0 to 33554431;
	signal sPxCountValid: STD_LOGIC;


	signal sDbgTotPx: integer range 0 to 33554431;

	component cctrl_slave is
		port (
			Clk : IN std_logic;
			nReset: IN std_logic;
			Address: IN std_logic_vector (2 DOWNTO 0);
			ChipSelect: IN std_logic;
			Read: IN std_logic;
			Write: IN std_logic;
			ReadData: OUT std_logic_vector (31 DOWNTO 0);
			WriteData: IN std_logic_vector (31 DOWNTO 0);
			SoftReset: OUT std_logic;
			-- Camera controller interconnect
			CurrentFrame: OUT std_logic_vector (31 DOWNTO 0);
			IncCurrentFrame: IN std_logic;
			Start: OUT STD_LOGIC;
			-- For testing DMA capabilities (TODO: to be removed)
			Done: IN STD_LOGIC;
			PxAvail: IN std_logic_vector(10 downto 0);
			PxRdReq: IN std_logic;
			PxData: IN std_logic_vector(15 downto 0);

			PxCount: IN integer range 0 to 33554431;
			DbgTotPx: IN integer range 0 to 33554431
		);
	end component;

	component cctrl_master is
		port (
			Clk : IN STD_LOGIC ;
			nReset : IN STD_LOGIC ;
			-- Avalon Master :
			Address : OUT STD_LOGIC_VECTOR(31 downto 0) ;
			BurstCount: OUT STD_LOGIC_VECTOR(2 downto 0) ;
			ReadDataValid: IN STD_LOGIC;
			ByteEnable : OUT STD_LOGIC_VECTOR(1 downto 0) ;
			Write : OUT STD_LOGIC ;
			Read : OUT STD_LOGIC ;
			DataWrite : OUT STD_LOGIC_VECTOR(15 downto 0) ;
			DataRead : IN STD_LOGIC_VECTOR(15 downto 0) ;
			WaitRequest : IN STD_LOGIC;
			Start: IN STD_LOGIC ;
			BufferAddr: IN STD_LOGIC_VECTOR(31 downto 0) ;
			Done: OUT STD_LOGIC ;
			-- Core connections
			PxAvail: IN STD_LOGIC_VECTOR(10 downto 0);
			PxData: IN STD_LOGIC_VECTOR(15 downto 0);
			PxRdReq: OUT STD_LOGIC;
			PxCount: IN integer range 0 to 33554431;
			PxCountValid: IN STD_LOGIC;

			DbgTotPx: OUT integer range 0 to 33554431
		);
	end component;

	component cctrl_core is
		port (
			Clk: IN STD_LOGIC;
			nReset: IN STD_LOGIC;
			-- Camera input signals
			CamClk: IN STD_LOGIC;
			FrameValid: IN STD_LOGIC;
			LineValid: IN STD_LOGIC;
			CamData: IN STD_LOGIC_VECTOR(11 downto 0);
			-- fifo output signals
			PxAvail: OUT STD_LOGIC_VECTOR(10 downto 0);
			PxData: OUT STD_LOGIC_VECTOR(15 downto 0);
			PxRdReq: IN STD_LOGIC;
			-- master control signals
			PxCount: OUT integer range 0 to 33554431;
			PxCountValid: OUT STD_LOGIC;
			Start: IN STD_LOGIC
		);
	end component;

BEGIN

	sReset_n <= nReset and not sSoftReset;

	CamReset_n <= sReset_n;

	sIncrementFrame <= '0';

	CurrentFrame <= sCurrentFrame;

	FrameRDY <= '0'; -- TODO

	core: cctrl_core PORT MAP (
		Clk => Clk,
		nReset => sReset_n,
		CamClk => CamClk,
		FrameValid => CamFV,
		LineValid => CamLV,
		CamData => CamData,

		PxAvail => sPxAvail,
		PxRdReq => sPxRdReq,
		PxData => sPxData,
		PxCount => sPxCount,
		PxCountValid => sPxCountValid,
		Start => sStart
	);

	slave: cctrl_slave PORT MAP (
		Clk => Clk,
		nReset => nReset,
		Address => AS_Address,
		ChipSelect => AS_ChipSelect,
		Read => AS_Read,
		Write => AS_Write,
		ReadData => AS_ReadData,
		WriteData => AS_WriteData,
		SoftReset => sSoftReset,

		CurrentFrame => sCurrentFrame,
		IncCurrentFrame => sIncrementFrame,
		Start => sStart,

		-- For testing DMA capabilities (to be removed)
		Done => sDone,
		PxAvail => sPxAvail,
		PxRdReq => sPxRdReq,
		PxData => sPxData,

		PxCount => sPxCount,
		DbgTotPx => sDbgTotPx
	);

	master: cctrl_master PORT MAP (
		Clk => Clk,
		nReset => sReset_n,
		-- Avalon Master
		Address => AM_Address,
		BurstCount => AM_BurstCount,
		ReadDataValid => AM_ReadDataValid,
		ByteEnable => AM_ByteEnable,
		Write => AM_Write,
		Read => AM_Read,
		DataWrite => AM_DataWrite,
		DataRead => AM_DataRead,
		WaitRequest => AM_WaitRequest,

		Start => sStart,
    BufferAddr => sCurrentFrame,
    Done => sDone,

		PxAvail => sPxAvail,
		PxRdReq => sPxRdReq,
		PxData => sPxData,
		PxCount => sPxCount,
		PxCountValid => sPxCountValid,

		DbgTotPx => sDbgTotPx
	);

END comp;
