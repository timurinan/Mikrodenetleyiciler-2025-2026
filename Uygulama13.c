
void interrupt(){

 PORTB=0B11111110;
 Delay_ms(500);
 PORTB=0B00000000;
 Delay_ms(500);
 INTCON.INTF=~INTCON.INTF;

}


void main() {

TRISB=0B000000001;
INTCON.GIE=1;
INTCON.PEIE=1;
INTCON.INTE=1;
OPTION_REG.INTEDG=1;

while(1){

}


}