//Exerc�cio 5: Escreva um algoritmo que receba o sal�rio de um funcion�rio, calcule e exiba o quanto ele ganha por dia.

{		      Solu��o em Portugol

Algoritmo Exercicio;
Var
    salario: inteiro;
    salario_diario: real;
Inicio
    exiba("Programa que calcula o sal�rio di�rio de um funcion�rio.");
    exiba("Digite o sal�rio do funcion�rio: ");
    leia(salario);
    salario_diario <- salario/30; // Calculo do sal�rio de 1 dia de trabalho em um m�s com 30 dias.
    exiba("O sal�rio di�rio do funcion�rio �: ", salario_diario);
Fim.

}

// Solu��o em Pascal

Program Exercicio;
uses crt;

var
    salario: integer;
		salario_diario: real;
begin
    clrscr;
    writeln('Programa que calcula o sal�rio di�rio de um funcion�rio.');
    writeln('Digite o sal�rio do funcion�rio: ');
    readln(salario);
    salario_diario := salario/30; // Calculo do sal�rio de 1 dia de trabalho em um m�s com 30 dias.
    writeln('O sal�rio di�rio do funcion�rio �: ',salario_diario:9:2); //Comando para representar reais de maneira
																																			 //mais f�cil de ler:
end.                                                                   //variavel:casas_antes_virgula:casas_depois_virg