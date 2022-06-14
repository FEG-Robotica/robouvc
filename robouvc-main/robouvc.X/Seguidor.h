/* 
 * File:   Seguidor.h
 * Author: rapha
 *
 * Created on June 11, 2021, 8:03 PM
 */

#include "ADC.h"

/*#include"geral.h"
#include"PWM.h"
#include"bluetooth.h"
#include"Timer0.h"*/
#define VELOCIDADE_MAXIMA 6

int PID_int = 0; // variável auxiliar que guarda a parte inteira do PID
int porcVelo = 20; //determinação da porcentagem da velocidade,15
int i;
double sensor[5];
double leitura[5];
double posin = 0;
double pos = 0;
double setpoint = 3.0; //Definindo a referência como sendo o sensor 3, intermediário
double erro = 0;
double P = 0;
double I = 0;
double D = 0;
double PID = 0;
double kp = 5; //constante proporcional do PID
double ki = 0; //constante integral do PID
double kd = 0; // constante derivativa do PID
double dt = 0.0;
double de = 0.0;
double tf = 0.0;
double erroi = 0.0;

void configDA()//conversão dos dados analógicos em digitais
{
    int i;
    for (i = 1; i < 6; i++) //varredura e conversão A/D dos valores lidos
    {
        sensor[i] = getAD_ANbit(i); //getAD_AN(i)
        if (sensor[i] > 860)// valores menores que 940 são provenientes de leituras que se aproximam do branco
        {
            leitura[i] = 1; //sensor[i] enxerga a linha  
        } else {
            leitura[i] = 0; //sensor[i] não enxerga a linha
        }
    }
}
// determinação da posição em relação ao setpoint

double posicao() {
    int i;
    double pos = 0;
    double local = 0;
    double total = 0;

    for (i = 1; i < 6; i++) {
        if (leitura[i] == 1) {
            pos += i;
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
//configuração dos lados do motores, direcionado-o para frente

void lados(char lado, int porcVelo) {
    ENA = 1;
    ENB = 1;

    //É preciso verificar a disposição dos PWM e, assim, inverter o lado dos motores (direito e esquerdo), bem como a polarização dos motores e, portanto, inversão do PWM dentro de cada if
    if (lado == 'e') {
        setDutyPWM0(porcVelo); //PWMA
        setDutyPWM6(0); //PWMB
    }
    if (lado == 'd') {
        setDutyPWM2(porcVelo); //PWMB
        setDutyPWM4(0); //PWMC
    }
}
//movimento dos motores conforme posição, corrigido ou não pelo PID

void moverMotor(int PID)// PID precisa ser double, contudo, a função velocidade setDutyPWM tem parâmetro inteiro
{
    if (PID == 0) {
        lados('e', porcVelo);
        lados('d', 1.10 * porcVelo);
    } else {
        PID_int = PID; //Utilizar conversão de double para int ou parte pelo todo???
        lados('e', (porcVelo - PID_int)); //o PID calcula uma correção baseada no erro, a resposta é na velocidade do motor, porém, utiliza-se a porcentagem, assim, corrige-se PID/VELOCIDADE
        lados('d', (porcVelo + 1.10 * PID_int));
    }

}
//função principal

void setPID() {

    configDA(); //Função para leitura digital dos sensores     

    pos = posicao(); //Definindo a posição do Robô

    posin = pos; //Posição atual do robô,cáculo do erro

    erro = setpoint - pos; //Cálculo do erro, infinitésimo do erro, pequena variação

    de = erro - erroi; // Infinitésimo do erro, pequena variação 

    erroi = erro; //erroi recebe o erro atual para fazer o "de" depois

    dt = (millis - tf) / 1000.0; //Função millis corresponde ao tempo que oprograma ta rodando, dt é o inifitésimo do tempo, PRECISA CONFIGURAR CONTADOR

    tf = millis; //Mesmo conceito do erroi //CONFIGURAR CONTADOR

    P = kp*erro; //Controle Proporcional

    I = I + ki * erro*dt; //Controle Integral

    D = kd * de / dt; //Controle Derivativo

    PID = P + I + D; //PID COMPLETO

    moverMotor(PID); //APLICANDO O PID

}

unsigned long millisPassado = 0;

void PrintSensores() {

    unsigned long millisAtual = millis;
    if (millisAtual - millisPassado > 500) {
        millisPassado = millisAtual;
        if (leitura[1] == 1) {
            UARTSendString("\nAN1:preto ", MAX_LENGTH_UART);
        } else {
            UARTSendString("\nAN1:branco ", MAX_LENGTH_UART);
        }

        if (leitura[2] == 1) {
            UARTSendString("\nAN2:preto", MAX_LENGTH_UART);
        } else {
            UARTSendString("\nAN2:branco", MAX_LENGTH_UART);
        }

        if (leitura[3] == 1) {
            UARTSendString("\nAN3:preto ", MAX_LENGTH_UART);
        } else {
            UARTSendString("\nAN3:branco ", MAX_LENGTH_UART);
        }

        if (leitura[4] == 1) {
            UARTSendString("\nAN4:preto ", MAX_LENGTH_UART);
        } else {
            UARTSendString("\nAN4:branco ", MAX_LENGTH_UART);
        }

        if (leitura[5] == 1) {
            UARTSendString("\nAN5:preto ", MAX_LENGTH_UART);
        } else {
            UARTSendString("\nAN5:branco ", MAX_LENGTH_UART);
        }
        
        UARTSendString("\nBAT: ", MAX_LENGTH_UART);
        UARTSendString(valorConvUART(getAD_AN(6)), MAX_LENGTH_UART);


        UARTSendString("\n----------", MAX_LENGTH_UART);
        UARTSendString("\n", MAX_LENGTH_UART);
    }
}