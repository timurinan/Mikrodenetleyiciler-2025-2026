
_main:

;Uygulama24.c,4 :: 		void main() {
;Uygulama24.c,6 :: 		TRISB=0;
	CLRF       TRISB+0
;Uygulama24.c,7 :: 		sayi=0;
	CLRF       _sayi+0
	CLRF       _sayi+1
;Uygulama24.c,9 :: 		while(1){
L_main0:
;Uygulama24.c,11 :: 		PORTB=sayi;
	MOVF       _sayi+0, 0
	MOVWF      PORTB+0
;Uygulama24.c,12 :: 		Delay_ms(1000);
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
;Uygulama24.c,13 :: 		sayi=sayi+1;
	INCF       _sayi+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayi+1, 1
;Uygulama24.c,14 :: 		if(sayi==10){
	MOVLW      0
	XORWF      _sayi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main5
	MOVLW      10
	XORWF      _sayi+0, 0
L__main5:
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;Uygulama24.c,15 :: 		sayi=0;
	CLRF       _sayi+0
	CLRF       _sayi+1
;Uygulama24.c,16 :: 		}
L_main3:
;Uygulama24.c,18 :: 		}
	GOTO       L_main0
;Uygulama24.c,19 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
