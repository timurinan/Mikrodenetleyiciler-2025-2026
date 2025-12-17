
_main:

;Uygulama31.c,1 :: 		void main() {
;Uygulama31.c,3 :: 		PR2=99;
	MOVLW      99
	MOVWF      PR2+0
;Uygulama31.c,5 :: 		CCPR1L=0x32;// 0b00110010
	MOVLW      50
	MOVWF      CCPR1L+0
;Uygulama31.c,7 :: 		CCP1CON=0x0C;// 0b00001100
	MOVLW      12
	MOVWF      CCP1CON+0
;Uygulama31.c,9 :: 		TRISC.F2=0;
	BCF        TRISC+0, 2
;Uygulama31.c,10 :: 		TRISC.F0=1;
	BSF        TRISC+0, 0
;Uygulama31.c,11 :: 		TRISC.F1=1;
	BSF        TRISC+0, 1
;Uygulama31.c,13 :: 		T2CON=0b00000100;
	MOVLW      4
	MOVWF      T2CON+0
;Uygulama31.c,14 :: 		trisb=0;
	CLRF       TRISB+0
;Uygulama31.c,15 :: 		trisd=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;Uygulama31.c,17 :: 		while(1){
L_main0:
;Uygulama31.c,19 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Uygulama31.c,20 :: 		CCPR1L=0x19;// 0b00011001  %25
	MOVLW      25
	MOVWF      CCPR1L+0
;Uygulama31.c,22 :: 		}
	GOTO       L_main3
L_main2:
;Uygulama31.c,23 :: 		else if(PORTD.F1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_main4
;Uygulama31.c,24 :: 		CCPR1L=0x32;// 0b00110010 %50
	MOVLW      50
	MOVWF      CCPR1L+0
;Uygulama31.c,25 :: 		}else if(PORTC.F1==1){
	GOTO       L_main5
L_main4:
	BTFSS      PORTC+0, 1
	GOTO       L_main6
;Uygulama31.c,26 :: 		CCPR1L=0x4B;// 0b01001011  %75
	MOVLW      75
	MOVWF      CCPR1L+0
;Uygulama31.c,27 :: 		}
	GOTO       L_main7
L_main6:
;Uygulama31.c,28 :: 		else if(PORTC.F0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_main8
;Uygulama31.c,29 :: 		CCPR1L=0x64;// 0b01101000 %100
	MOVLW      100
	MOVWF      CCPR1L+0
;Uygulama31.c,30 :: 		}}}
L_main8:
L_main7:
L_main5:
L_main3:
	GOTO       L_main0
L_end_main:
	GOTO       $+0
; end of _main
