
module system (
	camera_controller_current_frame,
	camera_controller_read_done,
	clk_clk,
	frame_rdy_irq,
	i2c_scl,
	i2c_sda,
	sdram_clk_clk,
	sdram_wire_addr,
	sdram_wire_ba,
	sdram_wire_cas_n,
	sdram_wire_cke,
	sdram_wire_cs_n,
	sdram_wire_dq,
	sdram_wire_dqm,
	sdram_wire_ras_n,
	sdram_wire_we_n,
	sensor_output_generator_frame_valid,
	sensor_output_generator_line_valid,
	sensor_output_generator_data,
	camera_input_clk,
	camera_input_frame_valid,
	camera_input_line_valid,
	camera_input_data,
	camera_input_cam_reset_n);	

	output	[31:0]	camera_controller_current_frame;
	input		camera_controller_read_done;
	input		clk_clk;
	output		frame_rdy_irq;
	inout		i2c_scl;
	inout		i2c_sda;
	output		sdram_clk_clk;
	output	[12:0]	sdram_wire_addr;
	output	[1:0]	sdram_wire_ba;
	output		sdram_wire_cas_n;
	output		sdram_wire_cke;
	output		sdram_wire_cs_n;
	inout	[15:0]	sdram_wire_dq;
	output	[1:0]	sdram_wire_dqm;
	output		sdram_wire_ras_n;
	output		sdram_wire_we_n;
	output		sensor_output_generator_frame_valid;
	output		sensor_output_generator_line_valid;
	output	[11:0]	sensor_output_generator_data;
	input		camera_input_clk;
	input		camera_input_frame_valid;
	input		camera_input_line_valid;
	input	[11:0]	camera_input_data;
	output		camera_input_cam_reset_n;
endmodule
