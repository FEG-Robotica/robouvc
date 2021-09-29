/*
 * File:   main.c
 * Author: Hiro
 *
 * Created on 18 de Maio de 2021, 19:14
 */


#include <xc.h>
#include <pic18f4431.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "defines.h"
#include "PWM.h"
#include "bluetooth.h"
#include "ADC.h"
#include "geral.h"
#include "Timer0.h"

void __interrupt() ISR(void) {
    
    if(TMR0IF){
        TMR0L = 0b01100011;
        millis++;
        TMR0IF = 0;
    }
    
    if (PIR1bits.RCIF) {
        
        if (RCSTAbits.FERR || RCSTAbits.OERR) {
            RCSTAbits.OERR = 1;
            RCSTAbits.CREN = 0;
            RCSTAbits.CREN = 1;
        }
        
        if (UARTReadChar() == '0') {
            desligaTimer0();
            UARTSendString("Timer0 off", MAX_LENGTH_UART);
        }
        
        if (UARTReadChar() == '1') {
            ligaTimer0();
            UARTSendString("Timer0 on", MAX_LENGTH_UART);
        }
        
        if (UARTReadChar() == 'f') {
            setEstrategia("lampadasON");
            UARTSendString("Alterando Lampadas", MAX_LENGTH_UART);
        }
        
        if (UARTReadChar() == 'a') {
            setEstrategia("lampada1");
            UARTSendString("Alterando 1", MAX_LENGTH_UART);
        }  
        
        if (UARTReadChar() == 'b') {
            setEstrategia("lampada2");
            UARTSendString("Alterando 2", MAX_LENGTH_UART);
        }  
        
        if (UARTReadChar() == 'c') {
            setEstrategia("lampada3");
            UARTSendString("Alterando 3", MAX_LENGTH_UART);
        }
        
        if (UARTReadChar() == 'd') {
            setEstrategia("lampada4");
            UARTSendString("Alterando 4", MAX_LENGTH_UART);
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
    PORTC = 0b11111111;
    PORTD = 0b00000000;
    PORTE = 0b00000000;
    
    INTCONbits.GIE = 1;
    INTCONbits.PEIE = 1;
    INTCONbits.TMR0IE = 1;
    
    configBits();
    configUSART();
    configPWM();
    configAD();
    
    initTimer0(99);
    
    int AN0,AN1,AN2,AN3,AN4,AN5,AN6;
    
    while(1){
        
        if(millis > 1000){
            RC0 = ~RC0;
            millis = 0;
        }
        
        /*if (myStrncmp(comando, "lampadasON")) {
            lampadasEstado(4);
            comando = "temp";
        }
        
        if (myStrncmp(comando, "lampada1")) {
            lampadasEstado(0);
            comando = "temp";
        }
        
        if (myStrncmp(comando, "lampada2")) {
            lampadasEstado(1);
            comando = "temp";
        }
        
        if (myStrncmp(comando, "lampada3")) {
            lampadasEstado(2);
            comando = "temp";
        }
        
        if (myStrncmp(comando, "lampada4")) {
            lampadasEstado(3);
            comando = "temp";
        }
         * */
    }
    
    return;
}
