#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama3.c"

int i;

void main() {

TRISB=0X00;
PORTB=1;

 while(1){

 for(i=0;i<=7;i++){
 Delay_ms(1000);
 PORTB=PORTB*2+1;
 }
 PORTB=1;
 }

}
