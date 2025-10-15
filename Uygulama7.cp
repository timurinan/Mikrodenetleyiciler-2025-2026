#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama7.c"

 unsigned short int sayi1,sayi2;
 double a;

void main() {

 TRISB=0;
 sayi1=1;
 sayi2=128;
 PORTB=sayi1+sayi2;
 Delay_ms(1200);
 while(1){
 a=pow(3,2);
 sayi1=sayi1<<1;
 sayi2=sayi2>>1;
 PORTB=sayi1+sayi2;
 Delay_ms(1200);
 if(sayi1==128){
 sayi1=1;
 sayi2=128;
 PORTB=sayi1+sayi2;
 Delay_ms(1200);
 }

 }
}
