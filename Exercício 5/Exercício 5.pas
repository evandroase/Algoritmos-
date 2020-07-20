//Exercício 5: Escreva um algoritmo que receba o salário de um funcionário, calcule e exiba o quanto ele ganha por dia.

{		      Solução em Portugol

Algoritmo Exercicio;
Var
    salario: inteiro;
    salario_diario: real;
Inicio
    exiba("Programa que calcula o salário diário de um funcionário.");
    exiba("Digite o salário do funcionário: ");
    leia(salario);
    salario_diario <- salario/30; // Calculo do salário de 1 dia de trabalho em um mês com 30 dias.
    exiba("O salário diário do funcionário é: ", salario_diario);
Fim.

}

// Solução em Pascal

Program Exercicio;
uses crt;

var
    salario: integer;
		salario_diario: real;
begin
    clrscr;
    writeln('Programa que calcula o salário diário de um funcionário.');
    writeln('Digite o salário do funcionário: ');
    readln(salario);
    salario_diario := salario/30; // Calculo do salário de 1 dia de trabalho em um mês com 30 dias.
    writeln('O salário diário do funcionário é: ',salario_diario:9:2); //Comando para representar reais de maneira
																																			 //mais fácil de ler:
end.                                                                   //variavel:casas_antes_virgula:casas_depois_virg