/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <io.h>
#include <stdio.h>
#include <system.h>
#include <unistd.h>
#include <HAL/inc/sys/alt_cache.h>

#include "i2c/i2c.h"
#include "../../CameraController/CameraController.h"

void printPreset(const char * name, CamPresetID id) {
	struct CamPreset myPreset = cam_get_preset(id);
	// printf("%s\tW: %d, H: %d, fps: %.2f\n", name, myPreset.width, myPreset.height, myPreset.fps);
}

void sleep_ms(int milisec)
{
    int i;
    int k;
    for (i = 0; i < milisec; i++) {
        for (k = 0; k < 125; k++) {
             __asm("nop");
        }
    }
}

void dump_word(const void *addr)
{
	printf("[%08x] %08x\n", (unsigned int)addr, IORD_32DIRECT(0, (unsigned int)addr));
}

void dump_pcm_header(unsigned int width, unsigned int height) {
	printf("P3\n");
	printf("%d %d\n", width, height);
	printf("255\n");
}

void dump_pcm_data(const void *buffer, unsigned int width, unsigned int height)
{
	unsigned int i = 0;

	for (i = 0 ; i < (width * height) ; i ++) {
		unsigned short px = ((unsigned short *)buffer)[i];


		unsigned char b = (px & 0x001f);
		unsigned char v = (px & 0x07e0) >> 5;
		unsigned char r = (px & 0xf800) >> 11; // bit 15 -> bit 8

//		unsigned char b = (px & 0x001f) <<  3;
//		unsigned char v = (px & 0x07e0) >>  4;
//		unsigned char r = (px & 0xf800) >> 11;

		printf("%03d %03d %03d  ", ((int)r * 255) / 0x1f, ((int)v * 255) / 0x3f, ((int)b * 255) / 0x1f);
		// printf("%04x ", px);
		if ((i+1) % width == 0) {
			putchar('\n');
		}
	}

}

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


int main()
{
    i2c_dev i2c = i2c_inst((void *) I2C_0_BASE);
    i2c_init(&i2c, I2C_FREQ);

    int width = 640, height = 480; // VGA
//    int width = 160, height = 120;

    dump_pcm_header(width, height);

    // Sample on rising edge
    trdb_d5m_write(&i2c, 0x00a, 0x8000);
    // Test pattern
    trdb_d5m_write(&i2c, 0x0a0, (8 << 3) | (0x0));
    trdb_d5m_write(&i2c, 0x00c, 8000); // Shutter delay (increases exposure)

    // USE BINNING:

    // Frame height (8 times height to account for Bayes pattern and row binning)
	trdb_d5m_write(&i2c, 0x003, (height << 2) - 1);
	// Frame width
	trdb_d5m_write(&i2c, 0x004, (width << 2) - 1);
	// Row binning x4
	trdb_d5m_write(&i2c, 0x022, 0x0011);
	// Column binning x4
	trdb_d5m_write(&i2c, 0x023, 0x0011);

	// NO BINNING:
//	// Frame height
//	trdb_d5m_write(&i2c, 0x003, (height << 1) - 1);
//	// Frame width
//	trdb_d5m_write(&i2c, 0x004, (width << 1) - 1);
//	// No row binning x4
//	trdb_d5m_write(&i2c, 0x022, 0x0000);
//	// No column binning
//	trdb_d5m_write(&i2c, 0x023, 0x0000);


    void *buffer = calloc(2, width*height);
	if (buffer == NULL) {
		 printf("# Cannot allocate image buffer\n");
		return 1;
	}

	IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x1c, 0); // Stop generation

	// Reset camera
	// IOWR_32DIRECT(CAMERA_CONTROLLER_0_BASE, CAM_CTRL_1, CAM_RESET);

	// Set output buffer address
	IOWR_32DIRECT(CAMERA_CONTROLLER_0_BASE, CAM_BUFFER_START, buffer);
	// Start capture
	IOWR_32DIRECT(CAMERA_CONTROLLER_0_BASE, CAM_CTRL_1, CAM_START);

	IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x00, width << 1); // Width
	IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x04, height << 1); // Height
	IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x08, 1);
	IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x0c, 0);
	IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x10, 1);
	IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x14, 0);
	IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x18, 0); // Generate random
	IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x1c, 1); // Start generation

//	  constant FRAME_FRAME_BLANK_CYCLES : positive := 1;
//	  constant FRAME_LINE_BLANK_CYCLES  : natural  := 0;
//	  constant LINE_LINE_BLANK_CYCLES   : positive := 1;
//	  constant LINE_FRAME_BLANK_CYCLES  : natural  := 0;

	int ctl;
	do {
		ctl = IORD_32DIRECT(CAMERA_CONTROLLER_0_BASE, 0x0c);
		 printf("# CTRL: %08x\n", ctl);

		 int debug_reg = IORD_32DIRECT(CAMERA_CONTROLLER_0_BASE, 0x14);
		 printf("# DBG: %08x\n", debug_reg);

		sleep_ms(10000);
	} while ( !(ctl & 0x80) );

	printf("\n# Finished\n");

	dump_pcm_data(buffer, width, height);


    return 0;
}

//int main()
//{
////  // printf("Welcome to the camera app demo!\n");
////
////  // printf("Presets:\n");
////  printPreset("FULL", CAM_FULL);
////  printPreset("QXGA", CAM_QXGA);
////  printPreset("UXGA", CAM_UXGA);
////  printPreset("SXGA", CAM_SXGA);
////  printPreset("XGA" , CAM_XGA);
////  printPreset("SVGA", CAM_SVGA);
////  printPreset("VGA" , CAM_VGA);
////  printPreset("1080p", CAM_1080p);
////  printPreset("720p", CAM_720p);
////
////  int model = 0x5432;
////  int response;
////
////  IOWR_16DIRECT(CAMERA_CONTROLLER_0_BASE, CAM_BUFFER_START, model);
////  response = IORD_16DIRECT(CAMERA_CONTROLLER_0_BASE, CAM_BUFFER_START);
////
////  // printf("Wrote: %d, read %d\n", model, response);
//
//
//  const int width = 64, height = 32;
//  int i = 0;
//  unsigned int ctl = 0;
//  void *buffer = calloc(2, width*height);
//  if (buffer == NULL) {
//	  // printf("Cannot allocate image buffer\n");
//	  return 1;
//  }
//  // printf("Clear system\n");
//  IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x1c, 0); // STOP CMOS GENERATION
//  //IOWR_32DIRECT(CAMERA_CONTROLLER_0_BASE, CAMERA_CONTROLLER_0_BASE, CAM_RESET); // START CMOS GENERATION
//
////   printf("Initialize sensor output generator \n");
//  sleep_ms(1000);
//
////  // Setup some latency
////  IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x00, width* 2);
////  IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x04, height * 2);
////  IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x08, 4);
////  IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x0C, 4);
////  IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x10, 4);
////  IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x14, 4);
////	IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x18, 0); // Do not Generate random
//////	 printf("Start !\n");
////  IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x1c, 1); // START CMOS GENERATION
//
//  ctl = IORD_32DIRECT(CAMERA_CONTROLLER_0_BASE, 0x14);
////   printf("101 => %08x\n", ctl);
//
//  IOWR_32DIRECT(CAMERA_CONTROLLER_0_BASE, CAM_BUFFER_START, buffer);
//  IOWR_32DIRECT(CAMERA_CONTROLLER_0_BASE, CAM_CTRL_1, CAM_START);
//
////   printf("started\n");
//
//  ctl = IORD_32DIRECT(CAMERA_CONTROLLER_0_BASE, CAM_CTRL_1);
////   printf("CTRL: %08x\n", ctl);
//	do {
//		ctl = IORD_32DIRECT(CAMERA_CONTROLLER_0_BASE, 0x14);
//		// printf("101 => %08x\n", ctl);
//		ctl = IORD_32DIRECT(CAMERA_CONTROLLER_0_BASE, CAM_CTRL_1);
//		// printf("CTRL: %08x\n", ctl);
//
//		sleep_ms(1000);
//	} while (! (ctl & 0x80) );
//
//	// printf("Stop generation\n");
//	IOWR_32DIRECT(CMOS_SENSOR_OUTPUT_GENERATOR_0_BASE, 0x1c, 0); // STOP CMOS GENERATION
//
//	// printf("\nSecond round:\n");
//	IOWR_32DIRECT(CAMERA_CONTROLLER_0_BASE, CAM_BUFFER_START, buffer + 12);
//	IOWR_32DIRECT(CAMERA_CONTROLLER_0_BASE, CAM_CTRL_1, CAM_START);
//	ctl = IORD_32DIRECT(CAMERA_CONTROLLER_0_BASE, 0x14);
//	// printf("101 => %08x\n", ctl);
//	do {
//		ctl = IORD_32DIRECT(CAMERA_CONTROLLER_0_BASE, 0x14);
//		// printf("101 => %08x\n", ctl);
//		ctl = IORD_32DIRECT(CAMERA_CONTROLLER_0_BASE, CAM_CTRL_1);
//		// printf("CTRL: %08x\n", ctl);
//
//		sleep_ms(1000);
//	} while (! (ctl & 0x80) );
//
//  // printf("Done\n");
////  sleep_ms(100);
////  for (i = buffer ; i < buffer + 128 ; i += 4) {
////	  dump_word(i);
////  }
//
//
//  // PCM export
//  printf("P3\n");
//  printf("%d %d\n", width, height);
//  printf("255\n");
//
//  for (i = 0 ; i < (width * height) ; i ++) {
//	  unsigned int px = (unsigned int)((char *)buffer)[i*2];
//
//	  // Color conversion is not true as it should be rescaled linearly. But a bit shift is faster and good enough
//	  unsigned char b = (px & 0x001f) << 3; // bit 5  -> bit 8
//	  unsigned char v = (px & 0x07e0) /* >> 4 */ >> 3; // bit 11 -> bit 8
//	  unsigned char r = (px & 0xf800) /* >> 11 */ >> 7; // bit 15 -> bit 8
//
//	  printf("%03d %03d %03d  ", (int)r, (int)v, (int)b);
//	  if (i % width == 0) {
//		  putchar('\n');
//	  }
//  }
//
//  printf("\n# Done\n");
//
//
//
////	unsigned int nb = IORD_32DIRECT(CAMERA_CONTROLLER_0_BASE, 0x10);
////	int i;
////	// printf("Initial: %08x\n", nb);
////	for (i = 0 ; i < 10 ; i++) {
////
//////		IOWR_32DIRECT(CAMERA_CONTROLLER_0_BASE, 0x14, i);
//////
//////		IOWR_32DIRECT(CAMERA_CONTROLLER_0_BASE, 0x14, i+0x100);
////		nb = IORD_32DIRECT(CAMERA_CONTROLLER_0_BASE, 0x10);
////		// printf("%d: %08x\n", i, nb);
////	}
//  return 0;
//}
