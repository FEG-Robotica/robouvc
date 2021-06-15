/* 
 * File:   geral.h
 * Author: Hiro
 *
 * Created on 19 de Maio de 2021, 19:36
 */

#include "defines.h"

void configBits() {
    // CONFIG1H
#pragma config OSC = HS         // Oscillator Selection bits (HS oscillator)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor enabled)
#pragma config IESO = ON        // Internal External Oscillator Switchover bit (Internal External Switchover mode enabled)

    // CONFIG2L
#pragma config PWRTEN = OFF     // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bits (Brown-out Reset disabled)
    // BORV = No Setting

    // CONFIG2H
#pragma config WDTEN = OFF      // Watchdog Timer Enable bit (WDT disabled (control is placed on the SWDTEN bit))
#pragma config WDPS = 32768     // Watchdog Timer Postscale Select bits (1:32768)
#pragma config WINEN = OFF      // Watchdog Timer Window Enable bit (WDT window disabled)

    // CONFIG3L
#pragma config PWMPIN = OFF     // PWM output pins Reset state control (PWM outputs disabled upon Reset (default))
#pragma config LPOL = HIGH      // Low-Side Transistors Polarity (PWM0, 2, 4 and 6 are active-high)
#pragma config HPOL = HIGH      // High-Side Transistors Polarity (PWM1, 3, 5 and 7 are active-high)
#pragma config T1OSCMX = ON     // Timer1 Oscillator MUX (Low-power Timer1 operation when microcontroller is in Sleep mode)

    // CONFIG3H
#pragma config MCLRE = ON       // MCLR Pin Enable bit (Enabled)

    // CONFIG4L
#pragma config STVREN = ON      // Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
#pragma config LVP = ON         // Low-Voltage ICSP Enable bit (Low-voltage ICSP enabled)

    // CONFIG5L
#pragma config CP0 = OFF        // Code Protection bit (Block 0 (000200-000FFFh) not code-protected)
#pragma config CP1 = OFF        // Code Protection bit (Block 1 (001000-001FFF) not code-protected)
#pragma config CP2 = OFF        // Code Protection bit (Block 2 (002000-002FFFh) not code-protected)
#pragma config CP3 = OFF        // Code Protection bit (Block 3 (003000-003FFFh) not code-protected)

    // CONFIG5H
#pragma config CPB = OFF        // Boot Block Code Protection bit (Boot Block (000000-0001FFh) not code-protected)
#pragma config CPD = OFF        // Data EEPROM Code Protection bit (Data EEPROM not code-protected)

    // CONFIG6L
#pragma config WRT0 = OFF       // Write Protection bit (Block 0 (000200-000FFFh) not write-protected)
#pragma config WRT1 = OFF       // Write Protection bit (Block 1 (001000-001FFF) not write-protected)
#pragma config WRT2 = OFF       // Write Protection bit (Block 2 (002000-002FFFh) not write-protected)
#pragma config WRT3 = OFF       // Write Protection bit (Block 3 (003000-003FFFh) not write-protected)

    // CONFIG6H
#pragma config WRTC = OFF       // Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) not write-protected)
#pragma config WRTB = OFF       // Boot Block Write Protection bit (Boot Block (000000-0001FFh) not write-protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM not write-protected)

    // CONFIG7L
#pragma config EBTR0 = OFF      // Table Read Protection bit (Block 0 (000200-000FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR1 = OFF      // Table Read Protection bit (Block 1 (001000-001FFF) not protected from table reads executed in other blocks)
#pragma config EBTR2 = OFF      // Table Read Protection bit (Block 2 (002000-002FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR3 = OFF      // Table Read Protection bit (Block 3 (003000-003FFFh) not protected from table reads executed in other blocks)

    // CONFIG7H
#pragma config EBTRB = OFF      // Boot Block Table Read Protection bit (Boot Block (000000-0001FFh) not protected from table reads executed in other blocks)

}

int bitExtract(int numero, int k, int p) {
    return (((1 << k) - 1) & (numero >> p));
}

/*
 * ATENÇÃO - NÃO TESTAR OS MOTORES COM AS RODAS EM CONTATO COM O SOLO
 * ATENÇÃO - NÃO TESTAR OS MOTORES COM AS RODAS EM CONTATO COM O SOLO
 * ATENÇÃO - NÃO TESTAR OS MOTORES COM AS RODAS EM CONTATO COM O SOLO
 * ATENÇÃO - NÃO TESTAR OS MOTORES COM AS RODAS EM CONTATO COM O SOLO
 */
void testeMotores(){
    
    int i;
    ENA = 1;
    ENB = 1;
    
    //PWM A
    
    UARTSendString("PWMA Testando",MAX_LENGTH_UART);
    for(i = 0; i <= 100; i++){
        setDutyPWM0(i);
        __delay_ms(20);
    }
    UARTSendString("PWMA Teste Fim",MAX_LENGTH_UART);
    setDutyPWM0(0);
    
    //PWM D
    for(i = 0; i <= 100; i++){
        setDutyPWM6(i);
        __delay_ms(20);
    }
    setDutyPWM6(0);
    
    //PWM B
    for(i = 0; i <= 100; i++){
        setDutyPWM2(i);
        __delay_ms(20);
    }
    setDutyPWM2(0);
    
    //PWM C
    for(i = 0; i <= 100; i++){
        setDutyPWM2(i);
        __delay_ms(20);
    }
    setDutyPWM4(0);
    
    //PWM A e PWM B
    for(i = 0; i <= 100; i++){
        setDutyPWM0(i);
        setDutyPWM2(i);
        __delay_ms(20);
    }
    setDutyPWM0(0);
    setDutyPWM2(0);
    
    //PWM A e PWM C
    for(i = 0; i <= 100; i++){
        setDutyPWM0(i);
        setDutyPWM4(i);
        __delay_ms(20);
    }
    setDutyPWM0(0);
    setDutyPWM4(0);
    
    //PWM D e PWM B
    for(i = 0; i <= 100; i++){
        setDutyPWM6(i);
        setDutyPWM2(i);
        __delay_ms(20);
    }
    setDutyPWM6(0);
    setDutyPWM2(0);
    
    //PWM D e PWM C
    for(i = 0; i <= 100; i++){
        setDutyPWM6(i);
        setDutyPWM4(i);
        __delay_ms(20);
    }
    setDutyPWM6(0);
    setDutyPWM4(0);
}

/*
 *Lampadas conectadas em RC<0:3> 
 */
void testeLampadas(){
    int i;
    
    for(i = 0; i < 16; i++){
        RC0 = bitExtract(i, 1, 0);
        RC1 = bitExtract(i, 1, 1);
        RC2 = bitExtract(i, 1, 2);
        RC3 = bitExtract(i, 1, 3);
        __delay_ms(500);
    }
}

void testeAD(){
    UARTSendString("AN0: ",MAX_LENGTH_UART);
    UARTSendString(valorConvUART(getAD_AN(0)), MAX_LENGTH_UART);
    UARTSendString("\r",MAX_LENGTH_UART);
    
    UARTSendString("AN1: ",MAX_LENGTH_UART);
    UARTSendString(valorConvUART(getAD_AN(1)), MAX_LENGTH_UART);
    UARTSendString("\r",MAX_LENGTH_UART);
    
    UARTSendString("AN2: ",MAX_LENGTH_UART);
    UARTSendString(valorConvUART(getAD_AN(2)), MAX_LENGTH_UART);
    UARTSendString("\r",MAX_LENGTH_UART);
    
    UARTSendString("AN3: ",MAX_LENGTH_UART);
    UARTSendString(valorConvUART(getAD_AN(3)), MAX_LENGTH_UART);
    UARTSendString("\r",MAX_LENGTH_UART);
    
    UARTSendString("AN4: ",MAX_LENGTH_UART);
    UARTSendString(valorConvUART(getAD_AN(4)), MAX_LENGTH_UART);
    UARTSendString("\r",MAX_LENGTH_UART);
    
    UARTSendString("AN5: ",MAX_LENGTH_UART);
    UARTSendString(valorConvUART(getAD_AN(5)), MAX_LENGTH_UART);
    UARTSendString("\r",MAX_LENGTH_UART);
    
    UARTSendString("AN6: ",MAX_LENGTH_UART);
    UARTSendString(valorConvUART(getAD_AN(6)), MAX_LENGTH_UART);
    UARTSendString("\r",MAX_LENGTH_UART);
    
    UARTSendString("AN7: ",MAX_LENGTH_UART);
    UARTSendString(valorConvUART(getAD_AN(7)), MAX_LENGTH_UART);
    UARTSendString("\r",MAX_LENGTH_UART);
    UARTSendString("----------",MAX_LENGTH_UART);
    UARTSendString("\r",MAX_LENGTH_UART);
    
    __delay_ms(500);
}

