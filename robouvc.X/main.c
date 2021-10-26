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
#include "ADC.h"
#include "PWM.h"
#include "bluetooth.h"
#include "defines.h"
#include "geral.h"
#include "Timer0.h"
#include "Seguidor.h"

char recebido = '\r';

void __interrupt() ISR(void) {

    if (TMR0IF) {
        TMR0L = 99; //99 0b01100011;
        millis++;
        TMR0IF = 0;
    }

    if (PIR1bits.RCIF) {

        if (RCSTAbits.FERR || RCSTAbits.OERR) {
            RCSTAbits.OERR = 1;
            RCSTAbits.CREN = 0;
            RCSTAbits.CREN = 1;
        }
        
        if (RCREG == '1') {
            ligaTimer0();
            UARTSendString("Timer0 on", MAX_LENGTH_UART);
        }
        
        if (RCREG == 'a') {
            setEstrategia("testeMotores");
            UARTSendString(comando, MAX_LENGTH_UART);
        }
        
        if (RCREG == 'b') {
            setEstrategia("testeLampadas");
            UARTSendString(comando, MAX_LENGTH_UART);
        }
        
        if (RCREG == 'c') {
            setEstrategia("AD");
            UARTSendString(comando, MAX_LENGTH_UART);
        }
        
        if (RCREG == 'd') {
            for (millis = 0; millis < 60000; millis++) {
                setPID();
                if (millis == 1000) {
                    UARTSendString("PID", MAX_LENGTH_UART);
                }
            }
            UARTSendString(comando, MAX_LENGTH_UART);

        }
        if (RCREG == 'f') {
            setEstrategia("testeADbit");
            UARTSendString(comando, MAX_LENGTH_UART);
        }
        
        if (RCREG == 'p') {
            setEstrategia("idle");
            UARTSendString("IDLE", MAX_LENGTH_UART);
            setDutyPWM0(0);
            setDutyPWM2(0);
            setDutyPWM4(0);
            setDutyPWM6(0);
            
            RC0 = 0;
            RC1 = 0;
            RC2 = 0;
            RC3 = 0;
            UARTSendString(comando, MAX_LENGTH_UART);
        }
        PIR1bits.RCIF = 0;
    }
}

void main(void) {

    /*seta todas as portas do PORTA como an
     * e as portas RE0, RE1 e RE2 como an
     */
    __delay_ms(20);

    ANSEL0 = 0b11111111;
    ANSEL1 = 0b00000001;

    TRISA = 0b11111111; //seta todas as portas do PORTA como an input
    TRISB = 0b00000000;
    TRISC = 0b10000000;
    TRISD = 0b00011100;
    TRISE = 0b00000111; //seta as portas 0,1,2 como an input

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
    
    comando = "\0";

    int AN0, AN1, AN2, AN3, AN4, AN5, AN6;

    while (1) {
        
        if (myStrncmp(comando, "idle")) {
            UARTSendChar(UARTReadChar());
        }

        if (myStrncmp(comando, "testeMotores")) {
            testeMotores();
        }
        
        if (myStrncmp(comando, "testeLampadas")) {
            testeLampadas();
        }
        
        if (myStrncmp(comando, "AD")) {
            UARTSendChar(UARTReadChar());
            testeAD();
        }
        
        if (myStrncmp(comando, "testeADbit")) {
            UARTSendChar(UARTReadChar());
            UARTSendString(comando, MAX_LENGTH_UART);
            testeADbit();
        }
        
        
    }
    return;
}

