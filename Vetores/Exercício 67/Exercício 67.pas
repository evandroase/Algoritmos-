//Exercicio 67: Armazenar 250 elementos numéricos num arranjo de dados e verificar se existe(m) algum(ns) elemento(s)
//igual(is) ao número 14. Em caso afirmativo, exibir as posições em que estão armazenados.

{         Solução em Portugol
Algoritmo Exercicio 67;
Var
  N: vetor[1..250] de inteiro;
  i, quantidade_14: inteiro;
Inicio
  quantidade_14 <- 0;
  exiba("Programa que armazena 250 números e diz quais/quantos deles são iguais a 14.");
  para i <- 1 até 250 faça
    exiba("Digite o ",i,"º número:");
    leia(N[i]);
    se(N[i] = 14)
      então quantidade_14 <- quantidade_14 + 1;
    fimse;
  fimpara;
  exiba("A quantidade de 14 que aparecem entre os 250 é: ", quantidade_14," e eles são:);
  para i <- 1 até 250 faça
    se(N[i] = 14)
      então exiba(i," ");
    fimse;
  fimpara;
Fim.
}

// Solução em Pascal

Program Exercicio67;
uses crt;
var
  N: array[1..250] of integer;
  i, quantidade_14: integer;
begin
  clrscr;
  quantidade_14 := 0;
  writeln('Programa que armazena 250 números e diz quais/quantos deles são iguais a 14.');
  for i := 1 to 250 do
  Begin
    writeln('Digite o ',i,'º número:');
    readln(N[i]);
    if(N[i] = 14)
      then quantidade_14 := quantidade_14 + 1;
  End;
  writeln('A quantidade de 14 que aparecem entre os 250 é: ', quantidade_14,' e eles estão nas posições: ');
  for i := 1 to 250 do
    if(N[i] = 14)
      then write(i,' ');
  repeat until keypressed;
end.