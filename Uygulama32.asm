
_main:

;Uygulama32.c,1 :: 		void main() {
;Uygulama32.c,2 :: 		TRISD=0XFF;
	MOVLW      255
	MOVWF      TRISD+0
;Uygulama32.c,3 :: 		TRISC.F0=1;
	BSF        TRISC+0, 0
;Uygulama32.c,4 :: 		TRISC.F1=1;
	BSF        TRISC+0, 1
;Uygulama32.c,5 :: 		PWM1_Init(10000);  //10 kHZ
	BCF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      99
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;Uygulama32.c,6 :: 		PWM1_Set_Duty(0);  // Duty Cycle=0
	CLRF       FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Uygulama32.c,7 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;Uygulama32.c,8 :: 		while(1){
L_main0:
;Uygulama32.c,9 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Uygulama32.c,10 :: 		PWM1_Set_Duty(64);  //%25
	MOVLW      64
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Uygulama32.c,11 :: 		}
	GOTO       L_main3
L_main2:
;Uygulama32.c,12 :: 		else if(PORTD.F1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_main4
;Uygulama32.c,13 :: 		PWM1_Set_Duty(127); //%50
	MOVLW      127
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Uygulama32.c,14 :: 		}else if(PORTC.F1==1){
	GOTO       L_main5
L_main4:
	BTFSS      PORTC+0, 1
	GOTO       L_main6
;Uygulama32.c,15 :: 		PWM1_Set_Duty(192);  //%75
	MOVLW      192
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Uygulama32.c,16 :: 		}
	GOTO       L_main7
L_main6:
;Uygulama32.c,17 :: 		else if(PORTC.F0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_main8
;Uygulama32.c,18 :: 		PWM1_Set_Duty(255); //%100
	MOVLW      255
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Uygulama32.c,19 :: 		}}}
L_main8:
L_main7:
L_main5:
L_main3:
	GOTO       L_main0
L_end_main:
	GOTO       $+0
; end of _main
