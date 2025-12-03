
_main:

;Uygulama25.c,5 :: 		void main() {
;Uygulama25.c,7 :: 		TRISB=0;
	CLRF       TRISB+0
;Uygulama25.c,8 :: 		TRISD=0XFF;
	MOVLW      255
	MOVWF      TRISD+0
;Uygulama25.c,9 :: 		sayi=0;
	CLRF       _sayi+0
	CLRF       _sayi+1
;Uygulama25.c,10 :: 		basili=0;
	BCF        _basili+0, BitPos(_basili+0)
;Uygulama25.c,12 :: 		while(1){
L_main0:
;Uygulama25.c,14 :: 		PORTB=sayi;
	MOVF       _sayi+0, 0
	MOVWF      PORTB+0
;Uygulama25.c,16 :: 		if(PORTD.F0==1&&basili==0){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
	BTFSC      _basili+0, BitPos(_basili+0)
	GOTO       L_main4
L__main8:
;Uygulama25.c,17 :: 		sayi=sayi+1;
	INCF       _sayi+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayi+1, 1
;Uygulama25.c,18 :: 		basili=1;
	BSF        _basili+0, BitPos(_basili+0)
;Uygulama25.c,19 :: 		if(sayi==10){
	MOVLW      0
	XORWF      _sayi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main10
	MOVLW      10
	XORWF      _sayi+0, 0
L__main10:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;Uygulama25.c,20 :: 		sayi=0;
	CLRF       _sayi+0
	CLRF       _sayi+1
;Uygulama25.c,21 :: 		}
L_main5:
;Uygulama25.c,22 :: 		}else if(PORTD.F0==0){
	GOTO       L_main6
L_main4:
	BTFSC      PORTD+0, 0
	GOTO       L_main7
;Uygulama25.c,23 :: 		basili=0;
	BCF        _basili+0, BitPos(_basili+0)
;Uygulama25.c,24 :: 		}
L_main7:
L_main6:
;Uygulama25.c,25 :: 		}
	GOTO       L_main0
;Uygulama25.c,26 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
