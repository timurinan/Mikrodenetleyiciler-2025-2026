
_main:

;Uygulama30.c,1 :: 		void main() {
;Uygulama30.c,2 :: 		PWM1_Init(10000);
	BCF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      99
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;Uygulama30.c,3 :: 		PWM1_Set_Duty(127);
	MOVLW      127
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Uygulama30.c,4 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;Uygulama30.c,5 :: 		while(1){
L_main0:
;Uygulama30.c,7 :: 		}
	GOTO       L_main0
;Uygulama30.c,9 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
