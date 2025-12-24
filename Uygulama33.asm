
_init:

;Uygulama33.c,20 :: 		init(){
;Uygulama33.c,21 :: 		ADCON1=0X4E;// ADFM=0(LEFT JUSTIFIED),ADCS2=1,
	MOVLW      78
	MOVWF      ADCON1+0
;Uygulama33.c,23 :: 		ADCON0=0X45;//ADCS1=0,ADCS1=1,16 tOSC SEÇÝLDÝ.,CHS2:CHS0=0 KANAL aN0 SEÇÝLDÝ
	MOVLW      69
	MOVWF      ADCON0+0
;Uygulama33.c,24 :: 		trisb=0;
	CLRF       TRISB+0
;Uygulama33.c,25 :: 		portb=0;
	CLRF       PORTB+0
;Uygulama33.c,26 :: 		Lcd_Init();                        // Initialize LCD
	CALL       _Lcd_Init+0
;Uygulama33.c,27 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Uygulama33.c,28 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Uygulama33.c,29 :: 		PWM1_Init(10000);    //10 Khz
	BCF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      199
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;Uygulama33.c,30 :: 		PWM1_Set_Duty(0);  // Baþlangýçta motor dönmeyecek
	CLRF       FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Uygulama33.c,31 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;Uygulama33.c,32 :: 		}
L_end_init:
	RETURN
; end of _init

_main:

;Uygulama33.c,33 :: 		void main() {
;Uygulama33.c,34 :: 		init();
	CALL       _init+0
;Uygulama33.c,35 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;Uygulama33.c,36 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Uygulama33.c,37 :: 		while(1){
L_main1:
;Uygulama33.c,38 :: 		adc_val= ADC_Read(0); // A portunun 0 numaralý pininden analog deðer okunuyor...
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      32
	MOVF       R0+1, 0
	MOVWF      33
;Uygulama33.c,39 :: 		carpan=5000.0/1023.0;// bir bite karþýlýk gelen gerilim deðeri
	MOVLW      26
	MOVWF      _carpan+0
	MOVLW      103
	MOVWF      _carpan+1
	MOVLW      28
	MOVWF      _carpan+2
	MOVLW      129
	MOVWF      _carpan+3
;Uygulama33.c,40 :: 		adc_degeri=adc_val*carpan;   //adc den okunan mv deðerini hesaplýyorum...
	CALL       _word2double+0
	MOVLW      26
	MOVWF      R4+0
	MOVLW      103
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      129
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      34
	MOVF       R0+1, 0
	MOVWF      35
	MOVF       R0+2, 0
	MOVWF      36
	MOVF       R0+3, 0
	MOVWF      37
;Uygulama33.c,41 :: 		FloatToStr(adc_degeri, dc_val);//float deðiþkenin stringe çevrilmesi
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _dc_val+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;Uygulama33.c,42 :: 		strcat(dc_val," mV"); // strcat komutu ile iki string birleþtiriliyor.
	MOVLW      _dc_val+0
	MOVWF      FARG_strcat_to+0
	MOVLW      ?lstr1_Uygulama33+0
	MOVWF      FARG_strcat_from+0
	CALL       _strcat+0
;Uygulama33.c,43 :: 		Lcd_Out(1,1,"Olculen Deger:");// LCD nin 1 satýr1. sütunundan itibaren yazdýr.
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Uygulama33+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Uygulama33.c,44 :: 		Lcd_Out(2,1,dc_val);// LCD nin 1 satýr 1. sütunundanitibaren yazdýr.
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _dc_val+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Uygulama33.c,45 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
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
;Uygulama33.c,46 :: 		pwm_deger=255*(adc_degeri/5000);
	MOVLW      0
	MOVWF      R4+0
	MOVLW      64
	MOVWF      R4+1
	MOVLW      28
	MOVWF      R4+2
	MOVLW      139
	MOVWF      R4+3
	MOVF       34, 0
	MOVWF      R0+0
	MOVF       35, 0
	MOVWF      R0+1
	MOVF       36, 0
	MOVWF      R0+2
	MOVF       37, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      127
	MOVWF      R4+2
	MOVLW      134
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      38
	MOVF       R0+1, 0
	MOVWF      39
	MOVF       R0+2, 0
	MOVWF      40
	MOVF       R0+3, 0
	MOVWF      41
;Uygulama33.c,47 :: 		PWM1_Set_Duty(pwm_deger);
	CALL       _double2byte+0
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;Uygulama33.c,48 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Uygulama33.c,49 :: 		Lcd_Out(1,1,"PWM %:");// LCD nin 1 satýr 1. sütunundan itibaren yazdýr.
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_Uygulama33+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Uygulama33.c,50 :: 		pwm_deger=100*(pwm_deger/255);
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      127
	MOVWF      R4+2
	MOVLW      134
	MOVWF      R4+3
	MOVF       38, 0
	MOVWF      R0+0
	MOVF       39, 0
	MOVWF      R0+1
	MOVF       40, 0
	MOVWF      R0+2
	MOVF       41, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      133
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      38
	MOVF       R0+1, 0
	MOVWF      39
	MOVF       R0+2, 0
	MOVWF      40
	MOVF       R0+3, 0
	MOVWF      41
;Uygulama33.c,51 :: 		FloatToStr(pwm_deger, pwm_val);// //float deðiþkenin stringe çevrilmesi
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _pwm_val+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;Uygulama33.c,52 :: 		Lcd_Out(2,1,pwm_val);// LCD nin 1 satýr 1. sütunundan itibaren yazdýr.
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _pwm_val+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Uygulama33.c,53 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;Uygulama33.c,54 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Uygulama33.c,55 :: 		}
	GOTO       L_main1
;Uygulama33.c,56 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
