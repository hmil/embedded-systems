library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY cctrl_core IS

  Port (
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
END cctrl_core;


architecture arch of cctrl_core is

  component cctrl_fifo is
    PORT (
      aclr		: IN STD_LOGIC ;
  		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
  		rdclk		: IN STD_LOGIC ;
  		rdreq		: IN STD_LOGIC ;
  		wrclk		: IN STD_LOGIC ;
  		wrreq		: IN STD_LOGIC ;
  		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
  		-- rdempty		: OUT STD_LOGIC ;
  		rdusedw		: OUT STD_LOGIC_VECTOR (10 DOWNTO 0);
  		wrfull		: OUT STD_LOGIC
  	);
  end component;

  component cctrl_px_fifo is
    PORT (
  		clock		: IN STD_LOGIC ;
  		data		: IN STD_LOGIC_VECTOR (5 DOWNTO 0);
  		rdreq		: IN STD_LOGIC ;
  		wrreq		: IN STD_LOGIC ;
  		empty		: OUT STD_LOGIC ;
  		full		: OUT STD_LOGIC ;
      sclr		: IN STD_LOGIC ;
  		q		: OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
  	);
  end component;

  signal fifo_clr: STD_LOGIC;
  signal fifo_wrreq: STD_LOGIC;
  signal fifo_wrfull: STD_LOGIC;
  signal fifo_wrdata: STD_LOGIC_VECTOR(15 downto 0);
  signal fifo_buffer: STD_LOGIC_VECTOR(15 downto 0);
  signal sCamClk: STD_LOGIC;
  signal sPxAvail: STD_LOGIC_VECTOR(10 downto 0);
  signal sPxData: STD_LOGIC_VECTOR(15 downto 0);
  signal sPxRdReq: STD_LOGIC;

  type State_tpe is (OFF, DEAD_END, INVALID, NEW_FRAME, NEW_LINE, GREEN_1, RED, LINE_1_DONE, BLUE, GREEN_2, SEND_FRAME);

  signal state: State_tpe;
  signal nextState: State_tpe;

  signal store_px: STD_LOGIC;
  signal consume_blue_px: STD_LOGIC;
  signal consume_green_px: STD_LOGIC;
  signal reset_line: STD_LOGIC;

  signal px_data: STD_LOGIC_VECTOR(5 downto 0);
  signal px_rdack: STD_LOGIC;
  signal px_wreq: STD_LOGIC;
  signal px_empty: STD_LOGIC;
  signal px_full: STD_LOGIC;
  signal px_q: STD_LOGIC_VECTOR(5 downto 0);
  signal px_fifo_clr: STD_LOGIC;

  signal green_buffer: STD_LOGIC_VECTOR(6 downto 0);

  signal pixel_count: integer range 0 to 33554432;
  signal send_count: STD_LOGIC;
  signal count_sent: STD_LOGIC;

begin

  sCamClk <= CamClk;

  fifo: cctrl_fifo PORT MAP (
    aclr    => fifo_clr,
    data    => fifo_wrdata,
    rdclk   => Clk,
    rdreq   => sPxRdReq,
    wrclk   => sCamClk,
    wrreq   => fifo_wrreq,
    q       => sPxData,
    -- rdempty => null,
    rdusedw	=> sPxAvail,
    wrfull  => fifo_wrfull
  );

  px_fifo : cctrl_px_fifo PORT MAP (
		clock	 => sCamClk,
		data	 => px_data,
		rdreq	 => px_rdack,
		wrreq	 => px_wreq,
		empty	 => px_empty,
		full	 => px_full,
    sclr   => px_fifo_clr,
		q	 => px_q
	);

  -- Exported signals
  PxData <= sPxData;
  -- PxData <= (15 downto 2 => '0') & fifo_wrfull & fifo_wrreq;
  sPxRdReq <= PxRdReq;
  PxAvail <= sPxAvail; -- (7 downto 2 => '0') & fifo_wrfull & fifo_wrreq;
  PxCount <= pixel_count;

  -- State machine

  process(CamClk, nReset)
  begin
    if nReset = '0' then
      state <= OFF;
    elsif rising_edge(CamClk) then
      state <= nextState;
    end if;
  end process;

  process(state, FrameValid, LineValid)
  begin
    nextState <= state;
    store_px <= '0';
    consume_blue_px <= '0';
    consume_green_px <= '0';
    reset_line <= '0';
    send_count <= '0';

    case state is
      when OFF =>
        if Start = '1' then
          nextState <= INVALID;
        end if;
      when INVALID =>
        if FrameValid = '0' then
          nextState <= NEW_FRAME;
        end if;
      when NEW_FRAME =>
        if FrameValid = '1' then
          nextState <= NEW_LINE;
          reset_line <= '1';
        end if;
      when NEW_LINE =>
        if LineValid = '1' then
          nextState <= RED;
          store_px <= '1';
        end if;
        if FrameValid = '0' then
          nextState <= SEND_FRAME;
          send_count <= '1';
        end if;
      when GREEN_1 =>
        if LineValid = '1' then
          nextState <= RED;
          store_px <= '1';
        else
          nextState <= LINE_1_DONE;
        end if;
        if FrameValid = '0' then
          nextState <= SEND_FRAME;
          send_count <= '1';
        end if;
      when RED =>
        if LineValid = '1' then
          nextState <= GREEN_1;
          store_px <= '1';
        else
          nextState <= LINE_1_DONE;
        end if;
        if FrameValid = '0' then
          nextState <= SEND_FRAME;
          send_count <= '1';
        end if;
      when LINE_1_DONE =>
        if LineValid = '1' then
          nextState <= GREEN_2;
          consume_blue_px <= '1';
        end if;
        if FrameValid = '0' then
          nextState <= SEND_FRAME;
          send_count <= '1';
        end if;
      when BLUE =>
        if LineValid = '1' then
          nextState <= GREEN_2;
          consume_blue_px <= '1';
        else
          nextState <= NEW_LINE;
          reset_line <= '1';
        end if;
        if FrameValid = '0' then
          nextState <= SEND_FRAME;
          send_count <= '1';
        end if;
      when GREEN_2 =>
        if LineValid = '1' then
          nextState <= BLUE;
          consume_green_px <= '1';
        else
          nextState <= NEW_LINE;
          reset_line <= '1';
        end if;
        if FrameValid = '0' then
          nextState <= SEND_FRAME;
          send_count <= '1';
        end if;
      when SEND_FRAME =>
        send_count <= '1';
        if count_sent = '1' then
          nextState <= NEW_FRAME;
        end if;
      when others => null;
    end case;
  end process;

  process(nReset, Clk)
  begin
    if nReset = '0' then
      PxCountValid <= '0';
    elsif rising_edge(Clk) then
      PxCountValid <= '0';
      if send_count = '1' then
        PxCountValid <= '1';
        count_sent <= '1';
      else
        count_sent <= '0';
      end if;
    end if;
  end process;

  process(fifo_wrreq)
  begin
    fifo_wrdata <= (others => '0');
    if fifo_wrreq = '1' then
      fifo_wrdata <= fifo_buffer;
    end if;
  end process;


  green_buffer <= std_logic_vector( unsigned('0' & fifo_buffer(10 downto 5)) + unsigned('0' & CamData(11 downto 6)));

  process(CamClk, nReset, store_px, consume_blue_px, consume_green_px, reset_line, state)
  begin
    if nReset = '0' then
      px_wreq <= '0';
      px_rdack <= '0';
      px_data <= (others => '0');
      fifo_wrreq <= '0';
      px_fifo_clr <= '1';
      fifo_clr <= '1';
      fifo_buffer <= (others => '0');
      pixel_count <= 0;
    elsif rising_edge(CamClk) then
      px_wreq <= '0';
      px_rdack <= '0';
      px_data <= (others => '0');
      fifo_wrreq <= '0';
      px_fifo_clr <= '0';
      fifo_clr <= '0';

      if state = NEW_FRAME then
        pixel_count <= 0;
      end if;

      if store_px = '1' then
        if px_full = '0' then
          px_data <= CamData(11 downto 6);
          px_wreq <= '1';
        end if;
      elsif consume_blue_px = '1' then
        if px_empty = '0' then
          px_rdack <= '1';
          fifo_buffer(15 downto  11) <= px_q(5 downto 1); -- dequeue red pixel
        else
          fifo_buffer(15 downto  11) <= (others => '0');
        end if;
        fifo_buffer(4  downto  0) <= CamData(11 downto 7); -- consume blue

      elsif consume_green_px = '1' then
        px_rdack <= '1';
        -- average green values
        fifo_buffer(10 downto 5) <= std_logic_vector(unsigned('0' & CamData(11 downto 7)) + unsigned('0' & px_q(5 downto 1)));
        -- Commit the pixel to fifo if possible
        if fifo_wrfull = '0' then
          fifo_wrreq <= '1';
          pixel_count <= pixel_count + 1;
        end if;
      elsif reset_line = '1' then
        px_fifo_clr <= '1';
      end if;
    end if;
  end process;

end architecture;
