	full_sys u0 (
		.clk_clk                 (<connected-to-clk_clk>),                 //           clk.clk
		.clk_sdram_clk           (<connected-to-clk_sdram_clk>),           //     clk_sdram.clk
		.reset_n_reset_n         (<connected-to-reset_n_reset_n>),         //       reset_n.reset_n
		.sdram_addr              (<connected-to-sdram_addr>),              //         sdram.addr
		.sdram_ba                (<connected-to-sdram_ba>),                //              .ba
		.sdram_cas_n             (<connected-to-sdram_cas_n>),             //              .cas_n
		.sdram_cke               (<connected-to-sdram_cke>),               //              .cke
		.sdram_cs_n              (<connected-to-sdram_cs_n>),              //              .cs_n
		.sdram_dq                (<connected-to-sdram_dq>),                //              .dq
		.sdram_dqm               (<connected-to-sdram_dqm>),               //              .dqm
		.sdram_ras_n             (<connected-to-sdram_ras_n>),             //              .ras_n
		.sdram_we_n              (<connected-to-sdram_we_n>),              //              .we_n
		.signaltap_clk_clk       (<connected-to-signaltap_clk_clk>),       // signaltap_clk.clk
		.lcd_data_lcd_data       (<connected-to-lcd_data_lcd_data>),       //      lcd_data.lcd_data
		.lcd_dc_lcd_dc           (<connected-to-lcd_dc_lcd_dc>),           //        lcd_dc.lcd_dc
		.lcd_rd_lcd_rd           (<connected-to-lcd_rd_lcd_rd>),           //        lcd_rd.lcd_rd
		.lcd_wr_lcd_wr           (<connected-to-lcd_wr_lcd_wr>),           //        lcd_wr.lcd_wr
		.lcd_reset_n_lcd_reset_n (<connected-to-lcd_reset_n_lcd_reset_n>), //   lcd_reset_n.lcd_reset_n
		.ext_irq_ext_irq         (<connected-to-ext_irq_ext_irq>),         //       ext_irq.ext_irq
		.am_readok_am_readok     (<connected-to-am_readok_am_readok>)      //     am_readok.am_readok
	);

