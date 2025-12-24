void main() {
TRISD=0XFF;
TRISC.F0=1;
TRISC.F1=1;
PWM1_Init(10000);  //10 kHZ
PWM1_Set_Duty(0);  // Duty Cycle=0
PWM1_Start();
while(1){
if(PORTD.F0==1){
PWM1_Set_Duty(64);  //%25
}
else if(PORTD.F1==1){
PWM1_Set_Duty(127); //%50
}else if(PORTC.F1==1){
   PWM1_Set_Duty(192);  //%75
}
else if(PORTC.F0==1){
   PWM1_Set_Duty(255); //%100
}}}
