#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama24.c"

unsigned int sayi;

void main() {

TRISB=0;
sayi=0;

while(1){

 PORTB=sayi;
 Delay_ms(1000);
 sayi=sayi+1;
 if(sayi==10){
 sayi=0;
 }

}
}
