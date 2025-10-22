
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Uygulama14.c,2 :: 		void interrupt(){
;Uygulama14.c,4 :: 		PORTB.F1=1;
	BSF        PORTB+0, 1
;Uygulama14.c,5 :: 		PORTB.F2=1;
	BSF        PORTB+0, 2
;Uygulama14.c,6 :: 		Delay_ms(500);
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
;Uygulama14.c,7 :: 		PORTB.F1=0;
	BCF        PORTB+0, 1
;Uygulama14.c,8 :: 		PORTB.F2=0;
	BCF        PORTB+0, 2
;Uygulama14.c,9 :: 		Delay_ms(500);
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
;Uygulama14.c,10 :: 		if(INTCON.INTF==1){
	BTFSS      INTCON+0, 1
	GOTO       L_interrupt2
;Uygulama14.c,11 :: 		INTCON.INTF=0;
	BCF        INTCON+0, 1
;Uygulama14.c,12 :: 		}
L_interrupt2:
;Uygulama14.c,15 :: 		}
L_end_interrupt:
L__interrupt6:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;Uygulama14.c,18 :: 		void main() {
;Uygulama14.c,20 :: 		TRISB=0B00000001;
	MOVLW      1
	MOVWF      TRISB+0
;Uygulama14.c,21 :: 		INTCON.GIE=1;
	BSF        INTCON+0, 7
;Uygulama14.c,22 :: 		INTCON.PEIE=1;
	BSF        INTCON+0, 6
;Uygulama14.c,23 :: 		INTCON.INTE=1;
	BSF        INTCON+0, 4
;Uygulama14.c,24 :: 		OPTION_REG.INTEDG=1;
	BSF        OPTION_REG+0, 6
;Uygulama14.c,26 :: 		while(1){
L_main3:
;Uygulama14.c,29 :: 		}
	GOTO       L_main3
;Uygulama14.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
