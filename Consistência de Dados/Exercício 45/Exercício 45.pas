//Exercicio 45: Receber um número ímpar maior que 15 (com consistência de dados!).
//Exibir quantas vezes esse número recebido é múltiplo de 3 ou se não ele não é múltiplo de 3.

{		      Solução em Portugol
Algoritmo Exercicio 45;
Var
  numero, multiplo: inteiro;
Inicio
  exiba("Programa que determina se um número ímpar e maior que 15 é múltiplo de 3.");
  exiba("Digite um número ímpar maior que 15: ");
  leia(numero);
  multiplo <- 0;
  enquanto(numero < 15 ou resto(numero,2) = 0)faça
    exiba("Digite um número ímpar maior que 15.");
    leia(numero);
  fimenquanto;
  enquanto(resto(numero,3) = 0)faça
    multiplo <- multiplo + 1;
    numero <- quociente(numero,3);
  fimenquanto;
  se(multiplo = 0)
    então exiba("O número não é divisível por 3.")
    senão exiba("O número é divisível por 3 ",multiplo," vezes.");
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio45;
uses crt;
var
  numero, multiplo: integer;
begin
  clrscr;
  writeln('Programa que determina se um número ímpar e maior que 15 é múltiplo de 3.');
  writeln('Digite um número ímpar maior que 15: ');
  readln(numero);
  multiplo := 0;
  while((numero < 15) or ((numero mod 2) = 0))do
  Begin
    writeln('Digite um número ímpar maior que 15.');
    readln(numero);
  End;
  while((numero mod 3) = 0)do
  Begin
    multiplo := multiplo + 1;
    numero := (numero div 3);
  End;
  if(multiplo = 0)
    then writeln('O número não é divisível por 3.')
    else writeln('O número é divisível por 3: ',multiplo,' vez(es).');
  repeat until keypressed;
end.