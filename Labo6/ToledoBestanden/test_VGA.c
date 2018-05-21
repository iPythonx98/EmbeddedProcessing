#include "xparameters.h"
#include "xil_io.h"
// Include here the VGA driver H-file

#include "xil_printf.h"
//====================================================

int main (void)
{

  int i, j;

   xil_printf("-- Start of the VGA color test Program 11/8/2014 PiCo --\r\n");
   i = 1;

   while (1)
   {
	  // output Counter to VGA display bits 11-8 => slv_reg2, bits 7-4 => slv_reg1, bits 3-0 => slv_reg0

	  if (i > (1<<12)) i= 1;
	  xil_printf("waarde: %X\n\r", i);
	  // write the RED color (bits 3 downto 0 of i) to register 0 with XXXX_mWriteReg(baseAddress, Offset to register, data) see driver.h file for exact parameters
	  // write the GREEN color (bits 7 downto 4 of i) to register 1
	  // write the BLUE color (bits 11 downto 8 of i) to register 2
	  i = (i << 1)+1;
	  for (j=0; j<9999999; j++);
   }
}
