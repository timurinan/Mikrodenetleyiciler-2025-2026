
_init:

;Uygulama28.c,10 :: 		init(){
;Uygulama28.c,11 :: 		trisb=0;
	CLRF       TRISB+0
;Uygulama28.c,12 :: 		trisc=0;
	CLRF       TRISC+0
;Uygulama28.c,13 :: 		portb=0;
	CLRF       PORTB+0
;Uygulama28.c,14 :: 		portc=0;
	CLRF       PORTC+0
;Uygulama28.c,15 :: 		trisd=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;Uygulama28.c,16 :: 		}
L_end_init:
	RETURN
; end of _init

_seven_segment_goster:

;Uygulama28.c,17 :: 		seven_segment_goster(){
;Uygulama28.c,18 :: 		binler=sayac/1000;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
	MOVWF      R4+1
	MOVF       _sayac+0, 0
	MOVWF      R0+0
	MOVF       _sayac+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _binler+0
	MOVF       R0+1, 0
	MOVWF      _binler+1
;Uygulama28.c,19 :: 		yuzler=(sayac%1000)/100;
	MOVLW      232
	MOVWF      R4+0
	MOVLW      3
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
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _yuzler+0
	MOVF       R0+1, 0
	MOVWF      _yuzler+1
;Uygulama28.c,20 :: 		onlar=(sayac%100)/10;
	MOVLW      100
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
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _onlar+0
	MOVF       R0+1, 0
	MOVWF      _onlar+1
;Uygulama28.c,21 :: 		birler=sayac%10;
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
;Uygulama28.c,22 :: 		PORTC=0B11101111;
	MOVLW      239
	MOVWF      PORTC+0
;Uygulama28.c,23 :: 		PORTB=birler;
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Uygulama28.c,24 :: 		Delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_seven_segment_goster0:
	DECFSZ     R13+0, 1
	GOTO       L_seven_segment_goster0
	DECFSZ     R12+0, 1
	GOTO       L_seven_segment_goster0
	NOP
	NOP
;Uygulama28.c,25 :: 		PORTC=0B11011111;
	MOVLW      223
	MOVWF      PORTC+0
;Uygulama28.c,26 :: 		PORTB=onlar;
	MOVF       _onlar+0, 0
	MOVWF      PORTB+0
;Uygulama28.c,27 :: 		Delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_seven_segment_goster1:
	DECFSZ     R13+0, 1
	GOTO       L_seven_segment_goster1
	DECFSZ     R12+0, 1
	GOTO       L_seven_segment_goster1
	NOP
	NOP
;Uygulama28.c,28 :: 		PORTC=0B10111111;
	MOVLW      191
	MOVWF      PORTC+0
;Uygulama28.c,29 :: 		PORTB=yuzler;
	MOVF       _yuzler+0, 0
	MOVWF      PORTB+0
;Uygulama28.c,30 :: 		Delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_seven_segment_goster2:
	DECFSZ     R13+0, 1
	GOTO       L_seven_segment_goster2
	DECFSZ     R12+0, 1
	GOTO       L_seven_segment_goster2
	NOP
	NOP
;Uygulama28.c,31 :: 		PORTC=0B01111111;
	MOVLW      127
	MOVWF      PORTC+0
;Uygulama28.c,32 :: 		PORTB=binler;
	MOVF       _binler+0, 0
	MOVWF      PORTB+0
;Uygulama28.c,33 :: 		Delay_ms(1);
	MOVLW      3
	MOVWF      R12+0
	MOVLW      151
	MOVWF      R13+0
L_seven_segment_goster3:
	DECFSZ     R13+0, 1
	GOTO       L_seven_segment_goster3
	DECFSZ     R12+0, 1
	GOTO       L_seven_segment_goster3
	NOP
	NOP
;Uygulama28.c,34 :: 		}
L_end_seven_segment_goster:
	RETURN
; end of _seven_segment_goster

_main:

;Uygulama28.c,35 :: 		void main() {
;Uygulama28.c,36 :: 		init();
	CALL       _init+0
;Uygulama28.c,38 :: 		while(1){
L_main4:
;Uygulama28.c,39 :: 		if(portd.f1==1&&pd1==0){
	BTFSS      PORTD+0, 1
	GOTO       L_main8
	BTFSC      _pd1+0, BitPos(_pd1+0)
	GOTO       L_main8
L__main21:
;Uygulama28.c,40 :: 		pd1=1;
	BSF        _pd1+0, BitPos(_pd1+0)
;Uygulama28.c,41 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
;Uygulama28.c,42 :: 		sayac=sayac+1;
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;Uygulama28.c,43 :: 		if(sayac>9999)
	MOVLW      128
	XORLW      39
	MOVWF      R0+0
	MOVLW      128
	XORWF      _sayac+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main25
	MOVF       _sayac+0, 0
	SUBLW      15
L__main25:
	BTFSC      STATUS+0, 0
	GOTO       L_main10
;Uygulama28.c,44 :: 		sayac=0;
	CLRF       _sayac+0
	CLRF       _sayac+1
L_main10:
;Uygulama28.c,45 :: 		}else if(portd.f1==0){
	GOTO       L_main11
L_main8:
	BTFSC      PORTD+0, 1
	GOTO       L_main12
;Uygulama28.c,46 :: 		pd1=0;
	BCF        _pd1+0, BitPos(_pd1+0)
;Uygulama28.c,47 :: 		}
L_main12:
L_main11:
;Uygulama28.c,48 :: 		if(portd.f0==1&&pd0==0){
	BTFSS      PORTD+0, 0
	GOTO       L_main15
	BTFSC      _pd0+0, BitPos(_pd0+0)
	GOTO       L_main15
L__main20:
;Uygulama28.c,49 :: 		pd0=1;
	BSF        _pd0+0, BitPos(_pd0+0)
;Uygulama28.c,50 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
	NOP
;Uygulama28.c,51 :: 		sayac=sayac-1;
	MOVLW      1
	SUBWF      _sayac+0, 1
	BTFSS      STATUS+0, 0
	DECF       _sayac+1, 1
;Uygulama28.c,52 :: 		if(sayac<0)
	MOVLW      128
	XORWF      _sayac+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main26
	MOVLW      0
	SUBWF      _sayac+0, 0
L__main26:
	BTFSC      STATUS+0, 0
	GOTO       L_main17
;Uygulama28.c,53 :: 		sayac=9999;
	MOVLW      15
	MOVWF      _sayac+0
	MOVLW      39
	MOVWF      _sayac+1
L_main17:
;Uygulama28.c,54 :: 		}
	GOTO       L_main18
L_main15:
;Uygulama28.c,55 :: 		else if(portd.f0==0){
	BTFSC      PORTD+0, 0
	GOTO       L_main19
;Uygulama28.c,56 :: 		pd0=0;
	BCF        _pd0+0, BitPos(_pd0+0)
;Uygulama28.c,57 :: 		}
L_main19:
L_main18:
;Uygulama28.c,58 :: 		seven_segment_goster();
	CALL       _seven_segment_goster+0
;Uygulama28.c,59 :: 		}//while son
	GOTO       L_main4
;Uygulama28.c,60 :: 		}// main son
L_end_main:
	GOTO       $+0
; end of _main
