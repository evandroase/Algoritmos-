//Exerc�cio 12: Escreva um algoritmo que calcule e exiba o custo m�dio do quil�metro rodado (considerando apenas o 
//consumo de combust�vel) para uma dada dist�ncia percorrida e certo volume de combust�vel consumido. O algoritmo 
//deve ler a dist�ncia percorrida (em quil�metros), o volume de combust�vel consumido (em litros) e o pre�o do litro
//do combust�vel.

{		      Solu��o em Portugol
Algoritmo Exercicio12 ;

Var
    volume_combustivel, distancia_percorrida, preco_litro, custo_medio: real;
Inicio
    exiba("Programa que calcula o custo m�dio do quil�metro rodado por um ve�culo.");
    exiba("Digite a dist�ncia percorrida pelo ve�culo:");
    leia(distancia_percorrida);
    exiba("Digite o volume de comsbust�vel consumido pelo ve�culo:");
    leia(volume_combustivel);
    exiba("Digite a pre�o do litro de combust�vel:");
    leia(preco_litro);
    custo_medio <- (volume_combustivel * preco_litro)/distancia_percorrida;
    exiba("O custo m�dio do quil�metro rodado �:", custo_medio);
Fim.
}

// Solu��o em Pascal

Program Exercicio12;
uses crt;
var
    volume_combustivel, distancia_percorrida, preco_litro, custo_medio: real;
begin
    clrscr;
    writeln('Programa que calcula o custo m�dio do quil�metro rodado por um ve�culo.');
    writeln('Digite a dist�ncia percorrida pelo ve�culo em km:');
    readln(distancia_percorrida);
    writeln('Digite o volume de comsbust�vel consumido pelo ve�culo em litros:');
    readln(volume_combustivel);
    writeln('Digite a pre�o do litro de combust�vel em reais:');
    readln(preco_litro);
    custo_medio := (volume_combustivel * preco_litro)/distancia_percorrida;
    writeln('O custo m�dio do quil�metro rodado �:', custo_medio:0:2,' reais por km.');
    repeat until keypressed;
end.