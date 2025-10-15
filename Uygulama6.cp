#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama6.c"

bit yon;

void main() {

 yon=0;
 TRISB=0X00;
 PORTB=1;
 Delay_ms(750);
 while(1){

 if(yon==0){
 PORTB=PORTB<<1;
 }
 else{
 PORTB=PORTB>>1;
 }
 Delay_ms(750);
 if(PORTB==128){
 yon=1;
 }
 if(PORTB==1){
 yon=0;
 }

 }
}
