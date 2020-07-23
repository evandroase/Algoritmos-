//Exercicio 23: Faça um algoritmo que leia dois valores inteiros A e B. Se os valores forem iguais deverão se somar os
//dois, caso contrário multiplique A por B e exiba o resultado na tela.
{		      Solução em Portugol
Algoritmo Exercicio 23;
Var
  A,B: inteiro;
Inicio
  exiba("Programa que faz operações com 2 números.");
  exiba("Digite um valor para A: ");
  leia(A);
  exiba("Digite um valor para B: ");
  leia(B);
  se(A = B)
    então exiba("Como A = B, então A + B = ", A + B,".")
    senão exiba("Como A <> B, então A x B = ", A * B,".");
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio23;
uses crt;
var
  A,B: integer;
begin
  clrscr;
  writeln('Programa que faz operações com 2 números.');
  writeln('Digite um valor para A: ');
  readln(A);
  writeln('Digite um valor para B: ');
  readln(B);
  if(A = B)
    then writeln('Como A = B, então A + B = ', A + B,'.')
    else writeln('Como A <> B, então A x B = ', A * B,'.');
  repeat until keypressed;
end.