// Exerc�cio 2 - Escreva um algoritmo que receba um numero inteiro e calcule e exiba o seu quadrado.

{
																		Solu��o em Portugol

Algoritmo Exercicio2;
Var
	numero,quadrado: inteiro;
Inicio
	exiba('Programa que calcula o quadrado de um n�mero');
	exiba('Digite um n�mero: ');
	leia(numero);
	quadrado <- numero * numero;
	exiba('O quadrado de ', numero,' �: ',quadrado);
Fim.

}

// Solu��o em Pascal

Program Exercicio2;
uses crt;
Var
	numero,quadrado: integer;
Begin
	writeln('Programa que calcula o quadrado de um n�mero');
	writeln('Digite um n�mero: ');
	readln(numero);
	quadrado := numero * numero;
	writeln('O quadrado de ', numero,' �: ',quadrado);
	repeat until keypressed;
End.
