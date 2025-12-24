
_main:

;Uygulama34.c,3 :: 		void main() {
;Uygulama34.c,6 :: 		UART1_Init(9600);               // Initialize UART module at 9600 bps
	MOVLW      51
	MOVWF      SPBRG+0
	BSF        TXSTA+0, 2
	CALL       _UART1_Init+0
;Uygulama34.c,7 :: 		Delay_ms(100);                  // Wait for UART module to stabilize
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;Uygulama34.c,9 :: 		UART1_Write_Text("Basla");
	MOVLW      ?lstr1_Uygulama34+0
	MOVWF      FARG_UART1_Write_Text_uart_text+0
	CALL       _UART1_Write_Text+0
;Uygulama34.c,10 :: 		UART1_Write(10);//line feed ascii
	MOVLW      10
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;Uygulama34.c,11 :: 		UART1_Write(13);//Carriage Return
	MOVLW      13
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;Uygulama34.c,13 :: 		while (1) {                     // Endless loop
L_main1:
;Uygulama34.c,14 :: 		if (UART1_Data_Ready()) {     // If data is received,
	CALL       _UART1_Data_Ready+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main3
;Uygulama34.c,15 :: 		uart_rd = UART1_Read();     // read the received data,
	CALL       _UART1_Read+0
	MOVF       R0+0, 0
	MOVWF      _uart_rd+0
;Uygulama34.c,16 :: 		uart_rd=uart_rd-32;         // okunan karakterin bir sonrasýndaki                                  //karakteri geri gönderir.
	MOVLW      32
	SUBWF      R0+0, 1
	MOVF       R0+0, 0
	MOVWF      _uart_rd+0
;Uygulama34.c,17 :: 		UART1_Write(uart_rd);       // and send data via USART
	MOVF       R0+0, 0
	MOVWF      FARG_UART1_Write_data_+0
	CALL       _UART1_Write+0
;Uygulama34.c,18 :: 		}
L_main3:
;Uygulama34.c,19 :: 		}
	GOTO       L_main1
;Uygulama34.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
