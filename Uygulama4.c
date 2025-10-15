
int i;

void main() {
TRISB=0X00;

PORTB=1;
while(1){


for(i=0;i<=7;i++){

  Delay_ms(500);
  PORTB=PORTB<<1;
}
PORTB=1;
}

}