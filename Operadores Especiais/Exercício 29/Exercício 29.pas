//Exercicio 29: Faça um algoritmo que receba um numero inteiro qualquer e mostre se esse número é divisível
//por: 2, 3, 4, 5 ou 10.

{ Solução em Portugol                                                               A = (resto(numero,2) = 0)         
Algoritmo Exercicio 29;                                                             B = (resto(numero,3) = 0)         // se(A ou B ou C ou D ou E)
Var                                                                                 C = (resto(numero,4) = 0)     --> //Se qualquer um deles é verdadeiro, então é divisível.
  numero: inteiro;                                                                  D = (resto(numero,5) = 0)         //Se todos são falsos, então não é divisível.
Inicio                                                                              E = (resto(numero,10) = 0)
  exiba("Programa que avalia se um número é divisível por 2, 3, 4, 5 ou 10.");
  exiba("Digite um número: ");
  leia(numero);
  se((resto(numero,2) = 0) ou (resto(numero,3) = 0) ou (resto(numero,2) = 4) ou (resto(numero,5) = 0) ou (resto(numero,10) = 0))
    então exiba("O número é divisível por 2, 3, 4, 5 ou 10.")
		senão exiba("O número não é divisível por 2, 3, 4, 5 ou 10.");
	fimse;
Fim.
}

// Solução em Pascal

Program Exercicio;
uses crt;
var
  numero: integer;
begin
  clrscr;
  writeln('Programa que avalia se um número é divisível por 2, 3, 4, 5 ou 10.');
  writeln('Digite um número: ');
  readln(numero);
  if((numero mod 2 = 0) or (numero mod 3 = 0) or (numero mod 4 = 0) or (numero mod 5 = 0) or (numero mod 10 = 0))
    then writeln('O número é divisível por 2, 3, 4, 5 ou 10.')
		else writeln('O número não é divisível por 2, 3, 4, 5 ou 10.');
  repeat until keypressed;
end.