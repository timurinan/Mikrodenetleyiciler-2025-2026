char uart_rd;

void main() {


  UART1_Init(9600);               // Initialize UART module at 9600 bps
  Delay_ms(100);                  // Wait for UART module to stabilize

  UART1_Write_Text("Basla");
 UART1_Write(10);//line feed ascii
 UART1_Write(13);//Carriage Return

  while (1) {                     // Endless loop
   if (UART1_Data_Ready()) {     // If data is received,
      uart_rd = UART1_Read();     // read the received data,
     uart_rd=uart_rd-32;         // okunan karakterin bir sonrasýndaki                                  //karakteri geri gönderir.
    UART1_Write(uart_rd);       // and send data via USART
    }
  }
}
