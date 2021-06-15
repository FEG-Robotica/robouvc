/* 
 * File:   Seguidor_Teste.h
 * Author: rapha
 *
 * Created on June 15, 2021, 5:54 PM
 */

/* 
 * File:   Seguidor.h
 * Author: rapha
 *
 * Created on June 11, 2021, 8:03 PM
 */
double sensor[7];
double leitura[7];
double posin=0;

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
     void lados (char lado, double velocidade)
     {
         if(lado=='e')
         {
             MOTOR_ESQUERDO_FRENTE=1;
             MOTOR_ESQUERDO_TRAS=0
         }
         if
     }


