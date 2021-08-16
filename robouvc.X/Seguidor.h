/* 
 * File:   Seguidor.h
 * Author: rapha
 *
 * Created on June 11, 2021, 8:03 PM
 */
#include"geral.h"
#include"PWM.h"
#include"bluetooth.h"

double sensor[7];
double leitura[7];
double posin=0;
double pos=0;
double setpoint=3.0;
double erro=0;
double P=0;
double I=0;
double D=0;
double PID=0;
double kp=0;
double ki=0;
double kd=0;
double dt=0.0;
double de=0.0;
double tf=0.0;
double erroi=0.0;


 void configDA ()//conversão dos dados analógicos em digitais
 { 
     int i;
     for (i=;i<7;i++) //varredura e conversão A/D dos valores lidos
     {
         sensor[i]=getAD_AN(i);
         if (sensor[i]>850)// valores maiores que 850 são provenientes de leituras que se aproximam do preto
         {
             leitura[i]=1;//sensor[i] enxerga a linha  
       }
         else
         {
             leitura[i]=0;//sensor[i] não enxerga a linha
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
     void lados (char lado, int porcVelo)
     {
         ENA=1;
         ENB=1;
         
         //É preciso verificar a disposição dos PWM e, assim, inverter o lado dos motores (direito e esquerdo), bem como a polarização dos motores e, portanto, inversão do PWM dentro de cada if
         if(lado=='e')
         {
             setDutyPWM0(int porcVelo);//PWMA
             setDutyPMW6(0);//PWMB
         }
         if(lado=='d')
         {
             setDutyPWM2(int porcVelo);//PWMB
             setDutyPWM4(0)//PWMC
         }
     }
     void moverMotor(double PID)// PID precisa ser double, contudo, a função velocidade setDutyPWM tem parâmetro inteiro
     {
         if(PID==0)
         {
             lados('e', porcVelo);
             lados ('d',porcVelo);
         }
         else
         {
             lados('e',porcVelo+PID);
             lados('d',porcVelo-PID);
         }
 
     }
     void PID 
     {
        
    configDA(); //Função para leitura digital dos sensores     
                                          
    pos=posicao(); //Definindo a posição do Robô

    posin=pos;  //Posição atual do robô,cáculo do erro

    erro=setpoint-pos;  //Cálculo do erro, infinitésimo do erro, pequena variação
  
    de=erro-erroi;  // Infinitésimo do erro, pequena variação 
  
    erroi=erro; //erroi recebe o erro atual para fazer o "de" depois

    dt=(millis()-tf)/1000.0; //Função millis corresponde ao tempo que oprograma ta rodando, dt é o inifitésimo do tempo, PRECISA CONFIGURAR CONTADOR

    tf=millis();  //Mesmo conceito do erroi //CONFIGURAR CONTADOR
    
    P = kp*erro; //Controle Proporcional

    I = I + ki*erro*dt; //Controle Integral

    D = kd*de/dt; //Controle Derivativo

     PID=P+I-D; //PID COMPLETO
  
    mover_motor(PID); //APLICANDO O PID

     }


