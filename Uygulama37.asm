
_init:

;Uygulama37.c,18 :: 		init(){
;Uygulama37.c,19 :: 		memset(girilen,0,4);
	MOVLW      _girilen+0
	MOVWF      FARG_memset_p1+0
	CLRF       FARG_memset_character+0
	MOVLW      4
	MOVWF      FARG_memset_n+0
	MOVLW      0
	MOVWF      FARG_memset_n+1
	CALL       _memset+0
;Uygulama37.c,20 :: 		TRISC.F0=0;
	BCF        TRISC+0, 0
;Uygulama37.c,21 :: 		TRISC.F1=0;
	BCF        TRISC+0, 1
;Uygulama37.c,22 :: 		TRISC.F2=0;
	BCF        TRISC+0, 2
;Uygulama37.c,23 :: 		TRISC.F3=0;
	BCF        TRISC+0, 3
;Uygulama37.c,24 :: 		TRISD.F0=1;
	BSF        TRISD+0, 0
;Uygulama37.c,25 :: 		TRISD.F1=1;
	BSF        TRISD+0, 1
;Uygulama37.c,26 :: 		TRISD.F2=1;
	BSF        TRISD+0, 2
;Uygulama37.c,27 :: 		trisb=0;
	CLRF       TRISB+0
;Uygulama37.c,28 :: 		portb=0;
	CLRF       PORTB+0
;Uygulama37.c,29 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;Uygulama37.c,30 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Uygulama37.c,31 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Uygulama37.c,32 :: 		Lcd_Out(1,1,"Merhaba");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_Uygulama37+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Uygulama37.c,33 :: 		}
L_end_init:
	RETURN
; end of _init

_main:

;Uygulama37.c,34 :: 		void main() {
;Uygulama37.c,35 :: 		init();
	CALL       _init+0
;Uygulama37.c,36 :: 		Delay_ms(1000);
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
;Uygulama37.c,37 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Uygulama37.c,38 :: 		while(1){
L_main1:
;Uygulama37.c,40 :: 		PORTC.F0=1;
	BSF        PORTC+0, 0
;Uygulama37.c,41 :: 		if (PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main3
;Uygulama37.c,42 :: 		tus='3';
	MOVLW      51
	MOVWF      _tus+0
;Uygulama37.c,43 :: 		girilen[i]=tus;
	MOVF       _i+0, 0
	ADDLW      _girilen+0
	MOVWF      FSR
	MOVLW      51
	MOVWF      INDF+0
;Uygulama37.c,44 :: 		i=i+1;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Uygulama37.c,45 :: 		}else if(PORTD.F1==1){
	GOTO       L_main4
L_main3:
	BTFSS      PORTD+0, 1
	GOTO       L_main5
;Uygulama37.c,46 :: 		tus='2';
	MOVLW      50
	MOVWF      _tus+0
;Uygulama37.c,47 :: 		girilen[i]=tus;
	MOVF       _i+0, 0
	ADDLW      _girilen+0
	MOVWF      FSR
	MOVLW      50
	MOVWF      INDF+0
;Uygulama37.c,48 :: 		i=i+1;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Uygulama37.c,49 :: 		}
	GOTO       L_main6
L_main5:
;Uygulama37.c,50 :: 		else if(PORTD.F2==1){
	BTFSS      PORTD+0, 2
	GOTO       L_main7
;Uygulama37.c,51 :: 		tus='1';
	MOVLW      49
	MOVWF      _tus+0
;Uygulama37.c,52 :: 		girilen[i]=tus;
	MOVF       _i+0, 0
	ADDLW      _girilen+0
	MOVWF      FSR
	MOVLW      49
	MOVWF      INDF+0
;Uygulama37.c,53 :: 		i=i+1;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Uygulama37.c,54 :: 		}
L_main7:
L_main6:
L_main4:
;Uygulama37.c,55 :: 		PORTC.F0=0;
	BCF        PORTC+0, 0
;Uygulama37.c,56 :: 		PORTC.F1=1;
	BSF        PORTC+0, 1
;Uygulama37.c,57 :: 		if (PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main8
;Uygulama37.c,58 :: 		tus='6';
	MOVLW      54
	MOVWF      _tus+0
;Uygulama37.c,59 :: 		girilen[i]=tus;
	MOVF       _i+0, 0
	ADDLW      _girilen+0
	MOVWF      FSR
	MOVLW      54
	MOVWF      INDF+0
;Uygulama37.c,60 :: 		i=i+1;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Uygulama37.c,61 :: 		}else if(PORTD.F1==1){
	GOTO       L_main9
L_main8:
	BTFSS      PORTD+0, 1
	GOTO       L_main10
;Uygulama37.c,62 :: 		tus='5';
	MOVLW      53
	MOVWF      _tus+0
;Uygulama37.c,63 :: 		girilen[i]=tus;
	MOVF       _i+0, 0
	ADDLW      _girilen+0
	MOVWF      FSR
	MOVLW      53
	MOVWF      INDF+0
;Uygulama37.c,64 :: 		i=i+1;}
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
	GOTO       L_main11
L_main10:
;Uygulama37.c,65 :: 		else if(PORTD.F2==1){
	BTFSS      PORTD+0, 2
	GOTO       L_main12
;Uygulama37.c,66 :: 		tus='4';
	MOVLW      52
	MOVWF      _tus+0
;Uygulama37.c,67 :: 		girilen[i]=tus;
	MOVF       _i+0, 0
	ADDLW      _girilen+0
	MOVWF      FSR
	MOVLW      52
	MOVWF      INDF+0
;Uygulama37.c,68 :: 		i=i+1;}
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
L_main12:
L_main11:
L_main9:
;Uygulama37.c,69 :: 		PORTC.F1=0;
	BCF        PORTC+0, 1
;Uygulama37.c,70 :: 		PORTC.F2=1;
	BSF        PORTC+0, 2
;Uygulama37.c,71 :: 		if (PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main13
;Uygulama37.c,72 :: 		tus='9';
	MOVLW      57
	MOVWF      _tus+0
;Uygulama37.c,73 :: 		girilen[i]=tus;
	MOVF       _i+0, 0
	ADDLW      _girilen+0
	MOVWF      FSR
	MOVLW      57
	MOVWF      INDF+0
;Uygulama37.c,74 :: 		i=i+1;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Uygulama37.c,75 :: 		}else if(PORTD.F1==1){
	GOTO       L_main14
L_main13:
	BTFSS      PORTD+0, 1
	GOTO       L_main15
;Uygulama37.c,76 :: 		tus='8';
	MOVLW      56
	MOVWF      _tus+0
;Uygulama37.c,77 :: 		girilen[i]=tus;
	MOVF       _i+0, 0
	ADDLW      _girilen+0
	MOVWF      FSR
	MOVLW      56
	MOVWF      INDF+0
;Uygulama37.c,78 :: 		i=i+1;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Uygulama37.c,79 :: 		}
	GOTO       L_main16
L_main15:
;Uygulama37.c,80 :: 		else if(PORTD.F2==1){
	BTFSS      PORTD+0, 2
	GOTO       L_main17
;Uygulama37.c,81 :: 		tus='7';
	MOVLW      55
	MOVWF      _tus+0
;Uygulama37.c,82 :: 		girilen[i]=tus;
	MOVF       _i+0, 0
	ADDLW      _girilen+0
	MOVWF      FSR
	MOVLW      55
	MOVWF      INDF+0
;Uygulama37.c,83 :: 		i=i+1;}
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
L_main17:
L_main16:
L_main14:
;Uygulama37.c,84 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;Uygulama37.c,85 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;Uygulama37.c,86 :: 		if (PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main18
;Uygulama37.c,87 :: 		tus='0';
	MOVLW      48
	MOVWF      _tus+0
;Uygulama37.c,88 :: 		girilen[i]=tus;
	MOVF       _i+0, 0
	ADDLW      _girilen+0
	MOVWF      FSR
	MOVLW      48
	MOVWF      INDF+0
;Uygulama37.c,89 :: 		i=i+1;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Uygulama37.c,90 :: 		}else if(PORTD.F1==1){
	GOTO       L_main19
L_main18:
	BTFSS      PORTD+0, 1
	GOTO       L_main20
;Uygulama37.c,91 :: 		tus='0';
	MOVLW      48
	MOVWF      _tus+0
;Uygulama37.c,92 :: 		girilen[i]=tus;
	MOVF       _i+0, 0
	ADDLW      _girilen+0
	MOVWF      FSR
	MOVLW      48
	MOVWF      INDF+0
;Uygulama37.c,93 :: 		i=i+1;}
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
	GOTO       L_main21
L_main20:
;Uygulama37.c,94 :: 		else if(PORTD.F2==1){
	BTFSS      PORTD+0, 2
	GOTO       L_main22
;Uygulama37.c,95 :: 		tus='0';
	MOVLW      48
	MOVWF      _tus+0
;Uygulama37.c,96 :: 		girilen[i]=tus;
	MOVF       _i+0, 0
	ADDLW      _girilen+0
	MOVWF      FSR
	MOVLW      48
	MOVWF      INDF+0
;Uygulama37.c,97 :: 		i=i+1;}
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
L_main22:
L_main21:
L_main19:
;Uygulama37.c,99 :: 		Lcd_Out(1,1,"Kod Giriniz:");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Uygulama37+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Uygulama37.c,100 :: 		Lcd_Out(2,1,girilen);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _girilen+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Uygulama37.c,101 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main23:
	DECFSZ     R13+0, 1
	GOTO       L_main23
	DECFSZ     R12+0, 1
	GOTO       L_main23
	DECFSZ     R11+0, 1
	GOTO       L_main23
	NOP
	NOP
;Uygulama37.c,102 :: 		if (i==4){
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main30
	MOVLW      4
	XORWF      _i+0, 0
L__main30:
	BTFSS      STATUS+0, 2
	GOTO       L_main24
;Uygulama37.c,103 :: 		i=0;
	CLRF       _i+0
	CLRF       _i+1
;Uygulama37.c,104 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Uygulama37.c,105 :: 		if(strcmp(girilen,sifre)==0){
	MOVLW      _girilen+0
	MOVWF      FARG_strcmp_s1+0
	MOVLW      _sifre+0
	MOVWF      FARG_strcmp_s2+0
	CALL       _strcmp+0
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main31
	MOVLW      0
	XORWF      R0+0, 0
L__main31:
	BTFSS      STATUS+0, 2
	GOTO       L_main25
;Uygulama37.c,106 :: 		Lcd_Out(2,1,"Sifre Dogru") ;
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_Uygulama37+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Uygulama37.c,107 :: 		}
	GOTO       L_main26
L_main25:
;Uygulama37.c,109 :: 		Lcd_Out(2,1,"Sifre Yanlis");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_Uygulama37+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Uygulama37.c,110 :: 		Lcd_Out(1,1,girilen);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _girilen+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Uygulama37.c,111 :: 		}
L_main26:
;Uygulama37.c,112 :: 		memset(girilen,0,4);
	MOVLW      _girilen+0
	MOVWF      FARG_memset_p1+0
	CLRF       FARG_memset_character+0
	MOVLW      4
	MOVWF      FARG_memset_n+0
	MOVLW      0
	MOVWF      FARG_memset_n+1
	CALL       _memset+0
;Uygulama37.c,113 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
	NOP
	NOP
;Uygulama37.c,114 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Uygulama37.c,115 :: 		}}}
L_main24:
	GOTO       L_main1
L_end_main:
	GOTO       $+0
; end of _main
