/*
 * File:   main.c
 * Author: Hiro
 *
 * Created on 18 de Maio de 2021, 19:14
 */


#include <xc.h>
#include <pic18f4431.h>
#include "PWM.h"

#define _XTAL_FREQ 20000000
#define VELOCIDADE_MAXIMA 100

#define SL7 PORTAbits.RA0
#define SL6 PORTAbits.RA1
#define SL5 PORTAbits.RA2
#define SL4 PORTAbits.RA3
#define SL3 PORTAbits.RA4
#define SL2 PORTAbits.RA5
#define SL1 PORTEbits.RE0


void main(void) {
    
    /*seta todas as portas do PORTA como an
     * e as portas RE0, RE1 e RE2 como an
     */
    ANSEL0 = 0b11111111;
    ANSEL1 = 0b00000001;
    
    TRISA = 0b11111111;//seta todas as portas do PORTA como an input
    TRISB = 0b00000000;
    TRISC = 0b00000000;
    TRISD = 0b00011100;
    TRISE = 0b00000111;//seta as portas 0,1,2 como an input
    
    PORTB = 0b00000000;
    PORTC = 0b00000000;
    PORTD = 0b00000000;
    PORTE = 0b00000000;
    
    configBits();
    configPWM();
    
    return;
}
