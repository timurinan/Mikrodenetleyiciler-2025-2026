#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama28.c"
int sayac=0;
int binler;
int yuzler;
int onlar;
int birler;
int veri;
bit pd0;
bit pd1;

init(){
 trisb=0;
 trisc=0;
 portb=0;
 portc=0;
 trisd=0xff;
}
seven_segment_goster(){
 binler=sayac/1000;
 yuzler=(sayac%1000)/100;
 onlar=(sayac%100)/10;
 birler=sayac%10;
 PORTC=0B11101111;
 PORTB=birler;
 Delay_ms(1);
 PORTC=0B11011111;
 PORTB=onlar;
 Delay_ms(1);
 PORTC=0B10111111;
 PORTB=yuzler;
 Delay_ms(1);
 PORTC=0B01111111;
 PORTB=binler;
 Delay_ms(1);
 }
void main() {
 init();

 while(1){
 if(portd.f1==1&&pd1==0){
 pd1=1;
 delay_ms(100);
 sayac=sayac+1;
 if(sayac>9999)
 sayac=0;
 }else if(portd.f1==0){
 pd1=0;
 }
 if(portd.f0==1&&pd0==0){
 pd0=1;
 delay_ms(100);
 sayac=sayac-1;
 if(sayac<0)
 sayac=9999;
 }
 else if(portd.f0==0){
 pd0=0;
 }
 seven_segment_goster();
 }
}
