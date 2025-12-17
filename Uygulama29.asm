
_main:

;Uygulama29.c,1 :: 		void main() {
;Uygulama29.c,3 :: 		PR2=99;
	MOVLW      99
	MOVWF      PR2+0
;Uygulama29.c,4 :: 		CCPR1L=0x32;// 0b00110010
	MOVLW      50
	MOVWF      CCPR1L+0
;Uygulama29.c,5 :: 		CCP1CON=0x0C;// 0b00001100
	MOVLW      12
	MOVWF      CCP1CON+0
;Uygulama29.c,6 :: 		TRISC.F2=0;
	BCF        TRISC+0, 2
;Uygulama29.c,7 :: 		T2CON=0b00000100;
	MOVLW      4
	MOVWF      T2CON+0
;Uygulama29.c,8 :: 		trisb=0;
	CLRF       TRISB+0
;Uygulama29.c,9 :: 		while(1){
L_main0:
;Uygulama29.c,11 :: 		}
	GOTO       L_main0
;Uygulama29.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
