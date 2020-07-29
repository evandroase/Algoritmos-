//Exercicio 79(a):  Fa�a um algoritmo para calcular as s�ries abaixo. Exibir os n�meros da s�rie e o resultado.
//											Somat�rio de 2N, para N=1 at� 50;
{         Solu��o em Portugol
Algoritmo Exercicio 79a;
Var
  v: vetor[1..50] de inteiro;
  N,somatorio: inteiro;
Inicio
  somatorio <- 0;
  exiba("Programa que calcula o valor do somat�rio de uma s�rie de n�meros.");
  para N <- 1 at� 50 fa�a
    v[N] <- 2 * N;
    exiba("v[",N,"] = ", v[N]);
    somatorio <- somatorio + v[N];
  fimpara;
  exiba("O resultado da soma �: ",somatorio);
Fim.
}

// Solu��o em Pascal

Program Exercicio79a;
uses crt;
var
  v:array[1..50] of integer;
  N,somatorio: integer;
begin
  clrscr;
  somatorio := 0;
  writeln('Programa que calcula o valor do somat�rio de uma s�rie de n�meros.');
  for N := 1 to 50 do
  Begin
    v[N] :=  2 * N;
    writeln('v[',N,'] = ',v[N]);
    somatorio := somatorio + v[N];
  End;
  writeln('O resultado da soma �: ',somatorio);
  repeat until keypressed;
end.