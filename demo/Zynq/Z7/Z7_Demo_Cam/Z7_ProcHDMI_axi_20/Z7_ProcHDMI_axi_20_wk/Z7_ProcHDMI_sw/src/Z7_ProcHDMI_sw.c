

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "sleep.h"

typedef struct Z7_ProcHDMI_Regs  {
        volatile uint32_t rst;
        volatile uint32_t ctrl;
        volatile uint32_t avg;
        volatile uint32_t led;

} Z7_ProcHDMI_Regs;

typedef struct Z7_ProcHDMI {
        volatile uint32_t *img_in;
        volatile uint32_t *vlign;
        volatile  Z7_ProcHDMI_Regs*regs;
}Z7_ProcHDMI;

void Z7_ProcHDMI_init(Z7_ProcHDMI *cpo, volatile unsigned char *base)
{
        cpo->regs=(Z7_ProcHDMI_Regs *)(base);
        cpo->img_in=(volatile uint32_t*)(base+0x100000);
        cpo->vlign=(volatile uint32_t *)(base+0x200000);
}


int main()
{
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application");
    Z7_ProcHDMI  cpo;
    Z7_ProcHDMI_init(&cpo, (unsigned char *)XPAR_AXI_Z7_PROCHDMI_0_BASEADDR);

    cpo.regs->rst=0xFF;
    usleep(1);
    cpo.regs->rst=0;
    usleep(1);
  for(int y=0; y<240;y++) cpo.img_in[y*320]= y;
  for(int y=0; y<240;y++) cpo.img_in[y*320+10]= 240-y;
  for(int x=0; x<320;x++) cpo.img_in[x+40*320]= x;
  for(int y=0; y<120;y++) {cpo.vlign[y]= 255-y; cpo.vlign[y+120]= y;}
    int cpt=0;
    while (1) {
    	cpo.regs->led=cpt;
    	cpt++;
    	xil_printf("cpt : %d\n\r", cpt);
    	 usleep(1000000);
    	      cpo.regs->ctrl=0x0;
    	      usleep(1000000);
    	      cpo.regs->ctrl=0xFF;
    }

    cleanup_platform();
    return 0;
}
