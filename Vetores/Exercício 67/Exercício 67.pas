//Exercicio 67: Armazenar 250 elementos num�ricos num arranjo de dados e verificar se existe(m) algum(ns) elemento(s)
//igual(is) ao n�mero 14. Em caso afirmativo, exibir as posi��es em que est�o armazenados.

{         Solu��o em Portugol
Algoritmo Exercicio 67;
Var
  N: vetor[1..250] de inteiro;
  i, quantidade_14: inteiro;
Inicio
  quantidade_14 <- 0;
  exiba("Programa que armazena 250 n�meros e diz quais/quantos deles s�o iguais a 14.");
  para i <- 1 at� 250 fa�a
    exiba("Digite o ",i,"� n�mero:");
    leia(N[i]);
    se(N[i] = 14)
      ent�o quantidade_14 <- quantidade_14 + 1;
    fimse;
  fimpara;
  exiba("A quantidade de 14 que aparecem entre os 250 �: ", quantidade_14," e eles s�o:);
  para i <- 1 at� 250 fa�a
    se(N[i] = 14)
      ent�o exiba(i," ");
    fimse;
  fimpara;
Fim.
}

// Solu��o em Pascal

Program Exercicio67;
uses crt;
var
  N: array[1..250] of integer;
  i, quantidade_14: integer;
begin
  clrscr;
  quantidade_14 := 0;
  writeln('Programa que armazena 250 n�meros e diz quais/quantos deles s�o iguais a 14.');
  for i := 1 to 250 do
  Begin
    writeln('Digite o ',i,'� n�mero:');
    readln(N[i]);
    if(N[i] = 14)
      then quantidade_14 := quantidade_14 + 1;
  End;
  writeln('A quantidade de 14 que aparecem entre os 250 �: ', quantidade_14,' e eles est�o nas posi��es: ');
  for i := 1 to 250 do
    if(N[i] = 14)
      then write(i,' ');
  repeat until keypressed;
end.