#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama37.c"
char girilen[]="0000";
int i=0;
char tus;
char sifre[]="1234";
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
memset(girilen,0,4);
 TRISC.F0=0;
TRISC.F1=0;
TRISC.F2=0;
TRISC.F3=0;
TRISD.F0=1;
TRISD.F1=1;
TRISD.F2=1;
 trisb=0;
 portb=0;
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 Lcd_Out(1,1,"Merhaba");
}
void main() {
 init();
 Delay_ms(1000);
 Lcd_Cmd(_LCD_CLEAR);
 while(1){

 PORTC.F0=1;
if (PORTD.F0==1){
 tus='3';
girilen[i]=tus;
 i=i+1;
}else if(PORTD.F1==1){
tus='2';
girilen[i]=tus;
i=i+1;
}
else if(PORTD.F2==1){
tus='1';
girilen[i]=tus;
i=i+1;
}
PORTC.F0=0;
PORTC.F1=1;
if (PORTD.F0==1){
 tus='6';
girilen[i]=tus;
 i=i+1;
}else if(PORTD.F1==1){
tus='5';
girilen[i]=tus;
i=i+1;}
else if(PORTD.F2==1){
tus='4';
girilen[i]=tus;
i=i+1;}
PORTC.F1=0;
PORTC.F2=1;
if (PORTD.F0==1){
 tus='9';
girilen[i]=tus;
 i=i+1;
}else if(PORTD.F1==1){
tus='8';
girilen[i]=tus;
i=i+1;
}
else if(PORTD.F2==1){
tus='7';
girilen[i]=tus;
i=i+1;}
PORTC.F3=1;
PORTC.F2=0;
if (PORTD.F0==1){
 tus='0';
girilen[i]=tus;
 i=i+1;
}else if(PORTD.F1==1){
tus='0';
girilen[i]=tus;
i=i+1;}
else if(PORTD.F2==1){
tus='0';
girilen[i]=tus;
i=i+1;}

Lcd_Out(1,1,"Kod Giriniz:");
Lcd_Out(2,1,girilen);
Delay_ms(1000);
if (i==4){
 i=0;
 Lcd_Cmd(_LCD_CLEAR);
 if(strcmp(girilen,sifre)==0){
 Lcd_Out(2,1,"Sifre Dogru") ;
 }
 else{
 Lcd_Out(2,1,"Sifre Yanlis");
 Lcd_Out(1,1,girilen);
 }
 memset(girilen,0,4);
 Delay_ms(1000);
 Lcd_Cmd(_LCD_CLEAR);
}}}
