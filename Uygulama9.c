
void main() {

TRISD=0B00000001;
TRISB=0X00;
PORTB=0;

 while(1){

   if(PORTD.F0==1){

     PORTB=0B11111111;//0XFF ya da 255

   }else{

   PORTB=0B00000000;//0X00 ya da 0

   }
 }
}