//Exercicio 23: Fa�a um algoritmo que leia dois valores inteiros A e B. Se os valores forem iguais dever�o se somar os
//dois, caso contr�rio multiplique A por B e exiba o resultado na tela.
{		      Solu��o em Portugol
Algoritmo Exercicio 23;
Var
  A,B: inteiro;
Inicio
  exiba("Programa que faz opera��es com 2 n�meros.");
  exiba("Digite um valor para A: ");
  leia(A);
  exiba("Digite um valor para B: ");
  leia(B);
  se(A = B)
    ent�o exiba("Como A = B, ent�o A + B = ", A + B,".")
    sen�o exiba("Como A <> B, ent�o A x B = ", A * B,".");
  fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio23;
uses crt;
var
  A,B: integer;
begin
  clrscr;
  writeln('Programa que faz opera��es com 2 n�meros.');
  writeln('Digite um valor para A: ');
  readln(A);
  writeln('Digite um valor para B: ');
  readln(B);
  if(A = B)
    then writeln('Como A = B, ent�o A + B = ', A + B,'.')
    else writeln('Como A <> B, ent�o A x B = ', A * B,'.');
  repeat until keypressed;
end.