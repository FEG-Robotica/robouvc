/* 
 * File:   Seguidor.h
 * Author: rapha
 *
 * Created on June 11, 2021, 8:03 PM
 */

double sensor[7];
double leitura[7];
double posin = 0;
double pos = 0;
double setpoint = 3.0;
double erro = 0;
double P = 0;
double I = 0;
double D = 0;
double PID = 0;
double kp = 0;
double ki = 0;
double kd = 0;
double dt = 0.0;
double de = 0.0;
double tf = 0.0;
double erroi = 0.0;
int bspeed = 20;

void configDA()//convers?o dos dados anal?gicos em digitais
{
    int i;
    for (i = 0; i < 7; i++) //varredura e convers?o A/D dos valores lidos
    {
        sensor[i] = getAD_AN(i);
        if (sensor[i] > 850)// valores maiores que 850 s?o provenientes de leituras que se aproximam do preto
        {
            leitura[i] = 1; //sensor[i] enxerga a linha  
        } else {
            leitura[i] = 0; //sensor[i] n?o enxerga a linha
        }
    }
}

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

void lados(char lado, int porcVelo) {
    ENA = 1;
    ENB = 1;

    //? preciso verificar a disposi??o dos PWM e, assim, inverter o lado dos motores (direito e esquerdo), bem como a polariza??o dos motores e, portanto, invers?o do PWM dentro de cada if
    if (lado == 'e') {
        setDutyPWM0(porcVelo); //PWMA
        setDutyPWM6(0); //PWMD
    }
    if (lado == 'd') {
        setDutyPWM2(porcVelo); //PWMB
        setDutyPWM4(0);//PWMC
    }
}

void moverMotor(double PID)// PID precisa ser double, contudo, a fun??o velocidade setDutyPWM tem par?metro inteiro
{
    if (PID == 0) {
        lados('e', bspeed);
        lados('d', bspeed);
    } else {
        lados('e', bspeed + PID);
        lados('d', bspeed - PID);
    }
}

void setPID(){

    configDA(); //Fun??o para leitura digital dos sensores     

    pos = posicao(); //Definindo a posi??o do Rob?

    posin = pos; //Posi??o atual do rob?,c?culo do erro

    erro = setpoint - pos; //C?lculo do erro, infinit?simo do erro, pequena varia??o

    de = erro - erroi; // Infinit?simo do erro, pequena varia??o 

    erroi = erro; //erroi recebe o erro atual para fazer o "de" depois

    dt = (millis - tf) / 1000.0; //Fun??o millis corresponde ao tempo que oprograma ta rodando, dt ? o inifit?simo do tempo, PRECISA CONFIGURAR CONTADOR

    tf = millis; //Mesmo conceito do erroi //CONFIGURAR CONTADOR

    P = kp*erro; //Controle Proporcional

    I = I + ki * erro*dt; //Controle Integral

    D = kd * de / dt; //Controle Derivativo

    PID = P + I - D; //PID COMPLETO

    moverMotor(PID); //APLICANDO O PID

}

