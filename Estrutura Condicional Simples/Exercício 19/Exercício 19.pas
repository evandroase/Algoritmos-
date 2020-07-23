//Exercicio 19: Receber somente um número ímpar maior do que 15 e exibir o dobro deste número.

{		      Solução em Portugol
Algoritmo Exercicio 19;
Var
	numero, impar: inteiro;
Inicio
	exiba("Programa que exibe números ímpares maiores que 15.");
	exiba("Digite um número: ");
	leia(numero);
	se(resto(numero,2) = 1)
		então impar <- numero;
	fimse;
	se(impar > 15)
		então exiba("O número é ímpar e maior que 15. O seu dobro vale: ", 2 * impar);
	fimse;
	se(impar <= 15)
		então exiba("Número impar menor ou igual a 15 ou número par.);
	fimse;
Fim.
}

// Solução em Pascal

Program Exercicio19;
uses crt;
var
	numero, impar: integer;
begin
	clrscr;
	writeln('Programa que exibe números ímpares maiores que 15.');
	writeln('Digite um número: ');
	readln(numero);
	impar:= 0;
	if(numero mod 2 = 1)
		then impar := numero;
	if(impar > 15)
		then writeln('O número é ímpar e maior que 15. O dobro desse número é: ', 2 * impar);
	if(impar <= 15)
		then writeln('Número ímpar menor ou igual a 15 ou número par.');
	repeat until keypressed;
end.