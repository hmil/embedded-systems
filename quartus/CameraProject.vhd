LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY CameraProject IS
	port(
			-- CLOCK
			CLOCK_50			: in		std_logic;

			-- LED
			-- LED					 : out	 std_logic_vector(7 downto 0);

			-- KEY_N
			-- KEY_N				 : in		std_logic_vector(1 downto 0);

			-- SW
			-- SW						: in		std_logic_vector(3 downto 0);

			-- SDRAM
			DRAM_ADDR		 : out	 std_logic_vector(12 downto 0);
			DRAM_BA			 : out	 std_logic_vector(1 downto 0);
			DRAM_CAS_N		: out	 std_logic;
			DRAM_CKE			: out	 std_logic;
			DRAM_CLK			: out	 std_logic;
			DRAM_CS_N		 : out	 std_logic;
			DRAM_DQ			 : inout std_logic_vector(15 downto 0);
			DRAM_DQM			: out	 std_logic_vector(1 downto 0);
			DRAM_RAS_N		: out	 std_logic;
			DRAM_WE_N		 : out	 std_logic;
			--
			-- -- EPCS
			-- EPCS_ASDO		 : out	 std_logic;
			-- EPCS_DATA0		: in		std_logic;
			-- EPCS_DCLK		 : out	 std_logic;
			-- EPCS_NCSO		 : out	 std_logic;
			--
			-- -- Accelerometer and EEPROM
			-- G_SENSOR_CS_N : out	 std_logic;
			-- G_SENSOR_INT	: in		std_logic;
			-- I2C_SCLK			: out	 std_logic;
			-- I2C_SDAT			: inout std_logic;
			--
			-- -- ADC
			-- ADC_CS_N			: out	 std_logic;
			-- ADC_SADDR		 : out	 std_logic;
			-- ADC_SCLK			: out	 std_logic;
			-- ADC_SDAT			: in		std_logic;
			--
			-- -- 2x13 GPIO Header
			-- GPIO_2				: inout std_logic_vector(12 downto 0);
			-- GPIO_2_IN		 : in		std_logic_vector(2 downto 0);
			--
			-- -- GPIO_0
			GPIO_0_IN0: IN STD_LOGIC; -- PIXCLK
			GPIO_0_14: OUT STD_LOGIC; -- XCLKIN
			GPIO_0_20: IN STD_LOGIC; -- FVAL
			GPIO_0_19: IN STD_LOGIC; -- LVAL
			GPIO_0_22: INOUT STD_LOGIC; -- SCLK
			GPIO_0_21: INOUT STD_LOGIC; --- SDATA
			GPIO_0_15: OUT STD_LOGIC; -- RESETn
			GPIO_0_17: OUT STD_LOGIC; -- TRIGGER
			-- GPIO_0_18: IN STD_LOGIC; -- STROBE (ignored)
			-- data
			GPIO_0_11: IN STD_LOGIC;
			GPIO_0_10: IN STD_LOGIC;
			GPIO_0_9: IN STD_LOGIC;
			GPIO_0_8: IN STD_LOGIC;
			GPIO_0_7: IN STD_LOGIC;
			GPIO_0_6: IN STD_LOGIC;
			GPIO_0_5: IN STD_LOGIC;
			GPIO_0_4: IN STD_LOGIC;
			GPIO_0_3: IN STD_LOGIC;
			GPIO_0_2: IN STD_LOGIC;
			GPIO_0_1: IN STD_LOGIC;
			GPIO_0_0: IN STD_LOGIC
			--
			-- -- GPIO_1
			-- GPIO_1				: inout std_logic_vector(33 downto 0);
			-- GPIO_1_IN		 : in		std_logic_vector(1 downto 0)
	);
END CameraProject ;

ARCHITECTURE a OF CameraProject	IS

	component system is
		port (
			clk_clk						: in		std_logic := 'X';
			sdram_wire_addr		: out	 	std_logic_vector(12 downto 0);										-- addr
			sdram_wire_ba			: out	 	std_logic_vector(1 downto 0);											-- ba
			sdram_wire_cas_n 	: out		std_logic;																				-- cas_n
			sdram_wire_cke		: out		std_logic;																				-- cke
			sdram_wire_cs_n		: out	 	std_logic;																				-- cs_n
			sdram_wire_dq			: inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm		: out		std_logic_vector(1 downto 0);											-- dqm
			sdram_wire_ras_n 	: out		std_logic;																				-- ras_n
			sdram_wire_we_n		: out	 	std_logic;																				-- we_n
			sdram_clk_clk			: out	 	std_logic;																				-- clk
			camera_controller_current_frame : out	 std_logic_vector(31 downto 0);			-- current_frame
			camera_controller_read_done			: in		std_logic	 := 'X' ;									-- read_done
			camera_input_clk								: in		std_logic										 := 'X';						 -- clk
			camera_input_frame_valid				: in		std_logic										 := 'X';						 -- frame_valid
			camera_input_line_valid					: in		std_logic										 := 'X';						 -- line_valid
			camera_input_data								: in		std_logic_vector(11 downto 0) := (others => 'X');	-- data
			camera_input_cam_reset_n            : out   std_logic;                                        -- cam_reset_n
			sensor_output_generator_frame_valid : out   std_logic;                                        -- frame_valid
			sensor_output_generator_line_valid  : out   std_logic;                                        -- line_valid
			sensor_output_generator_data        : out   std_logic_vector(11 downto 0);                     -- data
			i2c_scl                             : inout std_logic                     := 'X';             -- scl
			i2c_sda                             : inout std_logic                     := 'X'              -- sda
		);
	end component system;

	signal frame_valid: std_logic;
	signal line_valid: std_logic;
	signal cam_data: std_logic_vector(11 downto 0);
	signal sReset_n: std_logic;

BEGIN

	GPIO_0_14 <= CLOCK_50;
	GPIO_0_15 <= sReset_n;
	GPIO_0_17 <= '0';


	cam_data <= GPIO_0_0 & GPIO_0_1 & GPIO_0_2  & GPIO_0_3 &
							GPIO_0_4 & GPIO_0_5 & GPIO_0_6  & GPIO_0_7 &
							GPIO_0_8 & GPIO_0_9 & GPIO_0_10 & GPIO_0_11;

	u0			 : system PORT MAP (
		clk_clk => CLOCK_50,
		sdram_clk_clk => DRAM_CLK,
		sdram_wire_addr => DRAM_ADDR,
		sdram_wire_ba => DRAM_BA,
		sdram_wire_cas_n => DRAM_CAS_N,
		sdram_wire_cke => DRAM_CKE,
		sdram_wire_cs_n => DRAM_CS_N,
		sdram_wire_dq => DRAM_DQ,
		sdram_wire_dqm => DRAM_DQM,
		sdram_wire_ras_n => DRAM_RAS_N,
		sdram_wire_we_n => DRAM_WE_N,
		camera_input_data => cam_data,
		camera_input_cam_reset_n => sReset_n,
		i2c_scl => GPIO_0_22,
		i2c_sda => GPIO_0_21,

		camera_controller_read_done => '0',

		-- Use simulator:

		-- camera_input_clk => CLOCK_50,
		-- camera_input_line_valid => line_valid,
		-- camera_input_frame_valid => frame_valid
		-- sensor_output_generator_line_valid => line_valid,
		-- sensor_output_generator_frame_valid => frame_valid,
		-- sensor_output_generator_data => cam_data,

		-- Use actual hardware:

		camera_input_clk => CLOCK_50, -- GPIO_0_IN0,
		camera_input_line_valid => GPIO_0_19,
		camera_input_frame_valid => GPIO_0_20

	);

END a;
