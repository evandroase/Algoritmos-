//Exercicio 84: Receber a temperatura média de cada mês do ano e armazenar estas informações em um vetor. Calcular e
//exibir qual foi a maior e qual foi a menor temperatura do ano e em quais meses ocorreram.

{         Solução em Portugol
Algoritmo Exercicio 84;                                   // Esse é igual o 69.
Var
  temperatura_media: vetor[1..12] de real;
  mes: vetor[1..12] de caracter;
  i: inteiro;
  maior,menor: real;
Inicio
  exiba("Programa que determina qual mês teve a maior temperatura média e qual teve a menor.");
  mes[1] <- "Janeiro";
  mes[2] <- "Fevereiro";
  mes[3] <- "Março";
  mes[4] <- "Abril";
  mes[5] <- "Maio";
  mes[6] <- "Junho";
  mes[7] <- "Julho";
  mes[8] <- "Agosto";
  mes[9] <- "Setembro";
  mes[10] <- "Outubro";
  mes[11] <- "Novembro";
  mes[12] <- "Dezembro";
  para i <- 1 até 12 faça
    exiba("Digite a temperatura média do ",i,"º mês:");
    leia(temperatura_media[i]);
    se(i = 1)
      então Inicio
              maior <- temperatura_media[i];
              menor <- temperatura_media[i];
            Fim;
    fimse;
    se(temperatura_media[i] > maior)
      então maior <- temperatura_media[i]
      senão se(temperatura_media[i] < menor)
              então menor <- temperatura_media[i];
            fimse;
    fimse;
  fimpara;
  para i <- 1 até 12 faça                                          // Estou usando um loop para o caso de acontecer empate.
    se(temperatura_media[i] = maior)
      então exiba(mes[i]," teve a maior temperatura média: ", temperatura_media[i],"ºC.");
    fimse;
    se(temperatura_media[i] = menor)
      então exiba(mes[i]," teve a menor temperatura média: ", temperatura_media[i],"ºC.");
    fimse;
  fimpara;
Fim.
}

// Solução em Pascal

Program Exercicio84;
uses crt;
var
  temperatura_media: array[1..12] of real;
  mes: array[1..12] of string;
  i: integer;
  maior,menor: real;
begin
  clrscr;
  writeln('Programa que determina qual mês teve a maior temperatura média e qual teve a menor.');
  mes[1] := 'Janeiro';
  mes[2] := 'Fevereiro';
  mes[3] := 'Março';
  mes[4] := 'Abri';
  mes[5] := 'Maio';
  mes[6] := 'Junho';
  mes[7] := 'Julho';
  mes[8] := 'Agosto';
  mes[9] := 'Setembro';
  mes[10] := 'Outubro';
  mes[11] := 'Novembro';
  mes[12] := 'Dezembro';
  for i := 1 to 12 do
  Begin
    writeln('Digite a temperatura média do ',i,'º mês:');
    readln(temperatura_media[i]);
    if(i = 1)
      then Begin
              maior := temperatura_media[i];
              menor := temperatura_media[i];
           End;
    if(temperatura_media[i] > maior)
      then maior := temperatura_media[i]
      else if(temperatura_media[i] < menor)
              then menor := temperatura_media[i];
  End;
  for i := 1 to 12 do
  Begin
    if(temperatura_media[i] = maior)
      then writeln(mes[i],' teve a maior temperatura média: ', temperatura_media[i]:0:2,'ºC.');
    if(temperatura_media[i] = menor)
      then writeln(mes[i],' teve a menor temperatura média: ', temperatura_media[i]:0:2,'ºC.');
  End;
  repeat until keypressed;
end.