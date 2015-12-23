package cctrl_constants is

  constant CAMERA_CONTROLLER_REG_BUFFER_START : natural := 0;
  constant CAMERA_CONTROLLER_REG_BUFFER_LEN   : natural := 1;
  constant CAMERA_CONTROLLER_REG_CURRENT_FRAME: natural := 2;
  constant CAMERA_CONTROLLER_REG_CTRL_1       : natural := 3;

  constant CAMERA_CONTROLLER_CTRL_START       : natural := 16#10#;
  constant CAMERA_CONTROLLER_CTRL_STOP        : natural := 16#20#;
  constant CAMERA_CONTROLLER_CTRL_RESET       : natural := 16#40#;

end package cctrl_constants;
