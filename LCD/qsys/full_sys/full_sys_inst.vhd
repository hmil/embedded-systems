	component full_sys is
		port (
			clk_clk                 : in    std_logic                     := 'X';             -- clk
			clk_sdram_clk           : out   std_logic;                                        -- clk
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
			signaltap_clk_clk       : out   std_logic;                                        -- clk
			lcd_data_lcd_data       : out   std_logic_vector(15 downto 0);                    -- lcd_data
			lcd_dc_lcd_dc           : out   std_logic;                                        -- lcd_dc
			lcd_rd_lcd_rd           : out   std_logic;                                        -- lcd_rd
			lcd_wr_lcd_wr           : out   std_logic;                                        -- lcd_wr
			lcd_reset_n_lcd_reset_n : out   std_logic;                                        -- lcd_reset_n
			ext_irq_ext_irq         : in    std_logic                     := 'X';             -- ext_irq
			am_readok_am_readok     : out   std_logic                                         -- am_readok
		);
	end component full_sys;

	u0 : component full_sys
		port map (
			clk_clk                 => CONNECTED_TO_clk_clk,                 --           clk.clk
			clk_sdram_clk           => CONNECTED_TO_clk_sdram_clk,           --     clk_sdram.clk
			reset_n_reset_n         => CONNECTED_TO_reset_n_reset_n,         --       reset_n.reset_n
			sdram_addr              => CONNECTED_TO_sdram_addr,              --         sdram.addr
			sdram_ba                => CONNECTED_TO_sdram_ba,                --              .ba
			sdram_cas_n             => CONNECTED_TO_sdram_cas_n,             --              .cas_n
			sdram_cke               => CONNECTED_TO_sdram_cke,               --              .cke
			sdram_cs_n              => CONNECTED_TO_sdram_cs_n,              --              .cs_n
			sdram_dq                => CONNECTED_TO_sdram_dq,                --              .dq
			sdram_dqm               => CONNECTED_TO_sdram_dqm,               --              .dqm
			sdram_ras_n             => CONNECTED_TO_sdram_ras_n,             --              .ras_n
			sdram_we_n              => CONNECTED_TO_sdram_we_n,              --              .we_n
			signaltap_clk_clk       => CONNECTED_TO_signaltap_clk_clk,       -- signaltap_clk.clk
			lcd_data_lcd_data       => CONNECTED_TO_lcd_data_lcd_data,       --      lcd_data.lcd_data
			lcd_dc_lcd_dc           => CONNECTED_TO_lcd_dc_lcd_dc,           --        lcd_dc.lcd_dc
			lcd_rd_lcd_rd           => CONNECTED_TO_lcd_rd_lcd_rd,           --        lcd_rd.lcd_rd
			lcd_wr_lcd_wr           => CONNECTED_TO_lcd_wr_lcd_wr,           --        lcd_wr.lcd_wr
			lcd_reset_n_lcd_reset_n => CONNECTED_TO_lcd_reset_n_lcd_reset_n, --   lcd_reset_n.lcd_reset_n
			ext_irq_ext_irq         => CONNECTED_TO_ext_irq_ext_irq,         --       ext_irq.ext_irq
			am_readok_am_readok     => CONNECTED_TO_am_readok_am_readok      --     am_readok.am_readok
		);

