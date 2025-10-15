
_main:

;Uygulama3.c,4 :: 		void main() {
;Uygulama3.c,6 :: 		TRISB=0X00;// TRISB=0----TRISB=0B00000000
	CLRF       TRISB+0
;Uygulama3.c,7 :: 		PORTB=1;
	MOVLW      1
	MOVWF      PORTB+0
;Uygulama3.c,9 :: 		while(1){
L_main0:
;Uygulama3.c,11 :: 		for(i=0;i<=7;i++){
	CLRF       _i+0
	CLRF       _i+1
L_main2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main7
	MOVF       _i+0, 0
	SUBLW      7
L__main7:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;Uygulama3.c,12 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;Uygulama3.c,13 :: 		PORTB=PORTB*2+1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	INCF       R0+0, 0
	MOVWF      PORTB+0
;Uygulama3.c,11 :: 		for(i=0;i<=7;i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Uygulama3.c,14 :: 		}
	GOTO       L_main2
L_main3:
;Uygulama3.c,15 :: 		PORTB=1;
	MOVLW      1
	MOVWF      PORTB+0
;Uygulama3.c,16 :: 		}
	GOTO       L_main0
;Uygulama3.c,18 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
