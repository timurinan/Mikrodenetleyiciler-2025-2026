
bit yon;

void main() {

 yon=0; //sag
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
 yon=1;//sol
 }
 if(PORTB==1){
 yon=0;
 }
 
 }
}