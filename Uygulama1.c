

void main() {

TRISB=0x00; //B portunun b�t�n pinleri ��k�� olarak ayarland�.

PORTB=0X00; //B portunun b�t�n pinlerini 0 volt'a �ektim.

while(1){

 PORTB=0Xff;
 Delay_ms(1000);
 
 PORTB=0X00;
 Delay_ms(1000);
 
}


}

