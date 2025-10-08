#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama1.c"

long jjjj absolute 0x40;

char x absolute 0x24;

float y absolute 0x30;

void main() {
y=-0.15625;
x=30;
jjjj=475544258;
TRISB=0x00;

PORTB=0X00;

while(1){

 PORTB=0Xff;
 Delay_ms(1000);

 PORTB=0X00;
 Delay_ms(1000);

}


}
