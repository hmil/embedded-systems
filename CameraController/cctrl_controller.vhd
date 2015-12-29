library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY cctrl_controller IS
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

    reset_master_n: out std_logic;
    reset_core_n: out std_logic;
    start_capture: out std_logic  -- start capture devices
  );
END cctrl_controller;

architecture cctrl_controller of cctrl_controller is

  type State is (Idle, StartCapture, Capturing, EndOfFrame);
  signal s: State;
  signal nextS: State;


  signal buffer_nb: std_logic_vector(1 downto 0); -- TODO: unused
  signal buffer_read: std_logic_vector(1 downto 0);
  signal next_buffer_read: std_logic_vector(1 downto 0);
  signal buffer_write: std_logic_vector(1 downto 0);
  signal next_buffer_write: std_logic_vector(1 downto 0);

  signal inc_write: std_logic;

begin

  WriteAddr <= std_logic_vector(resize(unsigned(BufferAddr) + unsigned(FrameLength) * unsigned(buffer_write), 32));
  ReadAddr  <= std_logic_vector(resize(unsigned(BufferAddr) + unsigned(FrameLength) * unsigned(buffer_read), 32));
  next_buffer_read <= std_logic_vector(unsigned(buffer_read) + 1);
  next_buffer_write <= std_logic_vector(unsigned(buffer_write) + 1);

  process(buffer_read, buffer_write)
  begin
    if buffer_read /= buffer_write then
      HasFrame <= '1';
    else
      HasFrame <= '0';
    end if;
  end process;

  upd_state : process(Clk, nReset)
  begin
    if nReset = '0' then
      s <= Idle;
    elsif rising_edge(Clk) then
      s <= nextS;
    end if;
  end process;

  buff_rd_counter : process(nReset, Clk)
  begin
    if nReset = '0' then
      buffer_read <= (others => '0');
    elsif rising_edge(Clk) then
      if ReaderComplete = '1' and buffer_read /= buffer_write then
        buffer_read <= next_buffer_read;
      end if;
    end if;
  end process;

  buff_wr_counter : process(Clk, nReset)
  begin
    if nReset = '0' then
      buffer_write <= (others => '0');
    elsif rising_edge(Clk) then
      if inc_write = '1' then
        buffer_write <= next_buffer_write;
      end if;
    end if;
  end process;


  state_rule : process(Start, FrameComplete, s, nReset)
  begin
    nextS <= s;
    reset_master_n <= nReset; -- Forward global reset by default
    reset_core_n <= nReset;
    start_capture <= '0';
    inc_write <= '0';


    case s is
      when Idle =>
        if Start = '1' then
          nextS <= StartCapture;
          reset_master_n <= '0';
          reset_core_n <= '0';
        end if;
      when StartCapture =>
        start_capture <= '1';
        nextS <= Capturing;
      when Capturing =>
        if FrameComplete = '1' then
          nextS <= EndOfFrame;
        end if;
      when EndOfFrame =>
        if next_buffer_write /= buffer_read then
          inc_write <= '1';
          reset_core_n <= '0';
          nextS <= StartCapture;
        end if;
    end case;

    if Stop = '1' then
      nextS <= Idle;
    end if;
  end process;




end architecture;
