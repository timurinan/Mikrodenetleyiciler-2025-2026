#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama35.c"
void main(){
TRISC.F0=0;
TRISC.F1=0;
TRISC.F2=0;
TRISC.F3=0;
TRISD.F0=1;
TRISD.F1=1;
TRISD.F2=1;
TRISB=0;
while(1){

PORTC.F0=1;
if (PORTD.F0==1){
 PORTB=3;
}else if(PORTD.F1==1){
PORTB=2;}
else if(PORTD.F2==1){
PORTB=1;}

PORTC.F0=0;
PORTC.F1=1;

if (PORTD.F0==1){
 PORTB=6;
}else if(PORTD.F1==1){
PORTB=5;
}
else if(PORTD.F2==1){
PORTB=4;
}

PORTC.F1=0;
PORTC.F2=1;

if (PORTD.F0==1){
 PORTB=9;
}else if(PORTD.F1==1){
PORTB=8;
}
else if(PORTD.F2==1){
PORTB=7;
}

PORTC.F3=1;
PORTC.F2=0;
if (PORTD.F0==1){
 PORTB=0;
}else if(PORTD.F1==1){
PORTB=0;
}
else if(PORTD.F2==1){
PORTB=0;
}}}
