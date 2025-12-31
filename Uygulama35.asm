
_main:

;Uygulama35.c,1 :: 		void main(){
;Uygulama35.c,2 :: 		TRISC.F0=0;
	BCF        TRISC+0, 0
;Uygulama35.c,3 :: 		TRISC.F1=0;
	BCF        TRISC+0, 1
;Uygulama35.c,4 :: 		TRISC.F2=0;
	BCF        TRISC+0, 2
;Uygulama35.c,5 :: 		TRISC.F3=0;
	BCF        TRISC+0, 3
;Uygulama35.c,6 :: 		TRISD.F0=1;
	BSF        TRISD+0, 0
;Uygulama35.c,7 :: 		TRISD.F1=1;
	BSF        TRISD+0, 1
;Uygulama35.c,8 :: 		TRISD.F2=1;
	BSF        TRISD+0, 2
;Uygulama35.c,9 :: 		TRISB=0;
	CLRF       TRISB+0
;Uygulama35.c,10 :: 		while(1){
L_main0:
;Uygulama35.c,12 :: 		PORTC.F0=1;
	BSF        PORTC+0, 0
;Uygulama35.c,13 :: 		if (PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Uygulama35.c,14 :: 		PORTB=3;
	MOVLW      3
	MOVWF      PORTB+0
;Uygulama35.c,15 :: 		}else if(PORTD.F1==1){
	GOTO       L_main3
L_main2:
	BTFSS      PORTD+0, 1
	GOTO       L_main4
;Uygulama35.c,16 :: 		PORTB=2;}
	MOVLW      2
	MOVWF      PORTB+0
	GOTO       L_main5
L_main4:
;Uygulama35.c,17 :: 		else if(PORTD.F2==1){
	BTFSS      PORTD+0, 2
	GOTO       L_main6
;Uygulama35.c,18 :: 		PORTB=1;}
	MOVLW      1
	MOVWF      PORTB+0
L_main6:
L_main5:
L_main3:
;Uygulama35.c,20 :: 		PORTC.F0=0;
	BCF        PORTC+0, 0
;Uygulama35.c,21 :: 		PORTC.F1=1;
	BSF        PORTC+0, 1
;Uygulama35.c,23 :: 		if (PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main7
;Uygulama35.c,24 :: 		PORTB=6;
	MOVLW      6
	MOVWF      PORTB+0
;Uygulama35.c,25 :: 		}else if(PORTD.F1==1){
	GOTO       L_main8
L_main7:
	BTFSS      PORTD+0, 1
	GOTO       L_main9
;Uygulama35.c,26 :: 		PORTB=5;
	MOVLW      5
	MOVWF      PORTB+0
;Uygulama35.c,27 :: 		}
	GOTO       L_main10
L_main9:
;Uygulama35.c,28 :: 		else if(PORTD.F2==1){
	BTFSS      PORTD+0, 2
	GOTO       L_main11
;Uygulama35.c,29 :: 		PORTB=4;
	MOVLW      4
	MOVWF      PORTB+0
;Uygulama35.c,30 :: 		}
L_main11:
L_main10:
L_main8:
;Uygulama35.c,32 :: 		PORTC.F1=0;
	BCF        PORTC+0, 1
;Uygulama35.c,33 :: 		PORTC.F2=1;
	BSF        PORTC+0, 2
;Uygulama35.c,35 :: 		if (PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main12
;Uygulama35.c,36 :: 		PORTB=9;
	MOVLW      9
	MOVWF      PORTB+0
;Uygulama35.c,37 :: 		}else if(PORTD.F1==1){
	GOTO       L_main13
L_main12:
	BTFSS      PORTD+0, 1
	GOTO       L_main14
;Uygulama35.c,38 :: 		PORTB=8;
	MOVLW      8
	MOVWF      PORTB+0
;Uygulama35.c,39 :: 		}
	GOTO       L_main15
L_main14:
;Uygulama35.c,40 :: 		else if(PORTD.F2==1){
	BTFSS      PORTD+0, 2
	GOTO       L_main16
;Uygulama35.c,41 :: 		PORTB=7;
	MOVLW      7
	MOVWF      PORTB+0
;Uygulama35.c,42 :: 		}
L_main16:
L_main15:
L_main13:
;Uygulama35.c,44 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;Uygulama35.c,45 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;Uygulama35.c,46 :: 		if (PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main17
;Uygulama35.c,47 :: 		PORTB=0;
	CLRF       PORTB+0
;Uygulama35.c,48 :: 		}else if(PORTD.F1==1){
	GOTO       L_main18
L_main17:
	BTFSS      PORTD+0, 1
	GOTO       L_main19
;Uygulama35.c,49 :: 		PORTB=0;
	CLRF       PORTB+0
;Uygulama35.c,50 :: 		}
	GOTO       L_main20
L_main19:
;Uygulama35.c,51 :: 		else if(PORTD.F2==1){
	BTFSS      PORTD+0, 2
	GOTO       L_main21
;Uygulama35.c,52 :: 		PORTB=0;
	CLRF       PORTB+0
;Uygulama35.c,53 :: 		}}}
L_main21:
L_main20:
L_main18:
	GOTO       L_main0
L_end_main:
	GOTO       $+0
; end of _main
