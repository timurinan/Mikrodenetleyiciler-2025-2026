#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama17.c"
void interrupt(){
PORTB.F0=~PORTB.F0;
 TMR0=231;
 INTCON.TMR0IF=0;
 }

 void init(){
 portb=0;
 trisb=0;
 OPTION_REG=2;
 TMR0=231;
 INTCON=0XA0;
 }

 void main() {
 init();
 while(1){

 }
 }
