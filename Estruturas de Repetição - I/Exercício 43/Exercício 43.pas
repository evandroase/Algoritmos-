//Exercicio 43: Faça um algoritmo que calcule e exiba a soma dos dez primeiros termos da seguinte série:
//                     N = 2/500 - 2/450 + 2/400 - 2/350 + ...

{		      Solução em Portugol
Algoritmo Exercicio 43;
Var
  N: real;
  alternador_sinal, A: inteiro;
Inicio
  exiba("Programa que calcula uma soma maluca.");
  alternador_sinal <- 1;
  N <- 0;
  A <- 500;
  enquanto (A > 0) faca
    N <- N + (2/A) * alternador_sinal;
    alternador_sinal := alternador_sinal * (-1);
    A <- A - 50;
  fimenquanto;
  exiba("O valor da soma é: ", N);
Fim.
}

// Solução em Pascal

Program Exercicio43;
uses crt;
var
  N: real;
  alternador_sinal, A: integer;
begin
  clrscr;
  writeln('Programa que calcula uma soma maluca.');
  N := 0;
  A := 500;
  alternador_sinal := 1;
  while(A > 0)do
  Begin
    N := N + (2/A) * alternador_sinal;
    alternador_sinal := alternador_sinal * (-1);
    A := A - 50;
  End;
  writeln('O valor da soma é: ', N:0:5);
  repeat until keypressed;
end.