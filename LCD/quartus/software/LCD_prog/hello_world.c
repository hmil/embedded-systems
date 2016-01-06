#include <stdio.h>
#include <unistd.h>
#include "system.h"
#include "alt_types.h"
#include "io.h"
#include <stdint.h>

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
void LCD_DrawPoint(alt_u16 x,alt_u16 y,alt_u16 color );

#define  Set_LCD_RST LCD_WR(6, 0)
#define  Clr_LCD_RST LCD_WR(6, 1)


//void LCD_Clear(alt_u16 Color);
//void LCD_Pattern_Horizon(void);
//void LCD_Pattern_Vertical(void);
//void LCD_DrawPoint(alt_u16 x,alt_u16 y,alt_u16 color );
#define RED 0xf800
#define GREEN 0x07e0
#define BLUE 0x001f
#define BLACK  0x0000
#define WHITE 0xffff
void LCD_SetCursor(alt_u16 Xpos, alt_u16 Ypos);
void LCD_Frouze(void);

#define H 320
#define W 240

void load(FILE* f, uint16_t iframe[H][W]);

int main()
{
  printf("Hello from Nios II!\n");
  LCD_Init();
  int i = 0;
  printf("Hello from Nios II!\n");
  	  //LCD_SetCursor(0,0);


	 //alt_u16 data1[320][240];
	// alt_u16 data2[320][240];
	// alt_u16 data3[320][240];

	 alt_u16 data1[320*240];
	 alt_u16 data2[320*240];
	 alt_u16 data3[320*240];


//  FILE* file1 = fopen("/mnt/host/house1", "r");
//  FILE* file2 = fopen("/mnt/host/house2", "r");
//  FILE* file3 = fopen("/mnt/host/house3", "r");
//  if(file1 == NULL)
//  {
//	  printf("Can't load file :-(\n");
//  } else {
//	  load(file1, data1);
//  }
//  if(file2 == NULL)
//  {
//	  printf("Can't load file :-(\n");
//  } else {
//	  load(file2, data2);
//  }
//  if(file3 == NULL)
//  {
//	  printf("Can't load file :-(\n");
//  } else {
//	  load(file3, data3);
//  }



  //alt_u16 colors[3] = {RED, GREEN, BLUE};
//  for(i = 0 ; i < 320*240 ; i++)
//  {
//	 //printf("Hello from Nios II!\n");
//
//	 // LCD_WR_REG(0x002);
//	 LCD_WR_DATA(colors[i]);
//
//	 //LCD_DrawPoint(i,i,0x1F);
//  	 //LCD_DrawPoint(i,i,BLACK);
//  	 //printf("Hello from Nios II!\n");
//  }
//LCD_SetCursor(0,0);
  	  //LCD_Frouze();
  /* Event loop never exits. */

  	  for(i = 0; i < 320*240 ; i ++)
  	  {
  		 data1[i] = RED;// colors[(i/10)%3];
  		 data2[i] = WHITE;
  		 data3[i] = BLUE;
  	  }

  	  LCD_WR(buff_0 << 2, data1);
   	  //LCD_WR(buff_1 << 2, data2);
  	  //LCD_WR(buff_2 << 2, data3);
  	  LCD_WR(start_master << 2, 1);


  while (1);

  return 0;
}




void Delay_Ms(alt_u16 count_ms)
{
    while(count_ms--)
    {
        usleep(1000);
    }
}


void LCD_SetCursor(alt_u16 Xpos, alt_u16 Ypos)
 {
		LCD_WR_REG(0x002A);
		LCD_WR_DATA(Xpos >> 8);
		LCD_WR_DATA((Xpos & 0XFF));
		LCD_WR_REG(0x002B);
		LCD_WR_DATA(Ypos >> 8);
		LCD_WR_DATA((Ypos & 0XFF));
		LCD_WR_REG(0x002C);
}

void LCD_Clear(alt_u16 Color)
{
        alt_u32 index=0;
        LCD_SetCursor(0x00,0x0000);
        LCD_WR_REG(0x002C);
        for(index=0;index<76800;index++)
        {
        	LCD_WR_DATA(Color);
        }
}

void LCD_DrawPoint(alt_u16 x,alt_u16 y,alt_u16 color )
{
        LCD_SetCursor(x,y);
        LCD_WR_REG(0x002);
        LCD_WR_DATA(color);
}

void LCD_Pattern_Horizon(void)
{
        alt_u32 index=0;
        alt_u16  data=0;
        LCD_SetCursor(0x00,0x0000);
        data=RED;
        for(index=0;index<240*107;index++)
        {
        	LCD_WR_DATA(data);
        }
        LCD_SetCursor(0x00,107);
        data=WHITE;
		for(index=0;index<240*107;index++)
		{
			LCD_WR_DATA(data);
		}
	    LCD_SetCursor(0x00,214);
		data=BLUE;
		for(index=0;index<240*106;index++)
		{
			LCD_WR_DATA(data);
		}
}

void LCD_Pattern_Vertical(void)
{
        int i,j,m;
        alt_u16  data=0;
        alt_u16  color[4]={WHITE,BLUE,GREEN,RED};
        LCD_SetCursor(0x00,0x0000);
        for(m=0;m<320;m++)
        {
			for(i=0;i<4;i++)
			{
				data=color[i];
				for(j=0;j<60;j++)
				{
					LCD_WR_DATA(data);
				}
			}
        }
}


void LCD_Frouze()
 {
	alt_u32 index = 0;
	alt_u16 data = 0;

	data = RED;
	for (index = 0; index < 240 * 107; index++) {
		LCD_WR_DATA(data);
	}
	data = WHITE;
	for (index = 0; index < 240 * 107; index++) {
		LCD_WR_DATA(data);
	}
	data = BLUE;
	for (index = 0; index < 240 * 106; index++) {
		LCD_WR_DATA(data);
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

void load(FILE* f, uint16_t iframe[H][W]) {
    int h, w;
    int i,j;
    fscanf(f, "%d", &h);
    fscanf(f, "%d", &w);
    h = h > H?H:h;
    w = w > W?W:w;
    for(i = 0; i < h; i++) {
        for(j = 0; j < w; j++) {
            int p;
            fscanf(f, "%u", &p);
            iframe[i][j] = p;
        }
        for(j = w; j<W; j++) {
            iframe[i][j] = 65535;
        }
    }
    for(i = h; i<H; i++) {
        for(j = 0; j < W; j++) {
            iframe[i][j] = 65535;
        }
    }
}

//
//void LCD_Pattern_Horizon(void)
//{
//        alt_u32 index=0;
//        alt_u16  data=0;
//        LCD_SetCursor(0x00,0x0000);
//        data=0x0000;
//        for(index=0;index<240*80;index++)
//        {
//        	LCD_WR_DATA(data);
//        }
//        LCD_SetCursor(0x00,80);
//        data=RED;
//		for(index=0;index<240*80;index++)
//		{
//			LCD_WR_DATA(data);
//		}
//	    LCD_SetCursor(0x00,160);
//		data=GREEN;
//		for(index=0;index<240*80;index++)
//		{
//			LCD_WR_DATA(data);
//		}
//		LCD_SetCursor(0x00,240);
//		data=BLUE;
//		for(index=0;index<240*80;index++)
//		{
//			LCD_WR_DATA(data);
//		}
//}
//
//void LCD_Pattern_Vertical(void)
//{
//        int i,j,m;
//        alt_u16  data=0;
//        alt_u16  color[4]={WHITE,BLUE,GREEN,RED};
//        LCD_SetCursor(0x00,0x0000);
//        for(m=0;m<320;m++)
//        {
//			for(i=0;i<4;i++)
//			{
//				data=color[i];
//				for(j=0;j<60;j++)
//				{
//					LCD_WR_DATA(data);
//				}
//			}
//        }
//}
