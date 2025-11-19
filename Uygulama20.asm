
_init:

;Uygulama20.c,3 :: 		init(){
;Uygulama20.c,4 :: 		ADCON1=0X4E;// ADFM=0(LEFT JUSTIFIED),ADCS2=1,
	MOVLW      78
	MOVWF      ADCON1+0
;Uygulama20.c,6 :: 		ADCON0=0X45;//ADCS1=0,ADCS1=1,16 tOSC SEÇÝLDÝ.,CHS2:CHS0=0 KANAL AN0 SEÇÝLDÝ
	MOVLW      69
	MOVWF      ADCON0+0
;Uygulama20.c,8 :: 		TRISB=0; //A/D SONUCU B PORTUNA GÖNDERÝLECEK
	CLRF       TRISB+0
;Uygulama20.c,9 :: 		PORTB=0;
	CLRF       PORTB+0
;Uygulama20.c,10 :: 		TRISD=0;
	CLRF       TRISD+0
;Uygulama20.c,11 :: 		PORTD=0;
	CLRF       PORTD+0
;Uygulama20.c,12 :: 		}// init fonk sonu
L_end_init:
	RETURN
; end of _init

_main:

;Uygulama20.c,13 :: 		void main() {
;Uygulama20.c,14 :: 		init();
	CALL       _init+0
;Uygulama20.c,15 :: 		while(1){
L_main0:
;Uygulama20.c,16 :: 		adc_degeri= ADC_Get_Sample(0);
	CLRF       FARG_ADC_Get_Sample_channel+0
	CALL       _ADC_Get_Sample+0
	CALL       _word2double+0
	MOVF       R0+0, 0
	MOVWF      _adc_degeri+0
	MOVF       R0+1, 0
	MOVWF      _adc_degeri+1
	MOVF       R0+2, 0
	MOVWF      _adc_degeri+2
	MOVF       R0+3, 0
	MOVWF      _adc_degeri+3
;Uygulama20.c,17 :: 		adc_degeri=adc_degeri*0.249;//10 bitlik
	MOVLW      219
	MOVWF      R4+0
	MOVLW      249
	MOVWF      R4+1
	MOVLW      126
	MOVWF      R4+2
	MOVLW      124
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _adc_degeri+0
	MOVF       R0+1, 0
	MOVWF      _adc_degeri+1
	MOVF       R0+2, 0
	MOVWF      _adc_degeri+2
	MOVF       R0+3, 0
	MOVWF      _adc_degeri+3
;Uygulama20.c,19 :: 		PORTB=adc_degeri;
	CALL       _double2byte+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Uygulama20.c,20 :: 		PORTD.F7=~PORTD.F7;
	MOVLW      128
	XORWF      PORTD+0, 1
;Uygulama20.c,21 :: 		}}
	GOTO       L_main0
L_end_main:
	GOTO       $+0
; end of _main
