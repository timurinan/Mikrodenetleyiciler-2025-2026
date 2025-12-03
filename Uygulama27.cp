#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama27.c"
int sayac=0;
int onlar;
int birler;
int veri;

init(){
 trisb=0;
 portb=0;
 trisd=0xff;
}

 seven_segment_goster(){
 onlar=sayac/10;
 birler=sayac%10;
 onlar=onlar*16;
 veri=onlar^birler;
 portb=veri;
 }
void main() {
 init();

 while(1){
 if(portd.f0==1){
 delay_ms(500);
 sayac=sayac+1;
 if(sayac>99)
 sayac=0;
 }
 if(portd.f1==1){
 delay_ms(500);
 sayac=sayac-1;
 if(sayac<0)
 sayac=99;
 }
 seven_segment_goster();
 }
}
