
_sola_kaydir:

;Uygulama12.c,4 :: 		void sola_kaydir(){
;Uygulama12.c,5 :: 		PORTB=PORTB<<1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Uygulama12.c,6 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_sola_kaydir0:
	DECFSZ     R13+0, 1
	GOTO       L_sola_kaydir0
	DECFSZ     R12+0, 1
	GOTO       L_sola_kaydir0
	DECFSZ     R11+0, 1
	GOTO       L_sola_kaydir0
	NOP
	NOP
;Uygulama12.c,7 :: 		if(PORTB==128){
	MOVF       PORTB+0, 0
	XORLW      128
	BTFSS      STATUS+0, 2
	GOTO       L_sola_kaydir1
;Uygulama12.c,8 :: 		PORTB=1;
	MOVLW      1
	MOVWF      PORTB+0
;Uygulama12.c,9 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_sola_kaydir2:
	DECFSZ     R13+0, 1
	GOTO       L_sola_kaydir2
	DECFSZ     R12+0, 1
	GOTO       L_sola_kaydir2
	DECFSZ     R11+0, 1
	GOTO       L_sola_kaydir2
	NOP
	NOP
;Uygulama12.c,10 :: 		}
L_sola_kaydir1:
;Uygulama12.c,11 :: 		}
L_end_sola_kaydir:
	RETURN
; end of _sola_kaydir

_saga_kaydir:

;Uygulama12.c,13 :: 		void saga_kaydir(){
;Uygulama12.c,14 :: 		PORTB=PORTB>>1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Uygulama12.c,15 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_saga_kaydir3:
	DECFSZ     R13+0, 1
	GOTO       L_saga_kaydir3
	DECFSZ     R12+0, 1
	GOTO       L_saga_kaydir3
	DECFSZ     R11+0, 1
	GOTO       L_saga_kaydir3
	NOP
	NOP
;Uygulama12.c,17 :: 		if(PORTB==1){
	MOVF       PORTB+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_saga_kaydir4
;Uygulama12.c,18 :: 		PORTB=128;
	MOVLW      128
	MOVWF      PORTB+0
;Uygulama12.c,19 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_saga_kaydir5:
	DECFSZ     R13+0, 1
	GOTO       L_saga_kaydir5
	DECFSZ     R12+0, 1
	GOTO       L_saga_kaydir5
	DECFSZ     R11+0, 1
	GOTO       L_saga_kaydir5
	NOP
	NOP
;Uygulama12.c,20 :: 		}
L_saga_kaydir4:
;Uygulama12.c,21 :: 		}
L_end_saga_kaydir:
	RETURN
; end of _saga_kaydir

_main:

;Uygulama12.c,23 :: 		void main() {
;Uygulama12.c,24 :: 		yon=2;
	MOVLW      2
	MOVWF      _yon+0
	MOVLW      0
	MOVWF      _yon+1
;Uygulama12.c,25 :: 		TRISD=0B00000011;
	MOVLW      3
	MOVWF      TRISD+0
;Uygulama12.c,26 :: 		TRISB=0X00;
	CLRF       TRISB+0
;Uygulama12.c,27 :: 		PORTB=1;
	MOVLW      1
	MOVWF      PORTB+0
;Uygulama12.c,29 :: 		while(1){
L_main6:
;Uygulama12.c,31 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main8
;Uygulama12.c,32 :: 		yon=1;
	MOVLW      1
	MOVWF      _yon+0
	MOVLW      0
	MOVWF      _yon+1
;Uygulama12.c,33 :: 		}else{
	GOTO       L_main9
L_main8:
;Uygulama12.c,34 :: 		yon=0;
	CLRF       _yon+0
	CLRF       _yon+1
;Uygulama12.c,35 :: 		}
L_main9:
;Uygulama12.c,36 :: 		if(yon==1){
	MOVLW      0
	XORWF      _yon+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVLW      1
	XORWF      _yon+0, 0
L__main15:
	BTFSS      STATUS+0, 2
	GOTO       L_main10
;Uygulama12.c,37 :: 		saga_kaydir();
	CALL       _saga_kaydir+0
;Uygulama12.c,38 :: 		}
L_main10:
;Uygulama12.c,39 :: 		if(yon==0){
	MOVLW      0
	XORWF      _yon+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main16
	MOVLW      0
	XORWF      _yon+0, 0
L__main16:
	BTFSS      STATUS+0, 2
	GOTO       L_main11
;Uygulama12.c,40 :: 		sola_kaydir();
	CALL       _sola_kaydir+0
;Uygulama12.c,41 :: 		}
L_main11:
;Uygulama12.c,43 :: 		}
	GOTO       L_main6
;Uygulama12.c,44 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
