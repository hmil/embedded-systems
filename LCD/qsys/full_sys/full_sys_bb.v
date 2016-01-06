
module full_sys (
	clk_clk,
	clk_sdram_clk,
	reset_n_reset_n,
	sdram_addr,
	sdram_ba,
	sdram_cas_n,
	sdram_cke,
	sdram_cs_n,
	sdram_dq,
	sdram_dqm,
	sdram_ras_n,
	sdram_we_n,
	signaltap_clk_clk,
	lcd_data_lcd_data,
	lcd_dc_lcd_dc,
	lcd_rd_lcd_rd,
	lcd_wr_lcd_wr,
	lcd_reset_n_lcd_reset_n,
	ext_irq_ext_irq,
	am_readok_am_readok);	

	input		clk_clk;
	output		clk_sdram_clk;
	input		reset_n_reset_n;
	output	[12:0]	sdram_addr;
	output	[1:0]	sdram_ba;
	output		sdram_cas_n;
	output		sdram_cke;
	output		sdram_cs_n;
	inout	[15:0]	sdram_dq;
	output	[1:0]	sdram_dqm;
	output		sdram_ras_n;
	output		sdram_we_n;
	output		signaltap_clk_clk;
	output	[15:0]	lcd_data_lcd_data;
	output		lcd_dc_lcd_dc;
	output		lcd_rd_lcd_rd;
	output		lcd_wr_lcd_wr;
	output		lcd_reset_n_lcd_reset_n;
	input		ext_irq_ext_irq;
	output		am_readok_am_readok;
endmodule
