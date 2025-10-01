
_main:

;Uygulama1.c,3 :: 		void main() {
;Uygulama1.c,5 :: 		TRISB=0x00; //B portunun bütün pinleri çýkýþ olarak ayarlandý.
	CLRF       TRISB+0
;Uygulama1.c,7 :: 		PORTB=0X00; //B portunun bütün pinlerini 0 volt'a çektim.
	CLRF       PORTB+0
;Uygulama1.c,9 :: 		while(1){
L_main0:
;Uygulama1.c,11 :: 		PORTB=0Xff;
	MOVLW      255
	MOVWF      PORTB+0
;Uygulama1.c,12 :: 		Delay_ms(1000);
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
;Uygulama1.c,14 :: 		PORTB=0X00;
	CLRF       PORTB+0
;Uygulama1.c,15 :: 		Delay_ms(1000);
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
;Uygulama1.c,17 :: 		}
	GOTO       L_main0
;Uygulama1.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
