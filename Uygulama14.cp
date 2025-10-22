#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama14.c"

void interrupt(){

 PORTB.F1=1;
 PORTB.F2=1;
 Delay_ms(500);
 PORTB.F1=0;
 PORTB.F2=0;
 Delay_ms(500);
 if(INTCON.INTF==1){
 INTCON.INTF=0;
 }


}


void main() {

TRISB=0B00000001;
INTCON.GIE=1;
INTCON.PEIE=1;
INTCON.INTE=1;
OPTION_REG.INTEDG=1;

while(1){


}


}
