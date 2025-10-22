#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama10.c"

void blink(){

 PORTB=255;
 Delay_ms(1000);
 PORTB=0;
 Delay_ms(1000);

}

void main() {

TRISD=0B00000001;
TRISB=0X00;
PORTB=0;

 while(1){

 if(PORTD.F0==1){

 blink();

 }else{

 PORTB=0B00000000;

 }
 }
}
