/* 
 * File:   bluetooth.h
 * Author: Hiro
 *
 * Created on 19 de Maio de 2021, 20:07
 */


void configUSART() {
    SPBRG = 0x81; /* seta baud rate = 31 (valor para simula??o no proteus(1F)
                             * erro p/ BR = 31: 1,73%
                             * valor real = 129 (0x81)
                             * c?lculo do baud rate: 
                             *
                             * 
                             * para BRGH = 1(high speed)
                             * X = ((Fosc / Desired Baud Rate)/16) - 1
                             * = ((20000000 / 9600)/16) - 1
                             * = 129
                             */

    TXSTAbits.BRGH = 1; //liga o high speed do baud rate

    TXSTAbits.SYNC = 0; //liga modo assincrono
    TXSTAbits.TX9 = 0; //comunicação 8 bits
    TXSTAbits.TXEN = 1;
    PIE1bits.TXIE = 0;

    RCSTAbits.SPEN = 1; //habilita porta serial
    RCSTAbits.RX9 = 0;
    RCSTAbits.CREN = 1; //habilita recep??o continua
    TRISCbits.TRISC6 = 0;
    TRISCbits.TRISC7 = 1;

    PIR1bits.RCIF = 0;
    PIE1bits.RCIE = 1;
}

char UARTReadChar() {
    char ler = RCREG;      
    return ler;
}

void UARTWriteTest() {
    while (!TRMT);
}

void UARTSendChar(char c) {
    TXREG = c;
    UARTWriteTest();
}

void UARTSendString(char* str, const int max_length) {
    int i = 0;
    //char ler = RCREG;// armazena e limpa o RCREG || força saída da interrupção 
    for (i = 0; i < max_length; i++) {

        if (str[i] == '\0') break;
        UARTSendChar(str[i]);
        UARTWriteTest();

    }
}
