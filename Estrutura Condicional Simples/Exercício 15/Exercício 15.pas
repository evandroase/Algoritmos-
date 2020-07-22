//Exercicio 15: Assuma que o trabalhador do exerc�cio 08 deve pagar 10% de imposto se o seu sal�rio anual for menor ou 
//igual a R$ 12.000,00. Caso o sal�rio seja maior que este valor o imposto devido � igual a 10% sobre R$ 12.000,00 mais
//25% sobre o que passar de R$ 12.000,00. Escreva um algoritmo que calcule e exiba o imposto devido pelo trabalhador.
{		      Solu��o em Portugol
Algoritmo Exercicio 17;
Const
	valor_hora_normal = 10;
	valor_hora_extra = 15;
Var
	salario_anual, hora_normal, hora_extra: real;
Inicio
	exiba("Programa que calcula o sal�rio anual de um trabalhador.");
	exiba("Digite a quantidade de horas normais trabalhadas no ano: ");
	leia(hora_normal);
	exiba("Digite a quantidade de horas extras trabalhadas no ano: ");
	leia(hora_extra);
	salario_anual <- hora_normal * valor_hora_normal + hora_extra * valor_hora _extra;
	se(salario_anual < 12000)
		ent�o exiba("O trabalhador deve pagar: ", salario_anual * 0,1," reais de imposto.");
	fimse;
	se(salario_anual >= 12000)
		ent�o exiba("O trabalhador deve pagar: ", 1200 + 0,25 * (salario_anual - 12000), " reais de imposto.");
	fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio17;
uses crt;
Const
	valor_hora_normal = 10;
	valor_hora_extra = 15;
var
	salario_anual, hora_normal, hora_extra: real;
begin
	clrscr;
	writeln('Programa que calcula o sal�rio anual de um trabalhador.');
	writeln('Digite a quantidade de horas normais trabalhadas no ano: ');
	readln(hora_normal);
	writeln('Digite a quantidade de horas extras trabalhadas no ano: ');
	readln(hora_extra);
	salario_anual := hora_normal * valor_hora_normal + hora_extra * valor_hora_extra;
	if(salario_anual < 12000)
		then writeln('O trabalhador deve pagar: ', (salario_anual * 0.1):0:2,' reais de imposto.');
	if(salario_anual >= 12000)
		then writeln('O trabalhador deve pagar: ', (1200 + 0.25 * (salario_anual - 12000)):0:2, ' reais de imposto.');
	repeat until keypressed;
end.