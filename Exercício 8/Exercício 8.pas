//Exercício 8: Uma empresa paga R$10,00 por hora normal trabalhada e R$15,00 por hora extra. Escreva um algoritmo que
//leia o total de horas normais e o total de horas extras trabalhadas por um empregado em um ano e calcule o salário
//anual deste trabalhador.

{		      Solução em Portugol
Algoritmo Exercicio ;
Const
    valor_hora_normal = 10;
	  valor_hora_extra = 15;
Var
    salario_anual, hora_normal, hora_extra: real;
Inicio
    exiba("Programa que calcula o salário anual de um trabalhador.");
    exiba("Digite a quantidade de horas normais trabalhadas no ano: ");
    leia(hora_normal);
    exiba("Digite a quantidade de horas extras trabalhadas no ano: ");
    leia(hora_extra);
		salario_anual <- hora_normal * valor_hora_normal + hora_extra * valor_hora _extra;
		exiba("O salário anual desse trabalhador é: ",salario_anual);
Fim.
}

// Solução em Pascal

Program Exercicio8;
uses crt;
const
    valor_hora_normal = 10;
	  valor_hora_extra = 15;
var
    salario_anual, hora_normal, hora_extra: real;
begin
    clrscr;
    writeln('Programa que calcula o salário anual de um trabalhador.');
    writeln('Digite a quantidade de horas normais trabalhadas no ano: ');
    readln(hora_normal);
    writeln('Digite a quantidade de horas extras trabalhadas no ano: ');
    readln(hora_extra);
    salario_anual := hora_normal * valor_hora_normal + hora_extra * valor_hora_extra;
    writeln('O salário anual desse trabalhador é: ',salario_anual:0:2);	
    repeat until keypressed;
end.