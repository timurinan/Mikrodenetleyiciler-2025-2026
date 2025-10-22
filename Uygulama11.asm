
_sola_kaydir:

;Uygulama11.c,2 :: 		void sola_kaydir(){
;Uygulama11.c,3 :: 		PORTB=PORTB<<1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Uygulama11.c,4 :: 		Delay_ms(500);
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
;Uygulama11.c,5 :: 		if(PORTB==128){
	MOVF       PORTB+0, 0
	XORLW      128
	BTFSS      STATUS+0, 2
	GOTO       L_sola_kaydir1
;Uygulama11.c,6 :: 		PORTB=1;
	MOVLW      1
	MOVWF      PORTB+0
;Uygulama11.c,7 :: 		Delay_ms(500);
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
;Uygulama11.c,8 :: 		}
L_sola_kaydir1:
;Uygulama11.c,9 :: 		}
L_end_sola_kaydir:
	RETURN
; end of _sola_kaydir

_saga_kaydir:

;Uygulama11.c,11 :: 		void saga_kaydir(){
;Uygulama11.c,12 :: 		PORTB=PORTB>>1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Uygulama11.c,13 :: 		Delay_ms(500);
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
;Uygulama11.c,15 :: 		if(PORTB==1){
	MOVF       PORTB+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_saga_kaydir4
;Uygulama11.c,16 :: 		PORTB=128;
	MOVLW      128
	MOVWF      PORTB+0
;Uygulama11.c,17 :: 		Delay_ms(500);
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
;Uygulama11.c,18 :: 		}
L_saga_kaydir4:
;Uygulama11.c,19 :: 		}
L_end_saga_kaydir:
	RETURN
; end of _saga_kaydir

_main:

;Uygulama11.c,21 :: 		void main() {
;Uygulama11.c,23 :: 		TRISD=0B00000011;
	MOVLW      3
	MOVWF      TRISD+0
;Uygulama11.c,24 :: 		TRISB=0X00;
	CLRF       TRISB+0
;Uygulama11.c,25 :: 		PORTB=1;
	MOVLW      1
	MOVWF      PORTB+0
;Uygulama11.c,27 :: 		while(1){
L_main6:
;Uygulama11.c,29 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main8
;Uygulama11.c,30 :: 		saga_kaydir();
	CALL       _saga_kaydir+0
;Uygulama11.c,31 :: 		}else if(PORTD.F1==1){
	GOTO       L_main9
L_main8:
	BTFSS      PORTD+0, 1
	GOTO       L_main10
;Uygulama11.c,32 :: 		sola_kaydir();
	CALL       _sola_kaydir+0
;Uygulama11.c,33 :: 		}
L_main10:
L_main9:
;Uygulama11.c,34 :: 		}
	GOTO       L_main6
;Uygulama11.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
