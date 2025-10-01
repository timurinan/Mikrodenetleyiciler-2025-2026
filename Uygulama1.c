

void main() {

TRISB=0x00; //B portunun bütün pinleri çýkýþ olarak ayarlandý.

PORTB=0X00; //B portunun bütün pinlerini 0 volt'a çektim.

while(1){

 PORTB=0Xff;
 Delay_ms(1000);
 
 PORTB=0X00;
 Delay_ms(1000);
 
}


}

