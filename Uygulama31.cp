#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama31.c"
void main() {

PR2=99;

CCPR1L=0x32;

CCP1CON=0x0C;

TRISC.F2=0;
TRISC.F0=1;
TRISC.F1=1;

T2CON=0b00000100;
trisb=0;
trisd=0xff;

while(1){

if(PORTD.F0==1){
CCPR1L=0x19;

}
else if(PORTD.F1==1){
 CCPR1L=0x32;
}else if(PORTC.F1==1){
CCPR1L=0x4B;
}
else if(PORTC.F0==1){
 CCPR1L=0x64;
}}}
