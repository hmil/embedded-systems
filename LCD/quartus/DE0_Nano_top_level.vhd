-- #############################################################################
-- DE0_Nano_top_level.vhd
--
-- BOARD         : DE0-Nano from Terasic
-- Author        : Sahand Kashani-Akhavan from Terasic documentation
-- Revision      : 1.1
-- Creation date : 21/06/2015
--
-- Syntax Rule : GROUP_NAME_N[bit]
--
-- GROUP : specify a particular interface (ex: SDR_)
-- NAME  : signal name (ex: CONFIG, D, ...)
-- bit   : signal index
-- _N    : to specify an active-low signal
-- #############################################################################

library ieee;
use ieee.std_logic_1164.all;

entity DE0_Nano_top_level is
    port(
        -- CLOCK
        CLOCK_50      : in    std_logic;

        -- KEY_N
        KEY_N         : in    std_logic_vector(1 downto 0);

        --SDRAM
        DRAM_ADDR     : out   std_logic_vector(12 downto 0);
        DRAM_BA       : out   std_logic_vector(1 downto 0);
        DRAM_CAS_N    : out   std_logic;
        DRAM_CKE      : out   std_logic;
        DRAM_CLK      : out   std_logic;
        DRAM_CS_N     : out   std_logic;
        DRAM_DQ       : inout std_logic_vector(15 downto 0);
        DRAM_DQM      : out   std_logic_vector(1 downto 0);
        DRAM_RAS_N    : out   std_logic;
        DRAM_WE_N     : out   std_logic;

        -- GPIO_0
        GPIO_0        : inout std_logic_vector(33 downto 0);
        GPIO_0_IN     : in    std_logic_vector(1 downto 0);

        -- GPIO_1
        GPIO_1        : inout std_logic_vector(33 downto 0)
        --GPIO_1_IN     : in    std_logic_vector(1 downto 0)
    );

end entity DE0_Nano_top_level;

architecture rtl of DE0_Nano_top_level is
	component full_sys is
		port (
			am_readok_am_readok     : out   std_logic;                                        -- am_readok
			clk_clk                 : in    std_logic                     := 'X';             -- clk
			clk_sdram_clk           : out   std_logic;                                        -- clk
			ext_irq_ext_irq         : in    std_logic                     := 'X';             -- ext_irq
			lcd_data_lcd_data       : out   std_logic_vector(15 downto 0);                    -- lcd_data
			lcd_dc_lcd_dc           : out   std_logic;                                        -- lcd_dc
			lcd_rd_lcd_rd           : out   std_logic;                                        -- lcd_rd
			lcd_reset_n_lcd_reset_n : out   std_logic;                                        -- lcd_reset_n
			lcd_wr_lcd_wr           : out   std_logic;                                        -- lcd_wr
			reset_n_reset_n         : in    std_logic                     := 'X';             -- reset_n
			sdram_addr              : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_ba                : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_cas_n             : out   std_logic;                                        -- cas_n
			sdram_cke               : out   std_logic;                                        -- cke
			sdram_cs_n              : out   std_logic;                                        -- cs_n
			sdram_dq                : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_dqm               : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_ras_n             : out   std_logic;                                        -- ras_n
			sdram_we_n              : out   std_logic;                                        -- we_n
			signaltap_clk_clk       : out   std_logic                                         -- clk
		);
	end component full_sys;
	signal lcd_data : std_logic_vector(15 downto 0);
	signal lcd_dc, lcd_rd, lcd_wr, reset_n, signaltap_clk, ext_irq, am_readok  : std_logic;
	
begin

		GPIO_0(22 downto 11) <= lcd_data(15 downto 4);
		GPIO_0(3) <= lcd_data(3);
		GPIO_0(4) <= lcd_data(2);
		GPIO_0(5) <= lcd_data(1);
		GPIO_0(6) <= lcd_data(0);
		
		
				
		u0 : component full_sys
		port map (
			clk_clk                 => CLOCK_50,               --         clk.clk
			lcd_data_lcd_data       => lcd_data,       			--    lcd_data.lcd_data
			lcd_dc_lcd_dc           => lcd_dc,           		--      lcd_dc.lcd_dc
			lcd_rd_lcd_rd           => lcd_rd,           		--      lcd_rd.lcd_rd
			lcd_reset_n_lcd_reset_n => reset_n, 					-- lcd_reset_n.lcd_reset_n
			lcd_wr_lcd_wr           => lcd_wr,           		--      lcd_wr.lcd_wr
			reset_n_reset_n         => KEY_N(0),        			--     reset_n.reset_n
			sdram_addr              => dram_addr,              --       sdram.addr
			sdram_ba                => dram_ba,                --            .ba
			sdram_cas_n             => dram_cas_n,             --            .cas_n
			sdram_cke               => dram_cke,               --            .cke
			sdram_cs_n              => dram_cs_n,              --            .cs_n
			sdram_dq                => dram_dq,                --            .dq
			sdram_dqm               => dram_dqm,               --            .dqm
			sdram_ras_n             => dram_ras_n,             --            .ras_n
			sdram_we_n              => dram_we_n,              --            .we_n
			clk_sdram_clk           => dram_clk,            --   clk_sdram.clk
			signaltap_clk_clk       => signaltap_clk,
			am_readok_am_readok     => am_readok,
			ext_irq_ext_irq         => ext_irq
		);
		
		ext_irq <= KEY_N(1);
				
		GPIO_0(33) <= '1';
		GPIO_0(23) <= '0';
		
		GPIO_0(10) <= lcd_dc;
		GPIO_0(9) <= lcd_wr;
		GPIO_0(8) <= lcd_rd;
		GPIO_0(31) <= reset_n;

end;
