//Exercicio 38: Escreva um algoritmo que receba 20 valores reais e exiba o seu somatório.

{		      Solução em Portugol
Algoritmo Exercicio 38;
Var
  contador: inteiro;
  N,soma: real;
Inicio
  exiba("Programa que calcula o somatório de 20 números.");
  contador <- 1;
  soma <- 0;
  enquanto(contador < 21) faca
    exiba("Digite o ",contador,"º número.");
    leia(N);
    soma <- soma + N;
    contador <- contador + 1;
  fimenquanto;
  exiba("O valor do somatório dos 20 números é: ",soma);
Fim.
}

// Solução em Pascal

Program Exercicio38;
uses crt;
var
  contador: integer;
  N,soma: real;
begin
  clrscr;
  writeln('Programa que calcula o somatório de 20 números.');
  contador := 1;
  soma := 0;
  while(contador < 21) do
  Begin
    writeln('Digite o ',contador,'º número.');
    readln(N);
    soma := soma + N;
    contador := contador + 1;
  End;
  writeln('O valor do somatório dos 20 números é: ',soma:0:2);
  repeat until keypressed;
end.