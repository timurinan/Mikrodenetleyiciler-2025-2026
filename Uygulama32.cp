#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama32.c"
void main() {
TRISD=0XFF;
TRISC.F0=1;
TRISC.F1=1;
PWM1_Init(10000);
PWM1_Set_Duty(0);
PWM1_Start();
while(1){
if(PORTD.F0==1){
PWM1_Set_Duty(64);
}
else if(PORTD.F1==1){
PWM1_Set_Duty(127);
}else if(PORTC.F1==1){
 PWM1_Set_Duty(192);
}
else if(PORTC.F0==1){
 PWM1_Set_Duty(255);
}}}
