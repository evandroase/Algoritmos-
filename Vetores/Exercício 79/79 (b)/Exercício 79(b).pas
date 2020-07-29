//Exercicio 79(b):  Faça um algoritmo para calcular as séries abaixo. Exibir os números da série e o resultado.
//											Somatório de N^2, para N=1 até 50.
{         Solução em Portugol
Algoritmo Exercicio 79b;
Var
  v: vetor[1..50] de inteiro;
  N,somatorio: inteiro;
Inicio
  somatorio <- 0;
  exiba("Programa que calcula o valor do somatório de uma série de números.");
  para N <- 1 até 50 faça
    v[N] <- N * N;
    exiba("v[",N,"] = ", v[N]);
    somatorio <- somatorio + v[N];
  fimpara;
  exiba("O resultado da soma é: ",somatorio);
Fim.
}

// Solução em Pascal

Program Exercicio79b;
uses crt;
var
  v:array[1..50] of integer;
  N,somatorio: integer;
begin
  clrscr;
  somatorio := 0;
  writeln('Programa que calcula o valor do somatório de uma série de números.');
  for N := 1 to 50 do
  Begin
    v[N] :=  N * N;
    writeln('v[',N,'] = ',v[N]);
    somatorio := somatorio + v[N];
  End;
  writeln('O resultado da soma é: ',somatorio);
  repeat until keypressed;
end.