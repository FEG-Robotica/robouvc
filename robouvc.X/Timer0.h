/* 
 * File:   Timer0.h
 * Author: Hiro
 *
 * Created on 29 de Setembro de 2021, 15:08
 */

unsigned long millis = 0;

void initTimer0(int tempoInicial){ //TempoTotal = (256 - tempoInicial)*prescaler*CicloMaquina
                                   //CicloMaquina = 4/Fcristal
    //99 para 1 ms
    T0CON = 0b11010100;
    TMR0L = tempoInicial;
}

void desligaTimer0(){
    TMR0ON = 0;
}

void ligaTimer0(){
    TMR0ON = 1;
}

void resetaMillis(){
    millis = 0;
}

