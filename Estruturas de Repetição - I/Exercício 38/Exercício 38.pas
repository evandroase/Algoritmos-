//Exercicio 38: Escreva um algoritmo que receba 20 valores reais e exiba o seu somat�rio.

{		      Solu��o em Portugol
Algoritmo Exercicio 38;
Var
  contador: inteiro;
  N,soma: real;
Inicio
  exiba("Programa que calcula o somat�rio de 20 n�meros.");
  contador <- 1;
  soma <- 0;
  enquanto(contador < 21) faca
    exiba("Digite o ",contador,"� n�mero.");
    leia(N);
    soma <- soma + N;
    contador <- contador + 1;
  fimenquanto;
  exiba("O valor do somat�rio dos 20 n�meros �: ",soma);
Fim.
}

// Solu��o em Pascal

Program Exercicio38;
uses crt;
var
  contador: integer;
  N,soma: real;
begin
  clrscr;
  writeln('Programa que calcula o somat�rio de 20 n�meros.');
  contador := 1;
  soma := 0;
  while(contador < 21) do
  Begin
    writeln('Digite o ',contador,'� n�mero.');
    readln(N);
    soma := soma + N;
    contador := contador + 1;
  End;
  writeln('O valor do somat�rio dos 20 n�meros �: ',soma:0:2);
  repeat until keypressed;
end.