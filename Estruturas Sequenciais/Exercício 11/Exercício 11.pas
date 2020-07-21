//Exerc�cio 11: Reescreva o exerc�cio anterior para que seu algoritmo leia o comprimento e a altura da
//parede a ser pintada (essas medidas dever�o ser n�meros inteiros).

{		      Solu��o em Portugol
Algoritmo Exercicio11;
Const
    consumo_tinta = 3;
    volume_lata = 2;
Var
    quantidade_latas: real;
    altura,largura: inteiro;
Inicio
    exiba("Programa que diz quantas latas s�o necess�rias para pintar uma parede.");
    exiba("Digite a altura da parede:");
    leia(altura);
    exiba("Digite a largura da parede:");
    leia(largura);
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
var
    quantidade_latas: real;
    altura,largura: integer;
begin
    clrscr;
    writeln('Programa que diz quantas latas s�o necess�rias para pintar uma parede.');
    writeln('Digite a altura da parede:');
    readln(altura);
    writeln('Digite a largura da parede:');
    readln(largura);
    quantidade_latas := (consumo_tinta * altura * largura)/volume_lata;
    writeln('A quantidade de latas para pintar a parede �: ',quantidade_latas:0:0);
    repeat until keypressed;
end.