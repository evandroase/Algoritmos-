//Exercício 12: Escreva um algoritmo que calcule e exiba o custo médio do quilômetro rodado (considerando apenas o 
//consumo de combustível) para uma dada distância percorrida e certo volume de combustível consumido. O algoritmo 
//deve ler a distância percorrida (em quilômetros), o volume de combustível consumido (em litros) e o preço do litro
//do combustível.

{		      Solução em Portugol
Algoritmo Exercicio12 ;

Var
    volume_combustivel, distancia_percorrida, preco_litro, custo_medio: real;
Inicio
    exiba("Programa que calcula o custo médio do quilômetro rodado por um veículo.");
    exiba("Digite a distância percorrida pelo veículo:");
    leia(distancia_percorrida);
    exiba("Digite o volume de comsbustível consumido pelo veículo:");
    leia(volume_combustivel);
    exiba("Digite a preço do litro de combustível:");
    leia(preco_litro);
    custo_medio <- (volume_combustivel * preco_litro)/distancia_percorrida;
    exiba("O custo médio do quilômetro rodado é:", custo_medio);
Fim.
}

// Solução em Pascal

Program Exercicio12;
uses crt;
var
    volume_combustivel, distancia_percorrida, preco_litro, custo_medio: real;
begin
    clrscr;
    writeln('Programa que calcula o custo médio do quilômetro rodado por um veículo.');
    writeln('Digite a distância percorrida pelo veículo em km:');
    readln(distancia_percorrida);
    writeln('Digite o volume de comsbustível consumido pelo veículo em litros:');
    readln(volume_combustivel);
    writeln('Digite a preço do litro de combustível em reais:');
    readln(preco_litro);
    custo_medio := (volume_combustivel * preco_litro)/distancia_percorrida;
    writeln('O custo médio do quilômetro rodado é:', custo_medio:0:2,' reais por km.');
    repeat until keypressed;
end.