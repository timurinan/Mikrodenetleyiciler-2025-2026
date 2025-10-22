
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Uygulama13.c,2 :: 		void interrupt(){
;Uygulama13.c,4 :: 		PORTB=0B11111110;
	MOVLW      254
	MOVWF      PORTB+0
;Uygulama13.c,5 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_interrupt0:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt0
	DECFSZ     R12+0, 1
	GOTO       L_interrupt0
	DECFSZ     R11+0, 1
	GOTO       L_interrupt0
	NOP
	NOP
;Uygulama13.c,6 :: 		PORTB=0B00000000;
	CLRF       PORTB+0
;Uygulama13.c,7 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_interrupt1:
	DECFSZ     R13+0, 1
	GOTO       L_interrupt1
	DECFSZ     R12+0, 1
	GOTO       L_interrupt1
	DECFSZ     R11+0, 1
	GOTO       L_interrupt1
	NOP
	NOP
;Uygulama13.c,8 :: 		INTCON.INTF=~INTCON.INTF;
	MOVLW      2
	XORWF      INTCON+0, 1
;Uygulama13.c,10 :: 		}
L_end_interrupt:
L__interrupt5:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;Uygulama13.c,13 :: 		void main() {
;Uygulama13.c,15 :: 		TRISB=0B000000001;
	MOVLW      1
	MOVWF      TRISB+0
;Uygulama13.c,16 :: 		INTCON.GIE=1;
	BSF        INTCON+0, 7
;Uygulama13.c,17 :: 		INTCON.PEIE=1;
	BSF        INTCON+0, 6
;Uygulama13.c,18 :: 		INTCON.INTE=1;
	BSF        INTCON+0, 4
;Uygulama13.c,19 :: 		OPTION_REG.INTEDG=1;
	BSF        OPTION_REG+0, 6
;Uygulama13.c,21 :: 		while(1){
L_main2:
;Uygulama13.c,23 :: 		}
	GOTO       L_main2
;Uygulama13.c,26 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
