//Exercicio 18: Escreva um algoritmo que leia 10 n�meros e exiba o maior deles.

{		      Solu��o em Portugol
Algoritmo Exercicio 18;
Var
	n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, maior : real;
Inicio
	exiba("Programa que l� 10 n�meros e decide qual o maior deles.");
	exiba("Digite o primeiro n�mero: ");
	leia(n1);
	maior <- n1;
	exiba("Digite o segundo n�mero: ");
	leia(n2);
	se(n2 >= maior)
		ent�o maior <- n2;
	fimse;
	exiba("Digite o terceiro n�mero: ");
	leia(n3);
	se(n3 >= maior)
		ent�o maior <- n3;
	fimse;
	exiba("Digite o quarto n�mero: ");
	leia(n4);
	se(n4 >= maior)
		ent�o maior <- n4;
	fimse;
	exiba("Digite o quinto n�mero: ");
	leia(n5);
	se(n5 >= maior)
		ent�o maior <- n5;
	fimse;
	exiba("Digite o sexto n�mero: ");
	leia(n6);
	se(n6 >= maior)
		ent�o maior <- n6;
	fimse;
	exiba("Digite o s�timo n�mero: ");
	leia(n7);
	se(n7 >= maior)
		ent�o maior <- n7;
	fimse;
	exiba("Digite o oitavo n�mero: ");
	leia(n8);
	se(n8 >= maior)
		ent�o maior <- n8;
	fimse;
	exiba("Digite o nono n�mero: ");
	leia(n9);
	se(n9 >= maior)
		ent�o maior <- n9;
	fimse;
	exiba("Digite o d�cimo n�mero: ");
	leia(n10);
	se(n10 >= maior)
		ent�o maior <- n10;
	fimse;
	exiba("O maior n�mero �: ", maior);
Fim.
}

// Solu��o em Pascal

Program Exercicio18;
uses crt;
var
	n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, maior : real;
begin
	clrscr;
	writeln('Programa que l� 10 n�meros e decide qual o maior deles.');
	writeln('Digite o primeiro n�mero: ');
	readln(n1);
	if(n1 >= maior)
		then maior := n1;
	writeln('Digite o segundo n�mero: ');
	readln(n2);
	if(n2 >= maior)
		then maior := n2;
	writeln('Digite o terceiro n�mero: ');
	readln(n3);
	if(n3 >= maior)
		then maior := n3;
	writeln('Digite o quarto n�mero: ');
	readln(n4);
	if(n4 >= maior)
		then maior := n4;
	writeln('Digite o quinto n�mero: ');
	readln(n5);
	if(n5 >= maior)
		then maior := n5;
	writeln('Digite o sexto n�mero: ');
	readln(n6);
	if(n6 >= maior)
		then maior := n6;
	writeln('Digite o s�timo n�mero: ');
	readln(n7);
	if(n7 >= maior)
		then maior := n7;
	writeln('Digite o oitavo n�mero: ');
	readln(n8);
	if(n8 >= maior)
		then maior := n8;
	writeln('Digite o nono n�mero: ');
	readln(n9);
	if(n9 >= maior)
		then maior := n9;
	writeln('Digite o d�cimo n�mero: ');
	readln(n10);
	if(n10 >= maior)
		then maior := n10;
	writeln('O maior n�mero �: ', maior:0:2);
	repeat until keypressed;
end.