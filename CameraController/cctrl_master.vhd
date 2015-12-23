library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY cctrl_master IS
  Port(
    Clk : IN STD_LOGIC ;
    nReset : IN STD_LOGIC ;
    -- Avalon Master :
    Address : OUT STD_LOGIC_VECTOR(31 downto 0) ;
    BurstCount: OUT STD_LOGIC_VECTOR(2 downto 0) ;
    ReadDataValid: IN STD_LOGIC ;
    ByteEnable : OUT STD_LOGIC_VECTOR(1 downto 0) ;
    Write : OUT STD_LOGIC ;
    Read : OUT STD_LOGIC ;
    DataWrite : OUT STD_LOGIC_VECTOR(15 downto 0) ;
    DataRead : IN STD_LOGIC_VECTOR(15 downto 0) ;
    WaitRequest : IN STD_LOGIC ;

    -- CameraController interconnect
    Start: IN STD_LOGIC ;
    BufferAddr: IN STD_LOGIC_VECTOR(31 downto 0) ;
    Done: OUT STD_LOGIC ;

    -- Core connections
    PxAvail: IN STD_LOGIC_VECTOR(10 downto 0);
    PxData: IN STD_LOGIC_VECTOR(15 downto 0);
    PxRdReq: OUT STD_LOGIC;
    PxCount: IN integer range 0 to 33554431;
    PxCountValid: IN STD_LOGIC;

    DbgTotPX: OUT integer range 0 to 33554431
  ) ;
END cctrl_master;


-- Test architecture (testing master interface)
-- Copies a hardcoded value into BufferAddr when start is 1
-- Signals termination by putting a '1' in Done
architecture cctrl_master of cctrl_master is

  type State is (Idle, Writing, Buffering);
  signal s: State;
  signal nextS: State;
  signal nextDone: STD_LOGIC;
  signal sDone : STD_LOGIC;

  signal dataCount: integer range 0 to 7;

  signal pixel_count: integer range 0 to 33554431;
  signal total_px: integer range 0 to 33554431;
  signal total_px_valid: STD_LOGIC;
  signal inc_addr: STD_LOGIC;

  signal px_written: STD_LOGIC;
  signal reset_px_count: STD_LOGIC;
  signal reset_dataCount: STD_LOGIC;

begin

  DbgTotPX <= total_px;

  process(nReset, Clk)
  begin
    if nReset = '0' then
      s <= Idle;
      sDone <= '0';
    elsif rising_edge(Clk) then
      s <= nextS;
      sDone <= nextDone;
    end if;
  end process;

  process (s, Start, WaitRequest, dataCount, nReset, PxAvail, total_px_valid, total_px, pixel_count)
  begin
    nextS <= s;
    nextDone <= '0';
    inc_addr <= '0';
    reset_px_count <= '0';
    px_written <= '0';
    reset_dataCount <= '0';

    case s is
      when Idle =>
        reset_px_count <= '1';
        if Start = '1' then
          nextS <= Buffering;
        end if;
      when Buffering =>
        if total_px_valid = '1' and total_px <= pixel_count then
          nextS <= Idle;
          nextDone <= '1';
        elsif unsigned(PxAvail) > 3 then
          nextS <= Writing;
        end if;
      when Writing =>
        if WaitRequest = '0' then
          px_written <= '1';
          if dataCount = 3 then
            reset_dataCount <= '1';
            if total_px_valid = '1' and total_px <= pixel_count then
              nextS <= Idle;
              nextDone <= '1';
            else
              nextS <= Buffering;
              inc_addr <= '1';
            end if;
          end if;
        end if;
    end case;
  end process;


  process(nReset, Clk)
  begin
    if nReset = '0' then
      total_px <= 0;
      total_px_valid <= '0';
    elsif rising_edge(Clk) then
      if PxCountValid = '1' then
        total_px <= PxCount;
        total_px_valid <= '1';
      elsif s = Idle then
        total_px_valid <= '0';
      end if;
    end if;
  end process;

  Done <= sDone;
  ByteEnable <= "11";
  BurstCount <= "100";
  Read <= '0';
  DataWrite <= PxData;

  process(nReset, Clk)
  begin
    if nReset = '0' then
      Address <= (others => '0');
    elsif rising_edge(Clk) then
      if inc_addr = '1' then
        Address <= std_logic_vector(unsigned(BufferAddr) + pixel_count * 2);
      end if;
    end if;
  end process;

  process(Clk, nReset)
  begin
    if nReset = '0' then
      pixel_count <= 0;
    elsif rising_edge(Clk) then
      if reset_px_count = '1' then
        pixel_count <= 0;
      elsif px_written = '1' then
        pixel_count <= pixel_count + 1;
      end if;
    end if;
  end process;


  process(Clk, nReset)
  begin
    if nReset = '0' then
      dataCount <= 0;
    elsif rising_edge(Clk) then
      if reset_dataCount = '1' then
        dataCount <= 0;
      elsif px_written = '1' then
        dataCount <= dataCount + 1;
      end if;
    end if;
  end process;

  process(s, WaitRequest)
  begin
    PxRdReq <= '0';
    if s = Writing then
      PxRdReq <= not WaitRequest;
    end if;
  end process;

  process(s)
  begin
    Write <= '0';
    if s = Writing then
      Write <= '1';
    end if;
  end process;

end architecture;
