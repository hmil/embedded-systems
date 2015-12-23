library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.cctrl_constants.all;
use work.cmos_sensor_output_generator_constants.all;


-- add wave -position insertpoint sim:/tb_cctrl/cctrl_inst/master/*
-- force -freeze sim:/tb_cctrl/cctrl_inst/core/fifo_wrfull 0 0
-- force -freeze sim:/tb_cctrl/cctrl_inst/master/PxData 16#b16b00b5 0
-- force -freeze sim:/tb_cctrl/cctrl_inst/master/PxAvail 16#0 0, 16#8 18827751
-- run 40000000

entity tb_cctrl is
end tb_cctrl;

architecture test of tb_cctrl is
  constant CLK_PERIOD      : time := 100 ns;
  constant CLK_HIGH_PERIOD : time := 50 ns;
  constant CLK_LOW_PERIOD  : time := 50 ns;

  constant MEMORY_LOCATION : natural := 16#03ffff00#;

  signal sim_finished : boolean := false;

  signal clk   : std_logic := '0';
  signal reset : std_logic := '0';
  signal reset_n : std_logic;

  signal AS_Address: std_logic_vector (2 DOWNTO 0) := (others => '0');
  signal AS_ChipSelect: std_logic := '1';
  signal AS_Read: std_logic  := '0';
  signal AS_Write: std_logic := '0';
  signal AS_ReadData: std_logic_vector (31 DOWNTO 0);
  signal AS_WriteData: std_logic_vector (31 DOWNTO 0) := (others => '0');
  -- Avalon Master :
  signal AM_Address : STD_LOGIC_VECTOR(31 downto 0);
  signal AM_BurstCount: STD_LOGIC_VECTOR(2 downto 0);
  signal AM_ReadDataValid: STD_LOGIC := '0';
  signal AM_ByteEnable : STD_LOGIC_VECTOR(1 downto 0);
  signal AM_Write : STD_LOGIC;
  signal AM_Read : STD_LOGIC;
  signal AM_DataWrite : STD_LOGIC_VECTOR(15 downto 0);
  signal AM_DataRead : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  signal AM_WaitRequest : STD_LOGIC := '0';
  -- LCD <-> Camera protocol conduit
  signal CurrentFrame : STD_LOGIC_VECTOR(31 downto 0);
  signal ReadDone : STD_LOGIC ;
  signal FrameRDY : STD_LOGIC ;
  -- Camera conduit
  signal CamClk : STD_LOGIC := '0';
  signal FrameValid: STD_LOGIC := '0';
  signal LineValid: STD_LOGIC := '0';
  signal CamData: STD_LOGIC_VECTOR(11 downto 0) := (others => '0');


  -- cmos_sensor_output_generator --------------------------------------------
  constant PIX_DEPTH                : positive := 12;
  constant ROW_SIZE                 : positive := 8;
  constant COL_SIZE                 : positive := 16;
  constant FRAME_FRAME_BLANK_CYCLES : positive := 1;
  constant FRAME_LINE_BLANK_CYCLES  : natural  := 0;
  constant LINE_LINE_BLANK_CYCLES   : positive := 1;
  constant LINE_FRAME_BLANK_CYCLES  : natural  := 0;

  signal CSOG_Addr        : std_logic_vector(2 downto 0)                                                := (others => '0');
  signal CSOG_Read        : std_logic                                                                   := '0';
  signal CSOG_Write       : std_logic                                                                   := '0';
  signal CSOG_Rddata      : std_logic_vector(CMOS_SENSOR_OUTPUT_GENERATOR_MM_S_DATA_WIDTH - 1 downto 0) := (others => '0');
  signal CSOG_Wrdata      : std_logic_vector(CMOS_SENSOR_OUTPUT_GENERATOR_MM_S_DATA_WIDTH - 1 downto 0) := (others => '0');


begin

  CamClk <= Clk;
  reset_n <= not reset;

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

  cctrl_inst : entity work.CameraController
    port map(
      Clk => clk,
      nReset => reset_n,
      -- Avalon slave
      AS_Address => AS_Address,
      AS_ChipSelect => AS_ChipSelect,
      AS_Read => AS_Read,
      AS_Write => AS_Write,
      AS_ReadData => AS_ReadData,
      AS_WriteData => AS_WriteData,
      -- Avalon Master :
      AM_Address => AM_Address,
      AM_BurstCount => AM_BurstCount,
      AM_ReadDataValid => AM_ReadDataValid,
      AM_ByteEnable => AM_ByteEnable,
      AM_Write => AM_Write,
      AM_Read => AM_Read,
      AM_DataWrite => AM_DataWrite,
      AM_DataRead => AM_DataRead,
      AM_WaitRequest => AM_WaitRequest,
      -- LCD <-> Camera protocol conduit
  		CurrentFrame => CurrentFrame,
  		ReadDone => ReadDone,
  		FrameRDY => FrameRDY,
  		-- Camera conduit
  		CamClk => CamClk,
  		CamFV => FrameValid,
  		CamLV => LineValid,
  		CamData => CamData
    );

  cmos_sensor_output_generator_inst : entity work.cmos_sensor_output_generator
    generic map(PIX_DEPTH => PIX_DEPTH)
    port map( clk         => CamClk,
              reset       => reset,
              addr        => CSOG_Addr,
              read        => CSOG_Read,
              write       => CSOG_Write,
              rddata      => CSOG_Rddata,
              wrdata      => CSOG_Wrdata,
              frame_valid => FrameValid,
              line_valid  => LineValid,
              data        => CamData);

  CSOG_Read <= '0';

  sim : process
    procedure perform_reset is
    begin
        reset <= '1';

        wait until falling_edge(clk);
        reset <= '0';
    end procedure perform_reset;

    procedure write_register(constant ofst : in natural;
                             constant val  : in natural) is
    begin
      wait until falling_edge(clk);
      AS_Address   <= std_logic_vector(to_unsigned(ofst, AS_Address'length));
      AS_Write  <= '1';
      AS_WriteData <= std_logic_vector(to_unsigned(val, AS_WriteData'length));

      wait until falling_edge(clk);
      AS_Address   <= (others => '0');
      AS_Write  <= '0';
      AS_WriteData <= (others => '0');
    end procedure write_register;

    procedure write_CSOG_register(constant ofst : in natural;
                             constant val  : in natural) is
    begin
      wait until falling_edge(clk);
      CSOG_Addr   <= std_logic_vector(to_unsigned(ofst, CSOG_Addr'length));
      CSOG_Write  <= '1';
      CSOG_Wrdata <= std_logic_vector(to_unsigned(val, CSOG_Wrdata'length));

      wait until falling_edge(clk);
      CSOG_Addr   <= (others => '0');
      CSOG_Write  <= '0';
      CSOG_Wrdata <= (others => '0');
    end procedure write_CSOG_register;

    procedure wait_clock_cycles(constant count : in positive) is
    begin
      wait for count * CLK_PERIOD;
    end procedure wait_clock_cycles;

    procedure read_register(constant ofst : in natural) is
    begin
      wait until falling_edge(clk);
      AS_Address   <= std_logic_vector(to_unsigned(ofst, AS_Address'length));
      AS_Read  <= '1';

      wait_clock_cycles(2);
      AS_Address   <= (others => '0');
      AS_Read  <= '0';
    end procedure read_register;

  begin
        perform_reset;

        -- write_register(5, 16#1234#);
        -- read_register(4);
        -- wait_clock_cycles(2);
        write_register(CAMERA_CONTROLLER_REG_BUFFER_START, MEMORY_LOCATION);
        write_register(CAMERA_CONTROLLER_REG_BUFFER_START, 16#003fffff#);
        write_register(CAMERA_CONTROLLER_REG_CTRL_1, CAMERA_CONTROLLER_CTRL_START);
        -- AM_WaitRequest <= '1';
        wait_clock_cycles(3);
        wait until falling_edge(clk);
        -- AM_WaitRequest <= '0';

        write_CSOG_register(CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_ROW_SIZE_OFST, ROW_SIZE);
        write_CSOG_register(CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_COL_SIZE_OFST, COL_SIZE);
        write_CSOG_register(CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_FRAME_BLANK_CYCLES_OFST, FRAME_FRAME_BLANK_CYCLES);
        write_CSOG_register(CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_LINE_BLANK_CYCLES_OFST, FRAME_LINE_BLANK_CYCLES);
        write_CSOG_register(CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_LINE_BLANK_CYCLES_OFST, LINE_LINE_BLANK_CYCLES);
        write_CSOG_register(CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_FRAME_BLANK_CYCLES_OFST, LINE_FRAME_BLANK_CYCLES);
        write_CSOG_register(CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_OFST, CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_START);

        wait_clock_cycles(250);

        write_register(CAMERA_CONTROLLER_REG_CTRL_1, CAMERA_CONTROLLER_CTRL_START);

        wait_clock_cycles(100);


        -- write_register(CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_OFST, CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_STOP);
        -- wait until falling_edge(frame_valid);
        -- wait_clock_cycles(10);

        sim_finished <= true;
        wait;
    end process;

end architecture test;
