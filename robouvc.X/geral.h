/* 
 * File:   geral.h
 * Author: Hiro
 *
 * Created on 19 de Maio de 2021, 19:36
 */

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

void configAD() {

    ADCON1bits.VCFG0 = 0;
    ADCON1bits.VCFG1 = 0;

    ADCON0bits.ACMOD0 = 0;
    ADCON0bits.ACMOD1 = 1;

    ADCHS = 0b00000000;

    ADCON2bits.ADFM = 1;

    ADCON0bits.ACONV = 0;
    ADCON0bits.ACSCH = 1;

    ADCON2bits.ACQT = 0b0110;
    ADCON2bits.ADCS = 0b101;

    ADCON0bits.ADON = 1;
    ADCON3 = 0b00000000;
}

void configADtest() {

    ADCON1bits.VCFG0 = 0;
    ADCON1bits.VCFG1 = 0;

    //ADCHS  = 0b00000000;

    ADCON0bits.ACONV = 0;
    ADCON0bits.ACSCH = 0;

    ADCON0bits.ACMOD = 0b00;

    ADCON2bits.ADFM = 1;

    ADCON2bits.ACQT = 0b0110;
    ADCON2bits.ADCS = 0b101;


    //ADCON0 = 0b00110111;
    //ADCON1 = 0b00010000;
    //ADCON2 = 0b00000101;
    ADCON3 = 0b00000000;
}

int bitExtract(int numero, int k, int p) {
    return (((1 << k) - 1) & (numero >> p));
}

const char* valorConvUART(int valor) {// só converte até 9.99

    int centena = valor / 100;
    int dezena = (valor / 10) % 10;
    int unidade = (valor % 100) % 10;

    char string[5] = {'\0'};

    string[0] = centena + '0';
    string[1] = '.';
    string[2] = dezena + '0';
    string[3] = unidade + '0';

    return string;
}

int vdig_AN;
float vanal_AN;

float readAD_AN() {
    
    vdig_AN = ADRESH;
    vdig_AN = vdig_AN << 8;
    vdig_AN += ADRESL;

    vanal_AN = 4.88 * vdig_AN * 0.1;
    
    return vanal_AN;
}

int getAD_AN(int porta) {
    
    ADCON0bits.ACMOD = bitExtract(porta, 2, 0);
    
    ADCHSbits.GASEL0 = bitExtract(porta, 1, 2);
    ADCHSbits.GBSEL0 = bitExtract(porta, 1, 2);
    ADCHSbits.GCSEL0 = bitExtract(porta, 1, 2);
    ADCHSbits.GDSEL0 = bitExtract(porta, 1, 2);
    
    ADCON0bits.ADON = 1;
    ADCON0bits.GODONE = 1;
    while (ADCON0bits.GODONE);

    float ANread = readAD_AN();
    ADCON0bits.ADON = 0;

    return (int) ANread;
    
    /*PINO      ACMOD       SELbits
     * 0 (000)  0 (00)      0 00
     * 1 (001)  1 (01)      0 00
     * 2 (010)  2 (10)      0 00
     * 3 (011)  3 (11)      0 00
     * 4 (100)  0 (00)      1 01
     * 5 (101)  1 (01)      1 01
     * 6 (110)  2 (10)      1 01
     * 7 (111)  3 (11)      1 01
    */     
}


