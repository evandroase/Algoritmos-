//Exercicio 27: Escreva um algoritmo que receba um n�mero inteiro e exiba se esse n�mero � par ou �mpar.

{		      Solu��o em Portugol
Algoritmo Exercicio 27;
Var
  numero: inteiro;
Inicio
  exiba("Programa que avalia se um n�mero � par ou �mpar.");
  exiba("Digite um n�mero inteiro:");
  leia(numero);
  se(resto(numero,2) = 0)
    ent�o exiba(numero," � par!")
    sen�o exiba(numero," � �mpar!");
  fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio27;
uses crt;
var
  numero: integer;
begin
  clrscr;
  writeln('Programa que avalia se um n�mero � par ou �mpar.');
  writeln('Digite um n�mero inteiro:');
  readln(numero);
  if(numero mod 2 = 0)
    then writeln(numero,' � par!')
    else writeln(numero,' � �mpar!');
  repeat until keypressed;
end.