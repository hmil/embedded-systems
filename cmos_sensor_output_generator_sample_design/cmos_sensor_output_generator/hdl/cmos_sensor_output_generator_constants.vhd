package cmos_sensor_output_generator_constants is
    constant CMOS_SENSOR_OUTPUT_GENERATOR_MM_S_DATA_WIDTH : positive := 32;

    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_ROW_SIZE_DEFAULT                 : positive := 320;
    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_COL_SIZE_DEFAULT                 : positive := 240;
    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_FRAME_BLANK_CYCLES_DEFAULT : positive := 1;
    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_LINE_BLANK_CYCLES_DEFAULT  : natural  := 0;
    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_LINE_BLANK_CYCLES_DEFAULT   : positive := 1;
    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_FRAME_BLANK_CYCLES_DEFAULT  : natural  := 0;
    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_RANDOM_DEFAULT                   : boolean  := false;

    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_ROW_SIZE_OFST                 : natural := 0; -- RW
    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_COL_SIZE_OFST                 : natural := 1; -- RW
    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_FRAME_BLANK_CYCLES_OFST : natural := 2; -- RW
    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_FRAME_LINE_BLANK_CYCLES_OFST  : natural := 3; -- RW
    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_LINE_BLANK_CYCLES_OFST   : natural := 4; -- RW
    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_LINE_FRAME_BLANK_CYCLES_OFST  : natural := 5; -- RW
    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_RANDOM_OFST                   : natural := 6; -- RW
    constant CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_OFST                         : natural := 7; -- WO

    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_SEQUENTIAL : natural := 0;
    constant CMOS_SENSOR_OUTPUT_GENERATOR_CONFIG_RANDOM     : natural := 1;

    constant CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_STOP  : natural := 0;
    constant CMOS_SENSOR_OUTPUT_GENERATOR_COMMAND_START : natural := 1;

end package cmos_sensor_output_generator_constants;
