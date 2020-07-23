//Exercicio 27: Escreva um algoritmo que receba um número inteiro e exiba se esse número é par ou ímpar.

{		      Solução em Portugol
Algoritmo Exercicio 27;
Var
  numero: inteiro;
Inicio
  exiba("Programa que avalia se um número é par ou ímpar.");
  exiba("Digite um número inteiro:");
  leia(numero);
  se(resto(numero,2) = 0)
    então exiba(numero," é par!")
    senão exiba(numero," é ímpar!");
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio27;
uses crt;
var
  numero: integer;
begin
  clrscr;
  writeln('Programa que avalia se um número é par ou ímpar.');
  writeln('Digite um número inteiro:');
  readln(numero);
  if(numero mod 2 = 0)
    then writeln(numero,' é par!')
    else writeln(numero,' é ímpar!');
  repeat until keypressed;
end.