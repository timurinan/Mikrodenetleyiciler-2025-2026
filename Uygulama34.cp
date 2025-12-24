#line 1 "C:/Users/PC/Desktop/Ders Ornekleri 25-26/Uygulama34.c"
char uart_rd;

void main() {


 UART1_Init(9600);
 Delay_ms(100);

 UART1_Write_Text("Basla");
 UART1_Write(10);
 UART1_Write(13);

 while (1) {
 if (UART1_Data_Ready()) {
 uart_rd = UART1_Read();
 uart_rd=uart_rd-32;
 UART1_Write(uart_rd);
 }
 }
}
