
_main:

;Uygulama26.c,6 :: 		void main() {
;Uygulama26.c,8 :: 		TRISB=0;
	CLRF       TRISB+0
;Uygulama26.c,9 :: 		TRISD=0XFF;
	MOVLW      255
	MOVWF      TRISD+0
;Uygulama26.c,10 :: 		sayi=0;
	CLRF       _sayi+0
	CLRF       _sayi+1
;Uygulama26.c,11 :: 		buton_arttir=0;
	BCF        _buton_arttir+0, BitPos(_buton_arttir+0)
;Uygulama26.c,12 :: 		buton_azalt=0;
	BCF        _buton_azalt+0, BitPos(_buton_azalt+0)
;Uygulama26.c,14 :: 		while(1){
L_main0:
;Uygulama26.c,16 :: 		PORTB=sayi;
	MOVF       _sayi+0, 0
	MOVWF      PORTB+0
;Uygulama26.c,18 :: 		if(PORTD.F0==1&&buton_arttir==0){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
	BTFSC      _buton_arttir+0, BitPos(_buton_arttir+0)
	GOTO       L_main4
L__main15:
;Uygulama26.c,19 :: 		sayi=sayi+1;
	INCF       _sayi+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayi+1, 1
;Uygulama26.c,20 :: 		buton_arttir=1;
	BSF        _buton_arttir+0, BitPos(_buton_arttir+0)
;Uygulama26.c,21 :: 		if(sayi==10){
	MOVLW      0
	XORWF      _sayi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main17
	MOVLW      10
	XORWF      _sayi+0, 0
L__main17:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;Uygulama26.c,22 :: 		sayi=0;
	CLRF       _sayi+0
	CLRF       _sayi+1
;Uygulama26.c,23 :: 		}
L_main5:
;Uygulama26.c,24 :: 		}else if(PORTD.F0==0){
	GOTO       L_main6
L_main4:
	BTFSC      PORTD+0, 0
	GOTO       L_main7
;Uygulama26.c,25 :: 		buton_arttir=0;
	BCF        _buton_arttir+0, BitPos(_buton_arttir+0)
;Uygulama26.c,26 :: 		}
L_main7:
L_main6:
;Uygulama26.c,27 :: 		if(PORTD.F1==1&&buton_azalt==0){
	BTFSS      PORTD+0, 1
	GOTO       L_main10
	BTFSC      _buton_azalt+0, BitPos(_buton_azalt+0)
	GOTO       L_main10
L__main14:
;Uygulama26.c,28 :: 		sayi=sayi-1;
	MOVLW      1
	SUBWF      _sayi+0, 1
	BTFSS      STATUS+0, 0
	DECF       _sayi+1, 1
;Uygulama26.c,29 :: 		if(sayi==-1){
	MOVLW      255
	XORWF      _sayi+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main18
	MOVLW      255
	XORWF      _sayi+0, 0
L__main18:
	BTFSS      STATUS+0, 2
	GOTO       L_main11
;Uygulama26.c,30 :: 		sayi=9;
	MOVLW      9
	MOVWF      _sayi+0
	MOVLW      0
	MOVWF      _sayi+1
;Uygulama26.c,31 :: 		}
L_main11:
;Uygulama26.c,32 :: 		buton_azalt=1;
	BSF        _buton_azalt+0, BitPos(_buton_azalt+0)
;Uygulama26.c,33 :: 		}else if(PORTD.F1==0){
	GOTO       L_main12
L_main10:
	BTFSC      PORTD+0, 1
	GOTO       L_main13
;Uygulama26.c,34 :: 		buton_azalt=0;
	BCF        _buton_azalt+0, BitPos(_buton_azalt+0)
;Uygulama26.c,35 :: 		}
L_main13:
L_main12:
;Uygulama26.c,36 :: 		}
	GOTO       L_main0
;Uygulama26.c,37 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
