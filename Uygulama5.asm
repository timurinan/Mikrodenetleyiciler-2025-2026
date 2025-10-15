
_main:

;Uygulama5.c,4 :: 		void main() {
;Uygulama5.c,5 :: 		TRISB=0X00;
	CLRF       TRISB+0
;Uygulama5.c,7 :: 		PORTB=1;
	MOVLW      1
	MOVWF      PORTB+0
;Uygulama5.c,8 :: 		while(1){
L_main0:
;Uygulama5.c,11 :: 		for(i=0;i<=7;i++){
	CLRF       _i+0
	CLRF       _i+1
L_main2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVF       _i+0, 0
	SUBLW      7
L__main11:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;Uygulama5.c,13 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;Uygulama5.c,14 :: 		PORTB=PORTB<<1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Uygulama5.c,11 :: 		for(i=0;i<=7;i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Uygulama5.c,15 :: 		}
	GOTO       L_main2
L_main3:
;Uygulama5.c,16 :: 		PORTB=128;
	MOVLW      128
	MOVWF      PORTB+0
;Uygulama5.c,17 :: 		for(i=0;i<=7;i++){
	CLRF       _i+0
	CLRF       _i+1
L_main6:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVF       _i+0, 0
	SUBLW      7
L__main12:
	BTFSS      STATUS+0, 0
	GOTO       L_main7
;Uygulama5.c,19 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;Uygulama5.c,20 :: 		PORTB=PORTB>>1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Uygulama5.c,17 :: 		for(i=0;i<=7;i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Uygulama5.c,21 :: 		}
	GOTO       L_main6
L_main7:
;Uygulama5.c,23 :: 		}
	GOTO       L_main0
;Uygulama5.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
