//Exerc�cio 3: Escreva um algoritmo que receba uma temperatura em graus celsius e coverta-a para graus Farenheit.
// Exibir as duas temperaturas. F�rmula : Tf = (9/5) * Tc + 32.

{
										Solu��o em Portugol

Algoritmo Exercicio3;                   //Tc = temperatura em celsius
Var                                     //Tf = temperatura em farenheit
	Tf,Tc : real
Inicio
	exiba('Programa que converte temperaturas de Celsius para Farenheit.');
	exiba('Digite uma temperatura em celsius: ');
	leia(Tc);
	Tf <- (9/5) * Tc + 32;
	exiba(Tc,' � celsius � equivalente a ' ,Tf,' � farenheit.');
Fim.

}

// Solu��o em Pascal

Program Exercicio;
uses crt;
var
	Tf,Tc : real;
begin
	clrscr;			 // Esse comando limpa a tela do terminal que abre quando executamos o programa.
	writeln('Programa que converte temperaturas de Celsius para Farenheit.');
	writeln('Digite uma temperatura em celsius: ');
	readln(Tc);
	Tf := (9/5) * Tc + 32;
	writeln(Tc,' � celsius � equivalente a ' ,Tf,' � farenheit.');
  repeat until keypressed;
end.