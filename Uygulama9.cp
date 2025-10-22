#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama9.c"

void main() {

TRISD=0B00000001;
TRISB=0X00;
PORTB=0;

 while(1){

 if(PORTD.F0==1){

 PORTB=0B11111111;

 }else{

 PORTB=0B00000000;

 }
 }
}
