//Exercicio 19: Receber somente um n�mero �mpar maior do que 15 e exibir o dobro deste n�mero.

{		      Solu��o em Portugol
Algoritmo Exercicio 19;
Var
	numero, impar: inteiro;
Inicio
	exiba("Programa que exibe n�meros �mpares maiores que 15.");
	exiba("Digite um n�mero: ");
	leia(numero);
	se(resto(numero,2) = 1)
		ent�o impar <- numero;
	fimse;
	se(impar > 15)
		ent�o exiba("O n�mero � �mpar e maior que 15. O seu dobro vale: ", 2 * impar);
	fimse;
	se(impar <= 15)
		ent�o exiba("N�mero impar menor ou igual a 15 ou n�mero par.);
	fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio19;
uses crt;
var
	numero, impar: integer;
begin
	clrscr;
	writeln('Programa que exibe n�meros �mpares maiores que 15.');
	writeln('Digite um n�mero: ');
	readln(numero);
	impar:= 0;
	if(numero mod 2 = 1)
		then impar := numero;
	if(impar > 15)
		then writeln('O n�mero � �mpar e maior que 15. O dobro desse n�mero �: ', 2 * impar);
	if(impar <= 15)
		then writeln('N�mero �mpar menor ou igual a 15 ou n�mero par.');
	repeat until keypressed;
end.