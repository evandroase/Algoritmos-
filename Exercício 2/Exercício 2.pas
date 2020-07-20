// Exercício 2 - Escreva um algoritmo que receba um numero inteiro e calcule e exiba o seu quadrado.

{
																		Solução em Portugol

Algoritmo Exercicio2;
Var
	numero,quadrado: inteiro;
Inicio
	exiba('Programa que calcula o quadrado de um número');
	exiba('Digite um número: ');
	leia(numero);
	quadrado <- numero * numero;
	exiba('O quadrado de ', numero,' é: ',quadrado);
Fim.

}

// Solução em Pascal

Program Exercicio2;
uses crt;
Var
	numero,quadrado: integer;
Begin
	writeln('Programa que calcula o quadrado de um número');
	writeln('Digite um número: ');
	readln(numero);
	quadrado := numero * numero;
	writeln('O quadrado de ', numero,' é: ',quadrado);
	repeat until keypressed;
End.
