/* 
 * File:   ADC.h
 * Author: Hiro
 *
 * Created on 5 de Junho de 2021, 17:23
 */

#ifndef ADC_H
#define ADC_H

void configAD() {

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

const char* valorConvUARTbit(int valor) {
    
    int milhar = valor/1000;
    int centena = (valor/100) % 10;
    int dezena = (valor/10) % 10;
    int unidade = (valor % 100) % 10;
    
    char string[5] = {'\0'};
    
    string[0] = milhar + '0';
    string[1] = centena + '0';
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

int readAD_ANbit(){
    
    vdig_AN = ADRESH;
    vdig_AN = vdig_AN << 8;
    vdig_AN += ADRESL;
    
    return vdig_AN;
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

int getAD_ANbit(int porta) {
    
    ADCON0bits.ACMOD = bitExtract(porta, 2, 0);
    
    ADCHSbits.GASEL0 = bitExtract(porta, 1, 2);
    ADCHSbits.GBSEL0 = bitExtract(porta, 1, 2);
    ADCHSbits.GCSEL0 = bitExtract(porta, 1, 2);
    ADCHSbits.GDSEL0 = bitExtract(porta, 1, 2);
    
    ADCON0bits.ADON = 1;
    ADCON0bits.GODONE = 1;
    while (ADCON0bits.GODONE);

    int ANread = readAD_ANbit();
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

#endif