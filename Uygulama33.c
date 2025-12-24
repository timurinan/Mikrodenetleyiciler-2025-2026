float adc_degeri absolute 0x22;
float pwm_deger absolute 0x26;
unsigned  adc_val absolute 0x20;
float  carpan;
char dc_val[16]; //mV deðerini string þeklinde tutmak için
char pwm_val[16]; //pwm deðerini string þeklinde tutmak için
// LCD module connections
sbit LCD_RS at RB4_bit;
sbit LCD_EN at RB5_bit;
sbit LCD_D4 at RB0_bit;
sbit LCD_D5 at RB1_bit;
sbit LCD_D6 at RB2_bit;
sbit LCD_D7 at RB3_bit;
sbit LCD_RS_Direction at TRISB4_bit;
sbit LCD_EN_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB0_bit;
sbit LCD_D5_Direction at TRISB1_bit;
sbit LCD_D6_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB3_bit;
init(){
 ADCON1=0X4E;// ADFM=0(LEFT JUSTIFIED),ADCS2=1,
//PCFG3:PCFG0=1110 AN0 ANALOG  DÝÐERLERÝ SAYISAL
 ADCON0=0X45;//ADCS1=0,ADCS1=1,16 tOSC SEÇÝLDÝ.,CHS2:CHS0=0 KANAL aN0 SEÇÝLDÝ
 trisb=0;
 portb=0;
 Lcd_Init();                        // Initialize LCD
 Lcd_Cmd(_LCD_CLEAR);               // Clear display
 Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
 PWM1_Init(10000);    //10 Khz
 PWM1_Set_Duty(0);  // Baþlangýçta motor dönmeyecek
 PWM1_Start();
}
void main() {
 init();
 Delay_ms(1000);
 Lcd_Cmd(_LCD_CLEAR);
 while(1){
  adc_val= ADC_Read(0); // A portunun 0 numaralý pininden analog deðer okunuyor...
  carpan=5000.0/1023.0;// bir bite karþýlýk gelen gerilim deðeri
  adc_degeri=adc_val*carpan;   //adc den okunan mv deðerini hesaplýyorum...
  FloatToStr(adc_degeri, dc_val);//float deðiþkenin stringe çevrilmesi
  strcat(dc_val," mV"); // strcat komutu ile iki string birleþtiriliyor.
  Lcd_Out(1,1,"Olculen Deger:");// LCD nin 1 satýr1. sütunundan itibaren yazdýr.
  Lcd_Out(2,1,dc_val);// LCD nin 1 satýr 1. sütunundanitibaren yazdýr.
  Delay_ms(1000);
  pwm_deger=255*(adc_degeri/5000);
  PWM1_Set_Duty(pwm_deger);
  Lcd_Cmd(_LCD_CLEAR);
  Lcd_Out(1,1,"PWM %:");// LCD nin 1 satýr 1. sütunundan itibaren yazdýr.
  pwm_deger=100*(pwm_deger/255);
  FloatToStr(pwm_deger, pwm_val);// //float deðiþkenin stringe çevrilmesi
  Lcd_Out(2,1,pwm_val);// LCD nin 1 satýr 1. sütunundan itibaren yazdýr.
  Delay_ms(1000);
  Lcd_Cmd(_LCD_CLEAR);
 }
}
