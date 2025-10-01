#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama1.c"


void main() {

TRISB=0x00;

PORTB=0X00;

while(1){

 PORTB=0Xff;
 Delay_ms(1000);

 PORTB=0X00;
 Delay_ms(1000);

}


}
