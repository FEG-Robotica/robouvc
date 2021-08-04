/* 
 * File:   Seguidor.h
 * Author: rapha
 *
 * Created on June 11, 2021, 8:03 PM
 */

#include "geral.h"

//Sensores
double sensor[7];
double leitura[7];

//Posicao
double posin=0;

//PID
double bspeed=36;
double PID;
double setpoint = 3.0;
double erro = 0.0;
double P = 0.0;
double I = 0.0;
double D = 0.0;
double kp = 20;
double ki = 0;
double kd = 0;
double pos = 0.0;
double posin = 0.0;
double dt = 0.0;
double de = 0.0;
double tf = 0.0;
int i = 0;
double erroi = 0;


void sensores ()//convers�o dos dados anal�gicos em digitais
{ 
    int i;
    for (i = 0;i<7;i++) //varredura e convers�o A/D dos valores lidos
    {
        sensor[i] = getAD_AN(i);
        if (sensor[i]>850) //valores maiores que 850 s�o provenientes de leituras que se aproximam do preto
        {
            leitura[i]=1;//sensor[i] enxerga a linha  
        }
        else
        {
            leitura[i]=0;//sensor[i] n�o enxerga a linha
        }
    }
}
     
double posicao()
{
    int i;
    double pos=0, local, total=0;
    for(i=1;i<6;i++)
    {
        if(leitura[i]==1)
        {
            pos+=1;
            total+=1; 
        }
    }
    if(total!=0)
    {
        local=pos/total;
        return local;
    }
    else
    {
        return posin;
    }
}

void mover_motor(double PID)
{
  if(PID==0)
  {
    lados('e',bspeed);
    lados('d',bspeed);
  }
  else
  {
    lados('e',bspeed+PID);
    lados('d',bspeed-PID);
  }
}

void PID() 
{
  //parar_pra_ganhar();
  sensores(); //Fun��o para leitura digital dos sensores
                                        
  pos = posicao(); //Definindo a posi��o do Rob�

  posin = pos;  //Posi��o atual do rob�  //C�lculo do erro

  erro = setpoint-pos;  //C�lculo do erro // Infinit�simo do erro, pequena varia��o

  de = erro-erroi;  // Infinit�simo do erro, pequena varia��o

  erroi = erro; //erroi recebe o erro atual para fazer o "de" depois

  dt = (millis()-tf)/1000.0; //Fun��o millis corresponde ao tempo que oprograma ta rodando, dt � o inifit�simo do tempo

  tf = millis();  //Mesmo conceito do erroi

  P = kp*erro; //Controle Proporcional

  I = I + ki*erro*dt; //Controle Integral

  D = kd*de/dt; //Controle Derivativo

  PID=P+I-D; //PID COMPLETO

  mover_motor(PID); //APLICANDO O PID
}


