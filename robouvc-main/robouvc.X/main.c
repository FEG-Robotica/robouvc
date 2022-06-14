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
#include "bluetooth.h"
#include "defines.h"
#include "ADC.h"
#include "PWM.h"
#include "geral.h"
#include "Timer0.h"
#include "Seguidor.h"


char recebidoChar;

void __interrupt() ISR(void) {

    if (PIR1bits.RCIF) { //FLAG DE SEGURANÇA, VERIFICAR SE FLAG FOI SETADA E A INTERRUPÇÃO OCORREU PELA UART

        if (RCSTAbits.FERR || RCSTAbits.OERR) {
            RCSTAbits.OERR = 1;
            RCSTAbits.CREN = 0;
            RCSTAbits.CREN = 1;
        }

        recebidoChar = UARTReadChar();

        if (RCREG == '1') {
            ligaTimer0();
            UARTSendString("Timer0 on", MAX_LENGTH_UART);
        }

        if (RCREG == 'a') {
            setComando("testeMotores");
            UARTSendString(comando, MAX_LENGTH_UART);
        }

        if (RCREG == 'b') {
            setComando("testeLampadas");
            UARTSendString(comando, MAX_LENGTH_UART);
        }

        if (RCREG == 'c') {
            setComando("AD");
            UARTSendString(comando, MAX_LENGTH_UART);
        }

        if (RCREG == 'd') {
            setComando("PID");
            UARTSendString(comando, MAX_LENGTH_UART);
        }
        if (RCREG == 'e') {
            setComando("LeituraSensores");
            UARTSendString(comando, MAX_LENGTH_UART);
        }

        if (RCREG == 'f') {
            setComando("testeADbit");
            UARTSendString(comando, MAX_LENGTH_UART);
        }
        if (RCREG == 'g') {
            setComando("MoverPraFrente");
            UARTSendString(comando, MAX_LENGTH_UART);
        }
        if (RCREG == 'h') {
            setComando("RotinaFuncionamento");
            UARTSendString(comando, MAX_LENGTH_UART);
        }

        if (RCREG == 'p') {
            setComando("idle");
            UARTSendString("IDLE", MAX_LENGTH_UART);
            setDutyPWM0(0);
            setDutyPWM2(0);
            setDutyPWM4(0);
            setDutyPWM6(0);

            RC0 = 1;
            RC1 = 1;
            RC2 = 1;
            RC3 = 1;
            UARTSendString(comando, MAX_LENGTH_UART);
        }
        PIR1bits.RCIF = 0;
    }

    if (TMR0IF) {
        TMR0L = 99; //99 0b01100011;
        millis++;
        TMR0IF = 0;
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
        if (getAD_AN(6) >= 350) {
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
                testeADbit();
            }

            if (myStrncmp(comando, "PID")) {
                setPID();
                PrintSensores();
            }
            if (myStrncmp(comando, "LeituraSensores")) {
                configDA();
                PrintSensores();
            }
            if (myStrncmp(comando, "MoverPraFrente")) {
                moverMotor(0);

            }

            if (myStrncmp(comando, "RotinaFuncionamento")) {
                setPID();
                PrintSensores();
                RC0 = 0;
                RC1 = 0;
                RC2 = 0;
                RC3 = 0;

                if (millis > 120000) {

                    UARTSendString("IDLE", MAX_LENGTH_UART);
                    comando = "idle";
                    setDutyPWM0(0);
                    setDutyPWM2(0);
                    setDutyPWM4(0);
                    setDutyPWM6(0);

                    RC0 = 1;
                    RC1 = 1;
                    RC2 = 1;
                    RC3 = 1;
                }
            }

        } else {
            setDutyPWM0(0);
            setDutyPWM2(0);
            setDutyPWM4(0);
            setDutyPWM6(0);

            RC0 = 1;
            RC1 = 1;
            RC2 = 1;
            RC3 = 1;
            UARTSendString("RECARREGAR BATERIA", MAX_LENGTH_UART);
        }
    }
    return;
}

