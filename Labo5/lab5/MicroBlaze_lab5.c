#include "xparameters.h"
#include "xgpio.h"
#include "led_ip.h"
// Include xtmrctr header file

//====================================================
XTmrCtr Timer;			/* MicroBlaze AXI-timer instance */

#define ONE_SECOND 100000000 // the CPU clock speed (100 MHz)

int main (void) 
{

   XGpio dip, push;
   int psb_check, dip_check, dip_check_prev, count, Status;

   // Timer related definitions
   XTmrCtr *TimerInstancePtr = &Timer;

   xil_printf("-- Start of the Program --\r\n");
   xil_printf("-- The LEDs are updated every DIP seconds\r\n");
   xil_printf("-- Center button exits\r\n");
 
   XGpio_Initialize(&dip, XPAR_SW_8BIT_DEVICE_ID);
   XGpio_SetDataDirection(&dip, 1, 0xffffffff);
	
   XGpio_Initialize(&push, XPAR_BTNS_5BIT_DEVICE_ID);
   XGpio_SetDataDirection(&push, 1, 0xffffffff);

   count = 0;				// count variable for LED display
	
   // Initialize the timer and indicate success

   // Read dip switch values
   dip_check_prev = XGpio_DiscreteRead(&dip, 1);
   // Load timer with delay in multiple of ONE_SECOND

   // Set option AutoLoad mode

   // Set option counting down

   // Start the timer

   while (1)
   {
	  // Read push buttons and break the loop if Center button pressed
	  // Center button = 0x01
	  psb_check = XGpio_DiscreteRead(&push, 1);
	  if(psb_check & 0x01)
	  {
		  xil_printf("Center pushbutton pressed: Exiting\r\n");
		  XTmrCtr_Stop(TimerInstancePtr,0);
		  break;
	  }
	  dip_check = XGpio_DiscreteRead(&dip, 1);
	  if (dip_check != dip_check_prev) {
		  xil_printf("DIP Switch Status %x, %x\r\n", dip_check_prev, dip_check);
		  dip_check_prev = dip_check;
	  	  // load timer with the new switch settings and reset timer and count variable

		  // reset count variable
	  }
	  if(XTmrCtr_IsExpired(TimerInstancePtr,0)) {
		  // reset timer

		  // output count to the LEDs

		  // increment the count variable
		  }
   }
   return 0;
}
