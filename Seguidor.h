/* 
 * File:   Seguidor.h
 * Author: rapha
 *
 * Created on June 11, 2021, 8:03 PM
 */
#include"geral.h"
#include"PWM.h"
#include"bluetooth.h"
#include"Timer0.h"
#define VELOCIDADE_MAXIMA 2

int PID_int = 0; // vari�vel auxiliar que guarda a parte inteira do PID
int porcVelo = 3; //determina��o da porcentagem da velocidade
double sensor[7];
double leitura[7];
double posin = 0;
double pos = 0;
double setpoint = 3.0; //Definindo a refer�ncia como sendo o sensor 3, intermedi�rio
double erro = 0;
double P = 0;
double I = 0;
double D = 0;
double PID = 0;
double kp = 0; //constante proporcional do PID
double ki = 0; //constante integral do PID
double kd = 0; // constante derivativa do PID
double dt = 0.0;
double de = 0.0;
double tf = 0.0;
double erroi = 0.0;

void configDA()//convers�o dos dados anal�gicos em digitais
{
    int i;
    for (i =0; i < 7; i++) //varredura e convers�o A/D dos valores lidos
    {
        sensor[i] = getAD_AN(i);
        if (sensor[i] > 850)// valores maiores que 850 s�o provenientes de leituras que se aproximam do preto
        {
            leitura[i] = 1; //sensor[i] enxerga a linha  
        } else {
            leitura[i] = 0; //sensor[i] n�o enxerga a linha
        }
    }
}
// determina��o da posi��o em rela��o ao setpoint
double posicao() {
    int i;
    double pos = 0, local, total = 0;
    for (i = 1; i < 6; i++) {
        if (leitura[i] == 1) {
            pos += 1;
            total += 1;
        }
    }
    if (total != 0) {
        local = pos / total;
        return local;
    } else {
        return posin;
    }
}
//configura��o dos lados do motores, direcionado-o para frente
void lados(char lado, int porcVelo) {
    ENA = 1;
    ENB = 1;

    //� preciso verificar a disposi��o dos PWM e, assim, inverter o lado dos motores (direito e esquerdo), bem como a polariza��o dos motores e, portanto, invers�o do PWM dentro de cada if
    if (lado == 'e') {
        setDutyPWM0(porcVelo); //PWMA
        setDutyPWM6(0); //PWMB
    }
    if (lado == 'd') {
        setDutyPWM2(porcVelo); //PWMB
        setDutyPWM4(0);//PWMC
    }
}
//movimento dos motores conforme posi��o, corrigido ou n�o pelo PID
void moverMotor(double PID)// PID precisa ser double, contudo, a fun��o velocidade setDutyPWM tem par�metro inteiro
{
    if (PID == 0) {
        lados('e', porcVelo);
        lados('d', porcVelo);
    } else {
        PID_int = PID / VELOCIDADE_MAXIMA;
        lados('e', (porcVelo + PID_int)); //o PID calcula uma corre��o baseada no erro, a resposta � na velocidade do motor, por�m, utiliza-se a porcentagem, assim, corrige-se PID/VELOCIDADE
        lados('d', (porcVelo - PID_int));
    }

}
//fun��o principal
void setPID() {

    configDA(); //Fun��o para leitura digital dos sensores     

    pos = posicao(); //Definindo a posi��o do Rob�

    posin = pos; //Posi��o atual do rob�,c�culo do erro

    erro = setpoint - pos; //C�lculo do erro, infinit�simo do erro, pequena varia��o

    de = erro - erroi; // Infinit�simo do erro, pequena varia��o 

    erroi = erro; //erroi recebe o erro atual para fazer o "de" depois

    dt = (millis - tf) / 1000.0; //Fun��o millis corresponde ao tempo que oprograma ta rodando, dt � o inifit�simo do tempo, PRECISA CONFIGURAR CONTADOR

    tf = millis; //Mesmo conceito do erroi //CONFIGURAR CONTADOR

    P = kp*erro; //Controle Proporcional

    I = I + ki * erro*dt; //Controle Integral

    D = kd * de / dt; //Controle Derivativo

    PID = P + I + D; //PID COMPLETO

    moverMotor(PID); //APLICANDO O PID

}


