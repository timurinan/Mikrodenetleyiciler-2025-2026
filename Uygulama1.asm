
_main:

;Uygulama1.c,8 :: 		void main() {
;Uygulama1.c,9 :: 		y=-0.15625;
	MOVLW      0
	MOVWF      48
	MOVLW      0
	MOVWF      49
	MOVLW      160
	MOVWF      50
	MOVLW      124
	MOVWF      51
;Uygulama1.c,10 :: 		x=30;
	MOVLW      30
	MOVWF      36
;Uygulama1.c,11 :: 		jjjj=475544258;
	MOVLW      194
	MOVWF      64
	MOVLW      58
	MOVWF      65
	MOVLW      88
	MOVWF      66
	MOVLW      28
	MOVWF      67
;Uygulama1.c,12 :: 		TRISB=0x00; //B portunun bütün pinleri çýkýþ olarak ayarlandý.
	CLRF       TRISB+0
;Uygulama1.c,14 :: 		PORTB=0X00; //B portunun bütün pinlerini 0 volt'a çektim.
	CLRF       PORTB+0
;Uygulama1.c,16 :: 		while(1){
L_main0:
;Uygulama1.c,18 :: 		PORTB=0Xff;
	MOVLW      255
	MOVWF      PORTB+0
;Uygulama1.c,19 :: 		Delay_ms(1000);
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
;Uygulama1.c,21 :: 		PORTB=0X00;
	CLRF       PORTB+0
;Uygulama1.c,22 :: 		Delay_ms(1000);
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
;Uygulama1.c,24 :: 		}
	GOTO       L_main0
;Uygulama1.c,27 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
