
_main:

;Uygulama8.c,4 :: 		void main() {
;Uygulama8.c,6 :: 		TRISD=0B00000001;
	MOVLW      1
	MOVWF      TRISD+0
;Uygulama8.c,7 :: 		TRISB=0X00;
	CLRF       TRISB+0
;Uygulama8.c,8 :: 		PORTB=0;
	CLRF       PORTB+0
;Uygulama8.c,10 :: 		while(1){
L_main0:
;Uygulama8.c,12 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Uygulama8.c,14 :: 		PORTB.F3=1;
	BSF        PORTB+0, 3
;Uygulama8.c,16 :: 		}else{
	GOTO       L_main3
L_main2:
;Uygulama8.c,18 :: 		PORTB.F3=0;
	BCF        PORTB+0, 3
;Uygulama8.c,20 :: 		}
L_main3:
;Uygulama8.c,21 :: 		}
	GOTO       L_main0
;Uygulama8.c,22 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
