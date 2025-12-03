
unsigned int sayi;
bit basili;

void main() {

TRISB=0;
TRISD=0XFF;
sayi=0;
basili=0;

while(1){

 PORTB=sayi;
// Delay_ms(500);
 if(PORTD.F0==1&&basili==0){
 sayi=sayi+1;
 basili=1;
 if(sayi==10){
 sayi=0;
 }
 }else if(PORTD.F0==0){
 basili=0;
 }
}
}