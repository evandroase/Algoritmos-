//Exercício 1: Escreva um algoritmo que receba um número qualquer e exiba o dobro desse número.

{
																	Solução em Portugol

Algoritmo Exercicio1;
Var
	numero,dobro: real;
Inicio
  exiba('Programa que dobra um número.');
  exiba('Digite um número: ');
  leia(numero);
  dobro <- numero * 2;
  exiba('O dobro de ',numero,' é: ', dobro);
Fim.

}

// Solução em Pascal

Program Exercicio1;
uses crt;

var
numero,dobro: real;

begin
    writeln('Programa que dobra um número.');
    writeln('Digite um número: ');
    readln(numero);
    dobro := numero * 2;
    writeln('O dobro de ',numero,' é: ', dobro);
    repeat until keypressed;    
end.