//Exercicio 45: Receber um n�mero �mpar maior que 15 (com consist�ncia de dados!).
//Exibir quantas vezes esse n�mero recebido � m�ltiplo de 3 ou se n�o ele n�o � m�ltiplo de 3.

{		      Solu��o em Portugol
Algoritmo Exercicio 45;
Var
  numero, multiplo: inteiro;
Inicio
  exiba("Programa que determina se um n�mero �mpar e maior que 15 � m�ltiplo de 3.");
  exiba("Digite um n�mero �mpar maior que 15: ");
  leia(numero);
  multiplo <- 0;
  enquanto(numero < 15 ou resto(numero,2) = 0)fa�a
    exiba("Digite um n�mero �mpar maior que 15.");
    leia(numero);
  fimenquanto;
  enquanto(resto(numero,3) = 0)fa�a
    multiplo <- multiplo + 1;
    numero <- quociente(numero,3);
  fimenquanto;
  se(multiplo = 0)
    ent�o exiba("O n�mero n�o � divis�vel por 3.")
    sen�o exiba("O n�mero � divis�vel por 3 ",multiplo," vezes.");
  fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio45;
uses crt;
var
  numero, multiplo: integer;
begin
  clrscr;
  writeln('Programa que determina se um n�mero �mpar e maior que 15 � m�ltiplo de 3.');
  writeln('Digite um n�mero �mpar maior que 15: ');
  readln(numero);
  multiplo := 0;
  while((numero < 15) or ((numero mod 2) = 0))do
  Begin
    writeln('Digite um n�mero �mpar maior que 15.');
    readln(numero);
  End;
  while((numero mod 3) = 0)do
  Begin
    multiplo := multiplo + 1;
    numero := (numero div 3);
  End;
  if(multiplo = 0)
    then writeln('O n�mero n�o � divis�vel por 3.')
    else writeln('O n�mero � divis�vel por 3: ',multiplo,' vez(es).');
  repeat until keypressed;
end.