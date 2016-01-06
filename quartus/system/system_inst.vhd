	component system is
		port (
			camera_controller_current_frame     : out   std_logic_vector(31 downto 0);                    -- current_frame
			camera_controller_read_done         : in    std_logic                     := 'X';             -- read_done
			camera_input_clk                    : in    std_logic                     := 'X';             -- clk
			camera_input_frame_valid            : in    std_logic                     := 'X';             -- frame_valid
			camera_input_line_valid             : in    std_logic                     := 'X';             -- line_valid
			camera_input_data                   : in    std_logic_vector(11 downto 0) := (others => 'X'); -- data
			camera_input_cam_reset_n            : out   std_logic;                                        -- cam_reset_n
			clk_clk                             : in    std_logic                     := 'X';             -- clk
			frame_rdy_irq                       : out   std_logic;                                        -- irq
			i2c_scl                             : inout std_logic                     := 'X';             -- scl
			i2c_sda                             : inout std_logic                     := 'X';             -- sda
			sdram_clk_clk                       : out   std_logic;                                        -- clk
			sdram_wire_addr                     : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_wire_ba                       : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n                    : out   std_logic;                                        -- cas_n
			sdram_wire_cke                      : out   std_logic;                                        -- cke
			sdram_wire_cs_n                     : out   std_logic;                                        -- cs_n
			sdram_wire_dq                       : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm                      : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_wire_ras_n                    : out   std_logic;                                        -- ras_n
			sdram_wire_we_n                     : out   std_logic;                                        -- we_n
			sensor_output_generator_frame_valid : out   std_logic;                                        -- frame_valid
			sensor_output_generator_line_valid  : out   std_logic;                                        -- line_valid
			sensor_output_generator_data        : out   std_logic_vector(11 downto 0);                    -- data
			lcd_conduit_lcd_data                : out   std_logic_vector(15 downto 0);                    -- lcd_data
			lcd_conduit_lcd_dc                  : out   std_logic;                                        -- lcd_dc
			lcd_conduit_lcd_rd                  : out   std_logic;                                        -- lcd_rd
			lcd_conduit_lcd_wr                  : out   std_logic;                                        -- lcd_wr
			lcd_conduit_lcd_reset_n             : out   std_logic;                                        -- lcd_reset_n
			lcd_controller_ext_irq              : in    std_logic                     := 'X';             -- ext_irq
			lcd_controller_am_readok            : out   std_logic                                         -- am_readok
		);
	end component system;

	u0 : component system
		port map (
			camera_controller_current_frame     => CONNECTED_TO_camera_controller_current_frame,     --       camera_controller.current_frame
			camera_controller_read_done         => CONNECTED_TO_camera_controller_read_done,         --                        .read_done
			camera_input_clk                    => CONNECTED_TO_camera_input_clk,                    --            camera_input.clk
			camera_input_frame_valid            => CONNECTED_TO_camera_input_frame_valid,            --                        .frame_valid
			camera_input_line_valid             => CONNECTED_TO_camera_input_line_valid,             --                        .line_valid
			camera_input_data                   => CONNECTED_TO_camera_input_data,                   --                        .data
			camera_input_cam_reset_n            => CONNECTED_TO_camera_input_cam_reset_n,            --                        .cam_reset_n
			clk_clk                             => CONNECTED_TO_clk_clk,                             --                     clk.clk
			frame_rdy_irq                       => CONNECTED_TO_frame_rdy_irq,                       --               frame_rdy.irq
			i2c_scl                             => CONNECTED_TO_i2c_scl,                             --                     i2c.scl
			i2c_sda                             => CONNECTED_TO_i2c_sda,                             --                        .sda
			sdram_clk_clk                       => CONNECTED_TO_sdram_clk_clk,                       --               sdram_clk.clk
			sdram_wire_addr                     => CONNECTED_TO_sdram_wire_addr,                     --              sdram_wire.addr
			sdram_wire_ba                       => CONNECTED_TO_sdram_wire_ba,                       --                        .ba
			sdram_wire_cas_n                    => CONNECTED_TO_sdram_wire_cas_n,                    --                        .cas_n
			sdram_wire_cke                      => CONNECTED_TO_sdram_wire_cke,                      --                        .cke
			sdram_wire_cs_n                     => CONNECTED_TO_sdram_wire_cs_n,                     --                        .cs_n
			sdram_wire_dq                       => CONNECTED_TO_sdram_wire_dq,                       --                        .dq
			sdram_wire_dqm                      => CONNECTED_TO_sdram_wire_dqm,                      --                        .dqm
			sdram_wire_ras_n                    => CONNECTED_TO_sdram_wire_ras_n,                    --                        .ras_n
			sdram_wire_we_n                     => CONNECTED_TO_sdram_wire_we_n,                     --                        .we_n
			sensor_output_generator_frame_valid => CONNECTED_TO_sensor_output_generator_frame_valid, -- sensor_output_generator.frame_valid
			sensor_output_generator_line_valid  => CONNECTED_TO_sensor_output_generator_line_valid,  --                        .line_valid
			sensor_output_generator_data        => CONNECTED_TO_sensor_output_generator_data,        --                        .data
			lcd_conduit_lcd_data                => CONNECTED_TO_lcd_conduit_lcd_data,                --             lcd_conduit.lcd_data
			lcd_conduit_lcd_dc                  => CONNECTED_TO_lcd_conduit_lcd_dc,                  --                        .lcd_dc
			lcd_conduit_lcd_rd                  => CONNECTED_TO_lcd_conduit_lcd_rd,                  --                        .lcd_rd
			lcd_conduit_lcd_wr                  => CONNECTED_TO_lcd_conduit_lcd_wr,                  --                        .lcd_wr
			lcd_conduit_lcd_reset_n             => CONNECTED_TO_lcd_conduit_lcd_reset_n,             --                        .lcd_reset_n
			lcd_controller_ext_irq              => CONNECTED_TO_lcd_controller_ext_irq,              --          lcd_controller.ext_irq
			lcd_controller_am_readok            => CONNECTED_TO_lcd_controller_am_readok             --                        .am_readok
		);

