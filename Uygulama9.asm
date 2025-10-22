
_main:

;Uygulama9.c,2 :: 		void main() {
;Uygulama9.c,4 :: 		TRISD=0B00000001;
	MOVLW      1
	MOVWF      TRISD+0
;Uygulama9.c,5 :: 		TRISB=0X00;
	CLRF       TRISB+0
;Uygulama9.c,6 :: 		PORTB=0;
	CLRF       PORTB+0
;Uygulama9.c,8 :: 		while(1){
L_main0:
;Uygulama9.c,10 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Uygulama9.c,12 :: 		PORTB=0B11111111;//0XFF ya da 255
	MOVLW      255
	MOVWF      PORTB+0
;Uygulama9.c,14 :: 		}else{
	GOTO       L_main3
L_main2:
;Uygulama9.c,16 :: 		PORTB=0B00000000;//0X00 ya da 0
	CLRF       PORTB+0
;Uygulama9.c,18 :: 		}
L_main3:
;Uygulama9.c,19 :: 		}
	GOTO       L_main0
;Uygulama9.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
