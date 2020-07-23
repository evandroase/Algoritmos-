//Exercicio 29: Fa�a um algoritmo que receba um numero inteiro qualquer e mostre se esse n�mero � divis�vel
//por: 2, 3, 4, 5 ou 10.

{ Solu��o em Portugol                                                               A = (resto(numero,2) = 0)         
Algoritmo Exercicio 29;                                                             B = (resto(numero,3) = 0)         // se(A ou B ou C ou D ou E)
Var                                                                                 C = (resto(numero,4) = 0)     --> //Se qualquer um deles � verdadeiro, ent�o � divis�vel.
  numero: inteiro;                                                                  D = (resto(numero,5) = 0)         //Se todos s�o falsos, ent�o n�o � divis�vel.
Inicio                                                                              E = (resto(numero,10) = 0)
  exiba("Programa que avalia se um n�mero � divis�vel por 2, 3, 4, 5 ou 10.");
  exiba("Digite um n�mero: ");
  leia(numero);
  se((resto(numero,2) = 0) ou (resto(numero,3) = 0) ou (resto(numero,2) = 4) ou (resto(numero,5) = 0) ou (resto(numero,10) = 0))
    ent�o exiba("O n�mero � divis�vel por 2, 3, 4, 5 ou 10.")
		sen�o exiba("O n�mero n�o � divis�vel por 2, 3, 4, 5 ou 10.");
	fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio;
uses crt;
var
  numero: integer;
begin
  clrscr;
  writeln('Programa que avalia se um n�mero � divis�vel por 2, 3, 4, 5 ou 10.');
  writeln('Digite um n�mero: ');
  readln(numero);
  if((numero mod 2 = 0) or (numero mod 3 = 0) or (numero mod 4 = 0) or (numero mod 5 = 0) or (numero mod 10 = 0))
    then writeln('O n�mero � divis�vel por 2, 3, 4, 5 ou 10.')
		else writeln('O n�mero n�o � divis�vel por 2, 3, 4, 5 ou 10.');
  repeat until keypressed;
end.