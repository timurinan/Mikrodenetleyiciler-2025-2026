float adc_degeri;
char dc_val;
 init(){
 ADCON1=0X4E;// ADFM=0(LEFT JUSTIFIED),ADCS2=1,
 //PCFG3:PCFG0=1110 AN0 ANALOG DÝÐERLERÝ SAYISAL
 ADCON0=0X45;//ADCS1=0,ADCS1=1,16 tOSC SEÇÝLDÝ.,CHS2:CHS0=0 KANAL AN0 SEÇÝLDÝ
 //ADON=1; A/D MODÜLÜ ENERJÝLENDÝ.
 TRISB=0; //A/D SONUCU B PORTUNA GÖNDERÝLECEK
 PORTB=0;
 TRISD=0;
 PORTD=0;
 }// init fonk sonu
void main() {
init();
while(1){
adc_degeri= ADC_Get_Sample(0);
adc_degeri=adc_degeri*0.249;//10 bitlik
//veriyi 8 bite çevirmek //için 0,249 ile çarpýldý.
PORTB=adc_degeri;
PORTD.F7=~PORTD.F7;
}}