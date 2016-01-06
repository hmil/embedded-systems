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

#include "../../CameraController/CameraController.h"


	// LCD SHIT STUFF
#define SEVENTEENTH (~(1 << 16))

#define  LCD_WR_REG(value)  LCD_WR(0,SEVENTEENTH & value)
#define  LCD_WR_DATA(value)  LCD_WR(0,((1<<16) | value))

#define LCD_WR(x,y) IOWR_32DIRECT(LCD_SYS_0_BASE, x, y)
#define LCD_CMD(x) LCD_WR(0,x)
#define LCD_DATA(x) LCD_WR(0, x)
#define buff_0 1
#define buff_1 2
#define buff_2 3
#define start_master 7

void LCD_Init();

#define  Set_LCD_RST LCD_WR(6, 0)
#define  Clr_LCD_RST LCD_WR(6, 1)

void Delay_Ms(alt_u16 count_ms)
{
    while(count_ms--)
    {
        usleep(1000);
    }
}

void LCD_Init()
{
	//alt_u16 data1,data2;
	//alt_u16 data3,data4;
	Set_LCD_RST;
	Delay_Ms(1);
	Clr_LCD_RST;
	Delay_Ms(10);       // Delay 10ms // This delay time is necessary
	Set_LCD_RST;
	Delay_Ms(120);       // Delay 120 ms
	Clr_LCD_RST;



	LCD_WR_REG(0x0011); //Exit Sleep
	LCD_WR_REG(0x00CF);
		LCD_WR_DATA(0x0000);
		LCD_WR_DATA(0x0081);
		LCD_WR_DATA(0X00c0);

	LCD_WR_REG(0x00ED);
		LCD_WR_DATA(0x0064);
		LCD_WR_DATA(0x0003);
		LCD_WR_DATA(0X0012);
		LCD_WR_DATA(0X0081);

	LCD_WR_REG(0x00E8);
		LCD_WR_DATA(0x0085);
		LCD_WR_DATA(0x0001);
		LCD_WR_DATA(0x00798);

	LCD_WR_REG(0x00CB);
		LCD_WR_DATA(0x0039);
		LCD_WR_DATA(0x002C);
		LCD_WR_DATA(0x0000);
		LCD_WR_DATA(0x0034);
		LCD_WR_DATA(0x0002);

	LCD_WR_REG(0x00F7);
		LCD_WR_DATA(0x0020);

	LCD_WR_REG(0x00EA);
		LCD_WR_DATA(0x0000);
		LCD_WR_DATA(0x0000);

	LCD_WR_REG(0x00B1);
		LCD_WR_DATA(0x0000);
		LCD_WR_DATA(0x001b);

	LCD_WR_REG(0x00B6);
		LCD_WR_DATA(0x000A);
		LCD_WR_DATA(0x00A2);

	LCD_WR_REG(0x00C0);    //Power control
		LCD_WR_DATA(0x0005);   //VRH[5:0]

	LCD_WR_REG(0x00C1);    //Power control
		LCD_WR_DATA(0x0011);   //SAP[2:0];BT[3:0]

	LCD_WR_REG(0x00C5);    //VCM control
		LCD_WR_DATA(0x0045);       //3F
		LCD_WR_DATA(0x0045);       //3C

	 LCD_WR_REG(0x00C7);    //VCM control2
		 LCD_WR_DATA(0X00a2);

	LCD_WR_REG(0x0036);    // Memory Access Control
		LCD_WR_DATA(0x0008);//48

	LCD_WR_REG(0x00F2);    // 3Gamma Function Disable
		LCD_WR_DATA(0x0000);

	LCD_WR_REG(0x0026);    //Gamma curve selected
		LCD_WR_DATA(0x0001);

	LCD_WR_REG(0x00E0);    //Set Gamma
		LCD_WR_DATA(0x000F);
		LCD_WR_DATA(0x0026);
		LCD_WR_DATA(0x0024);
		LCD_WR_DATA(0x000b);
		LCD_WR_DATA(0x000E);
		LCD_WR_DATA(0x0008);
		LCD_WR_DATA(0x004b);
		LCD_WR_DATA(0X00a8);
		LCD_WR_DATA(0x003b);
		LCD_WR_DATA(0x000a);
		LCD_WR_DATA(0x0014);
		LCD_WR_DATA(0x0006);
		LCD_WR_DATA(0x0010);
		LCD_WR_DATA(0x0009);
		LCD_WR_DATA(0x0000);

	LCD_WR_REG(0X00E1);    //Set Gamma
		LCD_WR_DATA(0x0000);
		LCD_WR_DATA(0x001c);
		LCD_WR_DATA(0x0020);
		LCD_WR_DATA(0x0004);
		LCD_WR_DATA(0x0010);
		LCD_WR_DATA(0x0008);
		LCD_WR_DATA(0x0034);
		LCD_WR_DATA(0x0047);
		LCD_WR_DATA(0x0044);
		LCD_WR_DATA(0x0005);
		LCD_WR_DATA(0x000b);
		LCD_WR_DATA(0x0009);
		LCD_WR_DATA(0x002f);
		LCD_WR_DATA(0x0036);
		LCD_WR_DATA(0x000f);

	LCD_WR_REG(0x002A);
		LCD_WR_DATA(0x0000);
		LCD_WR_DATA(0x0000);
		LCD_WR_DATA(0x0000);
		LCD_WR_DATA(0x00ef);

	 LCD_WR_REG(0x002B);
		LCD_WR_DATA(0x0000);
		LCD_WR_DATA(0x0000);
		LCD_WR_DATA(0x0001);
		LCD_WR_DATA(0x003f);

	LCD_WR_REG(0x003A);
		LCD_WR_DATA(0x0055);

	LCD_WR_REG(0x00f6);
		LCD_WR_DATA(0x0001);
		LCD_WR_DATA(0x0030);
		LCD_WR_DATA(0x0000);

	LCD_WR_REG(0x0029); //display on

	LCD_WR_REG(0x002c);    // 0x2C

}

// END OF LCD SHIT STUFF

int main()
{
	int width = 240, height = 320; // VGA

	struct Camera *cam = camera_controller_create((void*)CAMERA_CONTROLLER_0_BASE);

	struct CameraConfig conf;
	conf.width = width;
	conf.height = height;

	if(!camera_controller_configure(cam, &conf)) {
		return 0;
	}


	// LCD

	LCD_Init();

	LCD_WR(buff_0 << 2, &Delay_Ms);
	LCD_WR(buff_1 << 2, &Delay_Ms);
	LCD_WR(buff_2 << 2, &Delay_Ms);

	LCD_WR(start_master << 2, 1);

	// end LCD


	camera_controller_start(cam);

	printf("Go!\n");

	Delay_Ms(5000);
	printf("Swapping buffers\n");
	struct Camera *cam2 = camera_controller_create((void*)CAMERA_CONTROLLER_0_BASE);
	if(!camera_controller_configure(cam2, &conf)) {
		printf("Failure !\n");
		return 0;
	}
	Delay_Ms(5000);
	printf("Restarting\n");
	camera_controller_start(cam);



  // camera_controller_destroy(cam);

  return 0;
}
