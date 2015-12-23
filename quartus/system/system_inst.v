	system u0 (
		.camera_controller_current_frame     (<connected-to-camera_controller_current_frame>),     //       camera_controller.current_frame
		.camera_controller_read_done         (<connected-to-camera_controller_read_done>),         //                        .read_done
		.clk_clk                             (<connected-to-clk_clk>),                             //                     clk.clk
		.frame_rdy_irq                       (<connected-to-frame_rdy_irq>),                       //               frame_rdy.irq
		.i2c_scl                             (<connected-to-i2c_scl>),                             //                     i2c.scl
		.i2c_sda                             (<connected-to-i2c_sda>),                             //                        .sda
		.sdram_clk_clk                       (<connected-to-sdram_clk_clk>),                       //               sdram_clk.clk
		.sdram_wire_addr                     (<connected-to-sdram_wire_addr>),                     //              sdram_wire.addr
		.sdram_wire_ba                       (<connected-to-sdram_wire_ba>),                       //                        .ba
		.sdram_wire_cas_n                    (<connected-to-sdram_wire_cas_n>),                    //                        .cas_n
		.sdram_wire_cke                      (<connected-to-sdram_wire_cke>),                      //                        .cke
		.sdram_wire_cs_n                     (<connected-to-sdram_wire_cs_n>),                     //                        .cs_n
		.sdram_wire_dq                       (<connected-to-sdram_wire_dq>),                       //                        .dq
		.sdram_wire_dqm                      (<connected-to-sdram_wire_dqm>),                      //                        .dqm
		.sdram_wire_ras_n                    (<connected-to-sdram_wire_ras_n>),                    //                        .ras_n
		.sdram_wire_we_n                     (<connected-to-sdram_wire_we_n>),                     //                        .we_n
		.sensor_output_generator_frame_valid (<connected-to-sensor_output_generator_frame_valid>), // sensor_output_generator.frame_valid
		.sensor_output_generator_line_valid  (<connected-to-sensor_output_generator_line_valid>),  //                        .line_valid
		.sensor_output_generator_data        (<connected-to-sensor_output_generator_data>),        //                        .data
		.camera_input_clk                    (<connected-to-camera_input_clk>),                    //            camera_input.clk
		.camera_input_frame_valid            (<connected-to-camera_input_frame_valid>),            //                        .frame_valid
		.camera_input_line_valid             (<connected-to-camera_input_line_valid>),             //                        .line_valid
		.camera_input_data                   (<connected-to-camera_input_data>),                   //                        .data
		.camera_input_cam_reset_n            (<connected-to-camera_input_cam_reset_n>)             //                        .cam_reset_n
	);

