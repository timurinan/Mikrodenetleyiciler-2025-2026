
_init:

;Uygulama27.c,6 :: 		init(){
;Uygulama27.c,7 :: 		trisb=0;
	CLRF       TRISB+0
;Uygulama27.c,8 :: 		portb=0;
	CLRF       PORTB+0
;Uygulama27.c,9 :: 		trisd=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;Uygulama27.c,10 :: 		}
L_end_init:
	RETURN
; end of _init

_seven_segment_goster:

;Uygulama27.c,12 :: 		seven_segment_goster(){
;Uygulama27.c,13 :: 		onlar=sayac/10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _sayac+0, 0
	MOVWF      R0+0
	MOVF       _sayac+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FLOC__seven_segment_goster+0
	MOVF       R0+1, 0
	MOVWF      FLOC__seven_segment_goster+1
	MOVF       FLOC__seven_segment_goster+0, 0
	MOVWF      _onlar+0
	MOVF       FLOC__seven_segment_goster+1, 0
	MOVWF      _onlar+1
;Uygulama27.c,14 :: 		birler=sayac%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _sayac+0, 0
	MOVWF      R0+0
	MOVF       _sayac+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _birler+0
	MOVF       R0+1, 0
	MOVWF      _birler+1
;Uygulama27.c,15 :: 		onlar=onlar*16;
	MOVLW      4
	MOVWF      R4+0
	MOVF       FLOC__seven_segment_goster+0, 0
	MOVWF      R2+0
	MOVF       FLOC__seven_segment_goster+1, 0
	MOVWF      R2+1
	MOVF       R4+0, 0
L__seven_segment_goster10:
	BTFSC      STATUS+0, 2
	GOTO       L__seven_segment_goster11
	RLF        R2+0, 1
	RLF        R2+1, 1
	BCF        R2+0, 0
	ADDLW      255
	GOTO       L__seven_segment_goster10
L__seven_segment_goster11:
	MOVF       R2+0, 0
	MOVWF      _onlar+0
	MOVF       R2+1, 0
	MOVWF      _onlar+1
;Uygulama27.c,16 :: 		veri=onlar^birler;
	MOVF       R2+0, 0
	XORWF      R0+0, 1
	MOVF       R2+1, 0
	XORWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      _veri+0
	MOVF       R0+1, 0
	MOVWF      _veri+1
;Uygulama27.c,17 :: 		portb=veri;
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Uygulama27.c,18 :: 		}
L_end_seven_segment_goster:
	RETURN
; end of _seven_segment_goster

_main:

;Uygulama27.c,19 :: 		void main() {
;Uygulama27.c,20 :: 		init();
	CALL       _init+0
;Uygulama27.c,22 :: 		while(1){
L_main0:
;Uygulama27.c,23 :: 		if(portd.f0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Uygulama27.c,24 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Uygulama27.c,25 :: 		sayac=sayac+1;
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;Uygulama27.c,26 :: 		if(sayac>99)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _sayac+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVF       _sayac+0, 0
	SUBLW      99
L__main13:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;Uygulama27.c,27 :: 		sayac=0;
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main4:
;Uygulama27.c,28 :: 		}
L_main2:
;Uygulama27.c,29 :: 		if(portd.f1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_main5
;Uygulama27.c,30 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;Uygulama27.c,31 :: 		sayac=sayac-1;
	MOVLW      1
	SUBWF      _sayac+0, 1
	BTFSS      STATUS+0, 0
	DECF       _sayac+1, 1
;Uygulama27.c,32 :: 		if(sayac<0)
	MOVLW      128
	XORWF      _sayac+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVLW      0
	SUBWF      _sayac+0, 0
L__main14:
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;Uygulama27.c,33 :: 		sayac=99;
	MOVLW      99
	MOVWF      _sayac+0
	MOVLW      0
	MOVWF      _sayac+1
L_main7:
;Uygulama27.c,34 :: 		}
L_main5:
;Uygulama27.c,35 :: 		seven_segment_goster();
	CALL       _seven_segment_goster+0
;Uygulama27.c,36 :: 		}//while son
	GOTO       L_main0
;Uygulama27.c,37 :: 		}// main son
L_end_main:
	GOTO       $+0
; end of _main
