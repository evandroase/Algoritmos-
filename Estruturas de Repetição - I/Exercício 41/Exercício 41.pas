//Exercicio 41: Escreva um algoritmo que calcule o valor de X, sendo este determinado pela série:
//            X = 1/1 + 3/2 + 5/3 + 7/4 + ... + 99/50.

{		      Solução em Portugol
Algoritmo Exercicio 41;
Var
  X: real;
  contador: inteiro;
Inicio
  exiba("Programa que calcula uma soma maluca.");
  X <- 0;
  contador <- 1;
  enquanto(contador <= 50)faca
    X <- X + (2* contador - 1)/contador;
    contador <- contador + 1;
  fimenquanto;
  exiba("O valor da soma é: ", X:0:2);
Fim.
}

// Solução em Pascal

Program Exercicio41;
uses crt;
var
  X: real;
  contador: integer;
begin
  clrscr;
  writeln('Programa que calcula uma soma maluca.');
  X := 0;
  contador := 1;
  while(contador <= 50)do
  Begin
    X := X + (2 * contador - 1)/contador;
    contador := contador + 1;
  End;
  writeln('O valor da soma é: ', X:0:2);
  repeat until keypressed;
end.