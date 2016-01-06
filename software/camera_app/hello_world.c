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

#include "../../CameraController/CameraController.h"


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

void dump_pcm_data(uint16_t *buffer, unsigned int width, unsigned int height)
{
	unsigned int i = 0;

	for (i = 0 ; i < (width * height) ; i ++) {
		unsigned short px = buffer[i];


		unsigned char b = (px & 0x001f);
		unsigned char v = (px & 0x07e0) >> 5;
		unsigned char r = (px & 0xf800) >> 11; // bit 15 -> bit 8

		printf("%03d %03d %03d  ", ((int)r * 255) / 0x1f, ((int)v * 255) / 0x3f, ((int)b * 255) / 0x1f);
		// printf("%04x ", px);
		if ((i+1) % width == 0) {
			putchar('\n');
		}
	}

}


int main()
{
  struct Camera *cam = camera_controller_create((void*)CAMERA_CONTROLLER_0_BASE);

  int i = 0;

  int width = 160, height = 120; // VGA

	struct CameraConfig conf;
	conf.width = width;
	conf.height = height;

	if(!camera_controller_configure(cam, &conf)) {
		return 0;
	}

	camera_controller_start(cam);

	for (i = 0 ; i < 10 ; i++) {
		puts("# == NEW FRAME \n");
		dump_pcm_header(width, height);
		int ctl;
		do {
			ctl = camera_controller_read_ctrl_1(cam);
			printf("# CTRL: %08x\n", ctl);
			sleep_ms(10000);
		} while ( !(ctl & CAM_READ_AVAIL) );

		uint16_t* addr = camera_controller_read_current_frame(cam);
		printf("# Buffer addr: %08x \n", (int)addr);
		dump_pcm_data(addr, width, height);
		camera_controller_read_done(cam);
	}

	camera_controller_stop(cam);
	printf("\n# Finished\n");

	camera_controller_destroy(cam);
    return 0;
}
