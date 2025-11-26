#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama23.c"



void main() {

TRISB=0;

while(1){
 PORTB=0B11111100;
 Delay_ms(1000);

 PORTB=0B01100000;
 Delay_ms(1000);

 PORTB=0B11011010;
 Delay_ms(1000);

 PORTB=0B11110010;
 Delay_ms(1000);

 PORTB=0B01100110;
 Delay_ms(1000);


}
}
