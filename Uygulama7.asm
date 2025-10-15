
_main:

;Uygulama7.c,4 :: 		void main() {
;Uygulama7.c,6 :: 		TRISB=0;
	CLRF       TRISB+0
;Uygulama7.c,7 :: 		sayi1=1;
	MOVLW      1
	MOVWF      _sayi1+0
;Uygulama7.c,8 :: 		sayi2=128;
	MOVLW      128
	MOVWF      _sayi2+0
;Uygulama7.c,9 :: 		PORTB=sayi1+sayi2;
	MOVLW      129
	MOVWF      PORTB+0
;Uygulama7.c,10 :: 		Delay_ms(1200);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      45
	MOVWF      R12+0
	MOVLW      215
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;Uygulama7.c,11 :: 		while(1){
L_main1:
;Uygulama7.c,13 :: 		sayi1=sayi1<<1;
	MOVF       _sayi1+0, 0
	MOVWF      R2+0
	RLF        R2+0, 1
	BCF        R2+0, 0
	MOVF       R2+0, 0
	MOVWF      _sayi1+0
;Uygulama7.c,14 :: 		sayi2=sayi2>>1;
	MOVF       _sayi2+0, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVF       R0+0, 0
	MOVWF      _sayi2+0
;Uygulama7.c,15 :: 		PORTB=sayi1+sayi2;
	MOVF       R0+0, 0
	ADDWF      R2+0, 0
	MOVWF      PORTB+0
;Uygulama7.c,16 :: 		Delay_ms(1200);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      45
	MOVWF      R12+0
	MOVLW      215
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
;Uygulama7.c,17 :: 		if(sayi1==128){
	MOVF       _sayi1+0, 0
	XORLW      128
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;Uygulama7.c,18 :: 		sayi1=1;
	MOVLW      1
	MOVWF      _sayi1+0
;Uygulama7.c,19 :: 		sayi2=128;
	MOVLW      128
	MOVWF      _sayi2+0
;Uygulama7.c,20 :: 		PORTB=sayi1+sayi2;
	MOVLW      129
	MOVWF      PORTB+0
;Uygulama7.c,21 :: 		Delay_ms(1200);
	MOVLW      13
	MOVWF      R11+0
	MOVLW      45
	MOVWF      R12+0
	MOVLW      215
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
;Uygulama7.c,22 :: 		}
L_main4:
;Uygulama7.c,24 :: 		}
	GOTO       L_main1
;Uygulama7.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
