


void main() {

TRISD=0B00000001;
TRISB=0X00;
PORTB=0;

 while(1){
 
   if(PORTD.F0==1){
   
     PORTB.F3=1;
     
   }else{
   
   PORTB.F3=0;
   
   }
 }
}