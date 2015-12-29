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

	signal sReadFrame: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal sWriteFrame: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal sBufferAddr: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal sFrameLength: STD_LOGIC_VECTOR(31 DOWNTO 0);
	signal sIncrementFrame: STD_LOGIC;
	signal sStart: STD_LOGIC;
	signal sStop: STD_LOGIC;
	signal sStartCapture: STD_LOGIC;
	signal sDone: STD_LOGIC;

	signal sReset_n: STD_LOGIC;
	signal sResetMaster_n: STD_LOGIC;
	signal sResetCore_n: STD_LOGIC;
	signal sSoftReset: STD_LOGIC;

	signal sSoftReadDone: STD_LOGIC;
	signal sReadDone: STD_LOGIC;

	signal sPxAvail: STD_LOGIC_VECTOR(10 downto 0);
	signal sPxData: STD_LOGIC_VECTOR(15 downto 0);
	signal sPxRdReq: STD_LOGIC;
	signal sPxCount: integer range 0 to 33554431;
	signal sPxCountValid: STD_LOGIC;

	signal sFrameRDY: STD_LOGIC;

	signal sDbgTotPx: integer range 0 to 33554431;

	component cctrl_slave is
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
			FrameLength: OUT std_logic_vector(31 DOWNTO 0);
			Start: OUT STD_LOGIC;
			Stop: OUT STD_LOGIC;
			SoftReadDone: OUT STD_LOGIC;
			ReadAvail: IN STD_LOGIC
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

	component cctrl_controller is
		PORT (
	    Clk: in std_logic;
	    nReset: in std_logic;

	    BufferAddr: in std_logic_vector(31 downto 0);
			FrameLength: in std_logic_vector(31 downto 0);
	    WriteAddr: out std_logic_vector(31 downto 0);
	    ReadAddr: out std_logic_vector(31 downto 0);

	    Start: in std_logic;          -- asserted when Start command issued through avalon bus
	    Stop: in std_logic;
	    FrameComplete: in std_logic;  -- asserted when master finished copying frame

	    ReaderComplete: in std_logic; -- asserted when reader finished reading frame
	    HasFrame: out std_logic;      -- asserted any time when a frame is available

	    reset_core_n: out std_logic;
			reset_master_n: out std_logic;
	    start_capture: out std_logic  -- start capture devices
	  );
	end component;

BEGIN

	CamReset_n <= sReset_n;
	CurrentFrame <= sReadFrame;
	FrameRdy <= sFrameRDY;
	sReset_n <= nReset and not sSoftReset;
	sReadDone <= ReadDone or sSoftReadDone;

	controller: cctrl_controller PORT MAP (
    Clk => Clk,
    nReset => sReset_n,

    BufferAddr => sBufferAddr,
		FrameLength => sFrameLength,
    WriteAddr => sWriteFrame,
    ReadAddr => sReadFrame,

    Start => sStart,          -- asserted when Start command issued through avalon bus
    Stop => sStop,
    FrameComplete => sDone,  -- asserted when master finished copying frame

    ReaderComplete => sReadDone, -- asserted when reader finished reading frame
    HasFrame => sFrameRDY,

    reset_core_n => sResetCore_n,
		reset_master_n => sResetMaster_n,
    start_capture => sStartCapture  -- start capture devices
  );

	core: cctrl_core PORT MAP (
		Clk => Clk,
		nReset => sResetCore_n,
		CamClk => CamClk,
		FrameValid => CamFV,
		LineValid => CamLV,
		CamData => CamData,

		PxAvail => sPxAvail,
		PxRdReq => sPxRdReq,
		PxData => sPxData,
		PxCount => sPxCount,
		PxCountValid => sPxCountValid,
		Start => sStartCapture
	);

	slave: cctrl_slave PORT MAP (
		-- Avalon interfaces signals
		Clk => Clk,
		nReset => nReset,
		Address => AS_Address,
		ChipSelect => AS_ChipSelect,
		Read => AS_Read,
		Write => AS_Write,
		ReadData => AS_ReadData,
		WriteData => AS_WriteData,

		SoftReset => sSoftReset,

		--  Camera controller interconnect
		CurrentFrame => sReadFrame,
		BufferAddr => sBufferAddr,
		FrameLength => sFrameLength,
		Start => sStart,
		Stop => sStop,
		SoftReadDone => sSoftReadDone,
		ReadAvail => sFrameRDY
	);

	master: cctrl_master PORT MAP (
		Clk => Clk,
		nReset => sResetMaster_n,
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

		Start => sStartCapture,
    BufferAddr => sWriteFrame,
    Done => sDone,

		PxAvail => sPxAvail,
		PxRdReq => sPxRdReq,
		PxData => sPxData,
		PxCount => sPxCount,
		PxCountValid => sPxCountValid,

		DbgTotPx => sDbgTotPx
	);

END comp;
