//Exerc�cio 10: Escreva um algoritmo para calcular e exibir a quantidade de latas de tinta necess�rias para pintar uma
//parede de 5 metros de largura por 2 metros de altura. Considere que o consumo de tinta � de 3 litros por metro quadrado
//e a quantidade de tinta por lata � de 2 litros. 

{		      Solu��o em Portugol
Algoritmo Exercicio10;
Const
    consumo_tinta = 3;
    volume_lata = 2;
    altura = 2;
    largura = 5;
Var
    quantidade_latas: real;
Inicio
    exiba("Programa que diz quantas latas s�o necess�rias para pintar uma parede.");
    quantidade_latas <- (consumo_tinta * altura * largura)/volume_lata;
    exiba("A quantidade de latas para pintar a parede �: ",quantidade_latas);
Fim.
}

// Solu��o em Pascal

Program Exercicio;
uses crt;
const
    consumo_tinta = 3;
    volume_lata = 2;
    altura = 2;
    largura = 5;
var
    quantidade_latas: real;
begin
    clrscr;
    writeln('Programa que diz quantas latas s�o necess�rias para pintar uma parede.');
    quantidade_latas := (consumo_tinta * altura * largura)/volume_lata;
    writeln('A quantidade de latas para pintar a parede �: ',quantidade_latas:0:0);
    repeat until keypressed;
end.