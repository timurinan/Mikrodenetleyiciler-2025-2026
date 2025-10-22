
unsigned int yon;

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
yon=2;
TRISD=0B00000011;
TRISB=0X00;
PORTB=1;

 while(1){

   if(PORTD.F0==1){
     yon=1;
   }else (PORTD.F1==1){
   yon=0;
   }
   if(yon==1){
   saga_kaydir();
   }
   if(yon==0){
   sola_kaydir();
   }
   
 }
}