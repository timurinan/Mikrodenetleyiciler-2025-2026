
_main:

;Uygulama2.c,4 :: 		void main() {
;Uygulama2.c,6 :: 		ondalikli_sayi=0.15625;
	MOVLW      0
	MOVWF      32
	MOVLW      0
	MOVWF      33
	MOVLW      32
	MOVWF      34
	MOVLW      124
	MOVWF      35
;Uygulama2.c,8 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
