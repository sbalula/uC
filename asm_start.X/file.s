;turns LED on while pressing button
    .text
    .global _main
_main:
  
    bclr	TRISF,#0	;set bit 0 of port F as output 
    bset	LATF,#0		;set bit 0 of port F as High truning the LED off 
    
  
_loop:  
  
    btss	PORTE,#8	;check if bit 8 of port E is set and skip next instruction if set
    goto _LED_on		;the switch was pressed, go turn the LED on
    bset	LATF,#0		;The switch was not pressed so keep the LED off 
    goto _loop		;go test again
  
_LED_on:  
    bclr	LATF,#0		;turn teh LED on by putting bit 0 of port F to low
    goto _loop		;go test again
     
    return
.end


