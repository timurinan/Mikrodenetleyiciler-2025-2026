void interrupt(){
PORTB.F0=~PORTB.F0; // B.F0 SÜREKLÝ DEÐÝLLENEREK KARE DALGA ÜRETÝMÝ SAÐLIYOR
 TMR0=231;
 INTCON.TMR0IF=0; // Tmr0 interrupt bayragi interrupt bitiminde sifirlanmali
 }
 // INIT ALT PROGRAMI
 void init(){
 portb=0;
 trisb=0;// portb çýkýþ olarak ayarlandý
 OPTION_REG=2; // TOCS=0, TOSE=X, PSA=0,PS2:PS0=001,prescaler=4
 TMR0=231; // TIMER0 BAÞLANGIÞ DEÐERÝ ATAMASI
 INTCON=0XA0; // TMR0 ÝNTERRUPT AYARLARI
 }
 // ANA PROGRAM
 void main() {
 init();
 while(1){

 }
 }