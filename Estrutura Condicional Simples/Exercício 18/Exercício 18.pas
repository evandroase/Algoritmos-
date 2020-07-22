//Exercicio 18: Escreva um algoritmo que leia 10 números e exiba o maior deles.

{		      Solução em Portugol
Algoritmo Exercicio 18;
Var
	n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, maior : real;
Inicio
	exiba("Programa que lê 10 números e decide qual o maior deles.");
	exiba("Digite o primeiro número: ");
	leia(n1);
	maior <- n1;
	exiba("Digite o segundo número: ");
	leia(n2);
	se(n2 >= maior)
		então maior <- n2;
	fimse;
	exiba("Digite o terceiro número: ");
	leia(n3);
	se(n3 >= maior)
		então maior <- n3;
	fimse;
	exiba("Digite o quarto número: ");
	leia(n4);
	se(n4 >= maior)
		então maior <- n4;
	fimse;
	exiba("Digite o quinto número: ");
	leia(n5);
	se(n5 >= maior)
		então maior <- n5;
	fimse;
	exiba("Digite o sexto número: ");
	leia(n6);
	se(n6 >= maior)
		então maior <- n6;
	fimse;
	exiba("Digite o sétimo número: ");
	leia(n7);
	se(n7 >= maior)
		então maior <- n7;
	fimse;
	exiba("Digite o oitavo número: ");
	leia(n8);
	se(n8 >= maior)
		então maior <- n8;
	fimse;
	exiba("Digite o nono número: ");
	leia(n9);
	se(n9 >= maior)
		então maior <- n9;
	fimse;
	exiba("Digite o décimo número: ");
	leia(n10);
	se(n10 >= maior)
		então maior <- n10;
	fimse;
	exiba("O maior número é: ", maior);
Fim.
}

// Solução em Pascal

Program Exercicio18;
uses crt;
var
	n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, maior : real;
begin
	clrscr;
	writeln('Programa que lê 10 números e decide qual o maior deles.');
	writeln('Digite o primeiro número: ');
	readln(n1);
	if(n1 >= maior)
		then maior := n1;
	writeln('Digite o segundo número: ');
	readln(n2);
	if(n2 >= maior)
		then maior := n2;
	writeln('Digite o terceiro número: ');
	readln(n3);
	if(n3 >= maior)
		then maior := n3;
	writeln('Digite o quarto número: ');
	readln(n4);
	if(n4 >= maior)
		then maior := n4;
	writeln('Digite o quinto número: ');
	readln(n5);
	if(n5 >= maior)
		then maior := n5;
	writeln('Digite o sexto número: ');
	readln(n6);
	if(n6 >= maior)
		then maior := n6;
	writeln('Digite o sétimo número: ');
	readln(n7);
	if(n7 >= maior)
		then maior := n7;
	writeln('Digite o oitavo número: ');
	readln(n8);
	if(n8 >= maior)
		then maior := n8;
	writeln('Digite o nono número: ');
	readln(n9);
	if(n9 >= maior)
		then maior := n9;
	writeln('Digite o décimo número: ');
	readln(n10);
	if(n10 >= maior)
		then maior := n10;
	writeln('O maior número é: ', maior:0:2);
	repeat until keypressed;
end.