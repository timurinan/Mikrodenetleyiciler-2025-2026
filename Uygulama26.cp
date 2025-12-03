#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama26.c"

unsigned int sayi;
bit buton_arttir;
bit buton_azalt;

void main() {

TRISB=0;
TRISD=0XFF;
sayi=0;
buton_arttir=0;
buton_azalt=0;

while(1){

 PORTB=sayi;

 if(PORTD.F0==1&&buton_arttir==0){
 sayi=sayi+1;
 buton_arttir=1;
 if(sayi==10){
 sayi=0;
 }
 }else if(PORTD.F0==0){
 buton_arttir=0;
 }
 if(PORTD.F1==1&&buton_azalt==0){
 sayi=sayi-1;
 if(sayi==-1){
 sayi=9;
 }
 buton_azalt=1;
 }else if(PORTD.F1==0){
 buton_azalt=0;
 }
}
}
