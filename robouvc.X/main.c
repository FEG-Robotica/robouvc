/*
 * File:   main.c
 * Author: Hiro
 *
 * Created on 18 de Maio de 2021, 19:14
 */


#include <xc.h>
#include <pic18f4431.h>
#include "PWM.h"
#include "bluetooth.h"
#include "geral.h"

#define _XTAL_FREQ 20000000
#define MAX_LENGTH_UART 16

#define SL7 PORTAbits.RA0
#define SL6 PORTAbits.RA1
#define SL5 PORTAbits.RA2
#define SL4 PORTAbits.RA3
#define SL3 PORTAbits.RA4
#define SL2 PORTAbits.RA5
#define SL1 PORTEbits.RE0

void __interrupt() ISR(void) {
    
    
    if (PIR1bits.RCIF) {
        
        
        if (RCSTAbits.FERR || RCSTAbits.OERR) {
            RCSTAbits.OERR = 1;
            RCSTAbits.CREN = 0;
            RCSTAbits.CREN = 1;
        }
        
        
        if (UARTReadChar() == 'f') {
            UARTSendString("frente", MAX_LENGTH_UART);
        }   

        PIR1bits.RCIF = 0;
    }
}


void main(void) {
    
    /*seta todas as portas do PORTA como an
     * e as portas RE0, RE1 e RE2 como an
     */
    __delay_ms(100);
    
    ANSEL0 = 0b11111111;
    ANSEL1 = 0b00000001;
    
    TRISA = 0b11111111;//seta todas as portas do PORTA como an input
    TRISB = 0b00000000;
    TRISC = 0b10000000;
    TRISD = 0b00011100;
    TRISE = 0b00000111;//seta as portas 0,1,2 como an input
    
    PORTB = 0b00000000;
    PORTC = 0b00000000;
    PORTD = 0b00000000;
    PORTE = 0b00000000;
    
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    
    configBits();
    configUSART();
    configPWM();
    configADtest();
    
    int AN0,AN1,AN2,AN3,AN4,AN5,AN6;
    
    while(1){
        
        AN1 = getAD_AN(1);
        char* string = valorConvUART(AN1);
        UARTSendString(string ,MAX_LENGTH_UART);
        UARTSendChar('\r');
        __delay_ms(300);
        //AN1 = getAD_AN(1);
        //UARTSendChar(AN1 + 65);
        //__delay_ms(300);
    }
    
    return;
}
