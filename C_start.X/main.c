//Bare minimum example

#define FCY 4*7372800UL 		//instruction frequency in Hz

#include <p30F4011.h>               //PIC device
#include <libpic30.h>               //dsPIC30 library
#include <xc.h>                     //Compiler


//Device configuration
_FOSC(CSW_FSCM_OFF & XT_PLL16); //oscillator at 16x PLL
_FWDT(WDT_OFF); //watchdog timer is off

int main() {
    
    
    return 0;
}