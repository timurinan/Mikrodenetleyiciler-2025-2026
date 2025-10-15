
_main:

;Uygulama6.c,4 :: 		void main() {
;Uygulama6.c,6 :: 		yon=0; //sag
	BCF        _yon+0, BitPos(_yon+0)
;Uygulama6.c,7 :: 		TRISB=0X00;
	CLRF       TRISB+0
;Uygulama6.c,8 :: 		PORTB=1;
	MOVLW      1
	MOVWF      PORTB+0
;Uygulama6.c,9 :: 		Delay_ms(750);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;Uygulama6.c,10 :: 		while(1){
L_main1:
;Uygulama6.c,12 :: 		if(yon==0){
	BTFSC      _yon+0, BitPos(_yon+0)
	GOTO       L_main3
;Uygulama6.c,13 :: 		PORTB=PORTB<<1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Uygulama6.c,14 :: 		}
	GOTO       L_main4
L_main3:
;Uygulama6.c,16 :: 		PORTB=PORTB>>1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Uygulama6.c,17 :: 		}
L_main4:
;Uygulama6.c,18 :: 		Delay_ms(750);
	MOVLW      8
	MOVWF      R11+0
	MOVLW      157
	MOVWF      R12+0
	MOVLW      5
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;Uygulama6.c,19 :: 		if(PORTB==128){
	MOVF       PORTB+0, 0
	XORLW      128
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;Uygulama6.c,20 :: 		yon=1;//sol
	BSF        _yon+0, BitPos(_yon+0)
;Uygulama6.c,21 :: 		}
L_main6:
;Uygulama6.c,22 :: 		if(PORTB==1){
	MOVF       PORTB+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;Uygulama6.c,23 :: 		yon=0;
	BCF        _yon+0, BitPos(_yon+0)
;Uygulama6.c,24 :: 		}
L_main7:
;Uygulama6.c,26 :: 		}
	GOTO       L_main1
;Uygulama6.c,27 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
