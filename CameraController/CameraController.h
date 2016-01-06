#include <unistd.h>
#include <io.h>
#include <stdio.h>

#include "i2c/i2c.h"

#ifndef CAMERA_CONTROLLER_H
#define CAMERA_CONTROLLER_H

  // I2C stuff

  #define I2C_FREQ              (50000000) /* 50 MHz -- clock frequency driving the i2c core: 50 MHz */
  #define TRDB_D5M_I2C_ADDRESS  (0xba)

  bool trdb_d5m_write(i2c_dev *i2c, uint8_t register_offset, uint16_t data) {
      uint8_t byte_data[2] = {(data >> 8) & 0xff, data & 0xff};

      int success = i2c_write_array(i2c, TRDB_D5M_I2C_ADDRESS, register_offset, byte_data, sizeof(byte_data));

      if (success != I2C_SUCCESS) {
          return false;
      } else {
          return true;
      }
  }

  bool trdb_d5m_read(i2c_dev *i2c, uint8_t register_offset, uint16_t *data) {
      uint8_t byte_data[2] = {0, 0};

      int success = i2c_read_array(i2c, TRDB_D5M_I2C_ADDRESS, register_offset, byte_data, sizeof(byte_data));

      if (success != I2C_SUCCESS) {
          return false;
      } else {
          *data = ((uint16_t) byte_data[0] << 8) + byte_data[1];
          return true;
      }
  }

  // Registers

  // 16bit address to first byte of the image buffer array
  #define CAM_BUFFER_START    0x00
  // Length of a frame in bytes
  #define CAM_FRAME_LENGTH    0x04
  // Address to the first byte of the next ready image
  #define CAM_CURRENT_FRAME   0x08
  // Control register 1
  #define CAM_CTRL_1          0x0c

  // Operation control segment (CAM_CTRL_1)
  #define CAM_START           0x0010
  #define CAM_STOP            0x0020
  #define CAM_RESET           0x0040
  #define CAM_READ_DONE       0x0080
  #define CAM_READ_AVAIL      0x0100

  #define CAM_NB_BUFFERS      4

  struct CameraConfig {
    int width;
    int height;
    int bin;
  };

  struct Camera {
    i2c_dev i2c;
    uint16_t* buffer;
    void* addr;
  };

  struct Camera *camera_controller_create(void* addr) {
    struct Camera *cam = malloc(sizeof(struct Camera));
    cam->addr = addr;
    cam->i2c = i2c_inst((void *) I2C_0_BASE);
    i2c_init(&cam->i2c, I2C_FREQ);
    cam->buffer = NULL;
    return cam;
  }

  void camera_controller_destroy(struct Camera *cam) {
    free(cam->buffer);
    free(cam);
  }

  int camera_controller_configure(struct Camera* cam, struct CameraConfig *conf) {
    // Sample on rising edge
    trdb_d5m_write(&cam->i2c, 0x00a, 0x8000);

    #ifdef TEST_PATTERN
      trdb_d5m_write(&cam->i2c, 0x0a0, (TEST_PATTERN << 3) | (0x1));
    #else
      trdb_d5m_write(&cam->i2c, 0x0a0, 0);
    #endif


    if ((cam->buffer = realloc(cam->buffer, sizeof(uint16_t)*CAM_NB_BUFFERS*conf->width*conf->height)) == NULL) {
  		printf("# Cannot allocate image buffer\n");
  		return 0;
  	}

    // trdb_d5m_write(&i2c, 0x00c, 8000); // Shutter delay (increases exposure)

    trdb_d5m_write(&cam->i2c, 0x003, (conf->height << 2) - 1);
    // Frame width
    trdb_d5m_write(&cam->i2c, 0x004, (conf->width << 2) - 1);
    // Row binning x4
    trdb_d5m_write(&cam->i2c, 0x022, 0x0011);
    // Column binning x4
    trdb_d5m_write(&cam->i2c, 0x023, 0x0011);


    IOWR_32DIRECT(cam->addr, CAM_CTRL_1, CAM_RESET);

  	// Set output buffer address
  	IOWR_32DIRECT(cam->addr, CAM_BUFFER_START, (int)cam->buffer);
  	IOWR_32DIRECT(cam->addr, CAM_FRAME_LENGTH, conf->width * conf->height * 2);

    return 1;
  }

  inline void camera_controller_start(struct Camera *cam) {
  	IOWR_32DIRECT(cam->addr, CAM_CTRL_1, CAM_START);
  }

  inline void camera_controller_stop(struct Camera *cam) {
  	IOWR_32DIRECT(cam->addr, CAM_CTRL_1, CAM_STOP);
  }

  inline void camera_controller_read_done(struct Camera *cam) {
    IOWR_32DIRECT(cam->addr, CAM_CTRL_1, CAM_READ_DONE);
  }

  inline uint16_t* camera_controller_read_current_frame(struct Camera *cam) {
    return (uint16_t*)IORD_32DIRECT(cam->addr, CAM_CURRENT_FRAME);
  }

  inline uint32_t camera_controller_read_ctrl_1(struct Camera *cam) {
    return IORD_32DIRECT(cam->addr, CAM_CTRL_1);
  }

#endif
