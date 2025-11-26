
_init:

;Uygulama21.c,19 :: 		init(){
;Uygulama21.c,20 :: 		trisb=0;
	CLRF       TRISB+0
;Uygulama21.c,21 :: 		portb=0;
	CLRF       PORTB+0
;Uygulama21.c,23 :: 		Lcd_Init();                        // Initialize LCD
	CALL       _Lcd_Init+0
;Uygulama21.c,24 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Uygulama21.c,25 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Uygulama21.c,27 :: 		}
L_end_init:
	RETURN
; end of _init

_main:

;Uygulama21.c,29 :: 		void main() {
;Uygulama21.c,31 :: 		init();
	CALL       _init+0
;Uygulama21.c,32 :: 		Lcd_Out(1,5,txt1);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      5
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Uygulama21.c,33 :: 		Lcd_Out(2,1,txt2);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _txt2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Uygulama21.c,34 :: 		while(1){
L_main0:
;Uygulama21.c,36 :: 		} // while sonu
	GOTO       L_main0
;Uygulama21.c,37 :: 		} // main sonu
L_end_main:
	GOTO       $+0
; end of _main
