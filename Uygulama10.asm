
_blink:

;Uygulama10.c,2 :: 		void blink(){
;Uygulama10.c,4 :: 		PORTB=255;
	MOVLW      255
	MOVWF      PORTB+0
;Uygulama10.c,5 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_blink0:
	DECFSZ     R13+0, 1
	GOTO       L_blink0
	DECFSZ     R12+0, 1
	GOTO       L_blink0
	DECFSZ     R11+0, 1
	GOTO       L_blink0
	NOP
	NOP
;Uygulama10.c,6 :: 		PORTB=0;
	CLRF       PORTB+0
;Uygulama10.c,7 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_blink1:
	DECFSZ     R13+0, 1
	GOTO       L_blink1
	DECFSZ     R12+0, 1
	GOTO       L_blink1
	DECFSZ     R11+0, 1
	GOTO       L_blink1
	NOP
	NOP
;Uygulama10.c,9 :: 		}
L_end_blink:
	RETURN
; end of _blink

_main:

;Uygulama10.c,11 :: 		void main() {
;Uygulama10.c,13 :: 		TRISD=0B00000001;
	MOVLW      1
	MOVWF      TRISD+0
;Uygulama10.c,14 :: 		TRISB=0X00;
	CLRF       TRISB+0
;Uygulama10.c,15 :: 		PORTB=0;
	CLRF       PORTB+0
;Uygulama10.c,17 :: 		while(1){
L_main2:
;Uygulama10.c,19 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;Uygulama10.c,21 :: 		blink();
	CALL       _blink+0
;Uygulama10.c,23 :: 		}else{
	GOTO       L_main5
L_main4:
;Uygulama10.c,25 :: 		PORTB=0B00000000;//0X00 ya da 0
	CLRF       PORTB+0
;Uygulama10.c,27 :: 		}
L_main5:
;Uygulama10.c,28 :: 		}
	GOTO       L_main2
;Uygulama10.c,29 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
