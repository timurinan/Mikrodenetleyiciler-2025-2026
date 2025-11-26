
_main:

;Uygulama23.c,4 :: 		void main() {
;Uygulama23.c,6 :: 		TRISB=0;
	CLRF       TRISB+0
;Uygulama23.c,8 :: 		while(1){
L_main0:
;Uygulama23.c,9 :: 		PORTB=0B11111100;
	MOVLW      252
	MOVWF      PORTB+0
;Uygulama23.c,10 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Uygulama23.c,12 :: 		PORTB=0B01100000;
	MOVLW      96
	MOVWF      PORTB+0
;Uygulama23.c,13 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Uygulama23.c,15 :: 		PORTB=0B11011010;
	MOVLW      218
	MOVWF      PORTB+0
;Uygulama23.c,16 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;Uygulama23.c,18 :: 		PORTB=0B11110010;
	MOVLW      242
	MOVWF      PORTB+0
;Uygulama23.c,19 :: 		Delay_ms(1000);
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
;Uygulama23.c,21 :: 		PORTB=0B01100110;
	MOVLW      102
	MOVWF      PORTB+0
;Uygulama23.c,22 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;Uygulama23.c,25 :: 		}
	GOTO       L_main0
;Uygulama23.c,26 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
