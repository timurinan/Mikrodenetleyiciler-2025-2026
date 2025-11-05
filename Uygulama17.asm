
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Uygulama17.c,1 :: 		void interrupt(){
;Uygulama17.c,2 :: 		PORTB.F0=~PORTB.F0; // B.F0 SÜREKLÝ DEÐÝLLENEREK KARE DALGA ÜRETÝMÝ SAÐLIYOR
	MOVLW      1
	XORWF      PORTB+0, 1
;Uygulama17.c,3 :: 		TMR0=231;
	MOVLW      231
	MOVWF      TMR0+0
;Uygulama17.c,4 :: 		INTCON.TMR0IF=0; // Tmr0 interrupt bayragi interrupt bitiminde sifirlanmali
	BCF        INTCON+0, 2
;Uygulama17.c,5 :: 		}
L_end_interrupt:
L__interrupt3:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_init:

;Uygulama17.c,7 :: 		void init(){
;Uygulama17.c,8 :: 		portb=0;
	CLRF       PORTB+0
;Uygulama17.c,9 :: 		trisb=0;// portb çýkýþ olarak ayarlandý
	CLRF       TRISB+0
;Uygulama17.c,10 :: 		OPTION_REG=2; // TOCS=0, TOSE=X, PSA=0,PS2:PS0=001,prescaler=4
	MOVLW      2
	MOVWF      OPTION_REG+0
;Uygulama17.c,11 :: 		TMR0=231; // TIMER0 BAÞLANGIÞ DEÐERÝ ATAMASI
	MOVLW      231
	MOVWF      TMR0+0
;Uygulama17.c,12 :: 		INTCON=0XA0; // TMR0 ÝNTERRUPT AYARLARI
	MOVLW      160
	MOVWF      INTCON+0
;Uygulama17.c,13 :: 		}
L_end_init:
	RETURN
; end of _init

_main:

;Uygulama17.c,15 :: 		void main() {
;Uygulama17.c,16 :: 		init();
	CALL       _init+0
;Uygulama17.c,17 :: 		while(1){
L_main0:
;Uygulama17.c,19 :: 		}
	GOTO       L_main0
;Uygulama17.c,20 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
