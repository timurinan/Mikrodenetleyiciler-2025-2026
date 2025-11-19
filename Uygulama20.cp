#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama20.c"
float adc_degeri;
char dc_val;
 init(){
 ADCON1=0X4E;

 ADCON0=0X45;

 TRISB=0;
 PORTB=0;
 TRISD=0;
 PORTD=0;
 }
void main() {
init();
while(1){
adc_degeri= ADC_Get_Sample(0);
adc_degeri=adc_degeri*0.249;

PORTB=adc_degeri;
PORTD.F7=~PORTD.F7;
}}
