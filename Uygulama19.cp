#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama19.c"

unsigned int adc_degeri;
 interrupt(){
 adc_degeri=ADRESH;
 PIR1.ADIF=0;
 ADCON0.GO=1;
 }
 init(){
 ADCON1=0X4E;

 ADCON0=0X45;

 PIR1.ADIF=0;
 PIE1.ADIE=1;
 INTCON.PEIE=1;
 INTCON.GIE=1;
 TRISA=1;
 TRISB=0;
 PORTB=0;
 TRISD=0;
 PORTD=0;
}
void main() {
 init();
while(1){
PORTB=adc_degeri;
PORTD.F7=~PORTD.F7;
}
}
