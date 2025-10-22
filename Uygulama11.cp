#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama11.c"

void sola_kaydir(){
 PORTB=PORTB<<1;
 Delay_ms(500);
 if(PORTB==128){
 PORTB=1;
 Delay_ms(500);
 }
}

void saga_kaydir(){
 PORTB=PORTB>>1;
 Delay_ms(500);

 if(PORTB==1){
 PORTB=128;
 Delay_ms(500);
 }
}

void main() {

TRISD=0B00000011;
TRISB=0X00;
PORTB=1;

 while(1){

 if(PORTD.F0==1){
 saga_kaydir();
 }else if(PORTD.F1==1){
 sola_kaydir();
 }
 }
}
