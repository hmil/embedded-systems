library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY cctrl_controller IS
  PORT (
    Clk: in std_logic;
    nReset: in std_logic;

    BufferAddr: in std_logic_vector(31 downto 0);
    WriteAddr: out std_logic_vector(31 downto 0);
    ReadAddr: out std_logic_vector(31 downto 0);

    Start: in std_logic;          -- asserted when Start command issued through avalon bus
    Stop: in std_logic;
    FrameComplete: in std_logic;  -- asserted when master finished copying frame

    ReaderComplete: in std_logic; -- asserted when reader finished reading frame
    HasFrame: out std_logic;      -- asserted any time when a frame is available

    clear_capture_n: out std_logic; -- clear capture devices (buffers and state machines)
    start_capture: out std_logic  -- start capture devices
  );
END cctrl_controller;

architecture cctrl_controller of cctrl_controller is

  type State is (Idle, StartCapture, Capturing, EndOfFrame);
  signal s: State;
  signal nextS: State;


  signal buffer_nb: std_logic_vector(4 downto 0);
  signal buffer_read: std_logic_vector(4 downto 0);
  signal buffer_write: std_logic_vector(4 downto 0);

  signal inc_write: std_logic;

  signal frame_length: std_logic_vector(31 downto 0);

begin

  frame_length <= X"0003f480"; -- = 640 * 480 (VGA)

  WriteAddr <= std_logic_vector( resize(unsigned(BufferAddr) + unsigned(frame_length) * unsigned(buffer_write), 32));
  ReadAddr  <= std_logic_vector( resize(unsigned(BufferAddr) + unsigned(frame_length) * unsigned(buffer_read), 32));

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
    if nReset = '1' then
      buffer_read <= (others => '0');
    elsif rising_edge(Clk) then
      if ReaderComplete = '1' then
        buffer_read <= std_logic_vector(unsigned(buffer_read) + 1);
      end if;
    end if;
  end process;

  buff_wr_counter : process(Clk, nReset)
  begin
    if nReset = '1' then
      buffer_write <= (others => '0');
    elsif rising_edge(Clk) then
      if inc_write = '1' then
        buffer_write <= std_logic_vector(unsigned(buffer_write) + 1);
      end if;
    end if;
  end process;


  state_rule : process(Start, FrameComplete, s, nReset)
  begin
    nextS <= s;
    clear_capture_n <= nReset; -- Forward global reset by default
    start_capture <= '0';
    inc_write <= '0';


    case s is
      when Idle =>
        if Start = '1' then
          nextS <= StartCapture;
          clear_capture_n <= '0';
        end if;
      when StartCapture =>
        start_capture <= '1';
        nextS <= Capturing;
      when Capturing =>
        if FrameComplete = '1' then
          inc_write <= '1';
          nextS <= EndOfFrame;
        end if;
      when EndOfFrame =>
        if unsigned(buffer_write) + 1 /= unsigned(buffer_read) then
          nextS <= StartCapture;
        end if;
    end case;

    if Stop = '1' then
      nextS <= Idle;
    end if;
  end process;




end architecture;
