#ifndef CAMERA_HAL_H_
#define CAMERA_HAL_H_

#define CAMERA_DATA_PORT      0
#define CAMERA_CMD_PORT       1
#define CAMERA_STATUS_PORT    2

#define CAMERA_WIDTH          1280
#define CAMERA_HEIGHT         1024

#define FLAG_START              0x01
#define FLAG_STOP               0x02


#define CAMERA_CAPTURE_START()  IOWR(CAMERA_BASE, CAMERA_CMD_PORT, FLAG_START)
#define CAMERA_CAPTURE_STOP()   IOWR(CAMERA_BASE, CAMERA_CMD_PORT, FLAG_STOP)
#define CAMERA_READ()           IORD(CAMERA_BASE, CAMERA_DATA_PORT)


#endif /*CAMERA_HAL_H_*/
