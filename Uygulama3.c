
int i;

void main() {

TRISB=0X00;// TRISB=0----TRISB=0B00000000
PORTB=1;

 while(1){
 
  for(i=0;i<=7;i++){
    Delay_ms(1000);
    PORTB=PORTB*2+1;
  }
  PORTB=1;
 }

}