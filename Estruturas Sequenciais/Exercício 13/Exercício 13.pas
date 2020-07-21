//Exercicio 13: Dado um n�mero inteiro positivo que representa uma quantidade de tempo em segundos, escreva um algoritmo
//que converta esse n�mero em horas, minutos e segundos. Por exemplo: supondo que o n�mero lido seja 33560, seu algoritmo
//dever� exibir: 33560 segundos = 9 horas 19 minutos e 20 segundos.

{		      Solu��o em Portugol
Algoritmo Exercicio13;
Var
    numero,horas,minutos,segundos: inteiro;
Inicio
    exiba("Programa que converte segundos em horas-minutos-segundos.");
    exiba("Digite um numero de segundos: ");
    leia(numero);
    horas <- numero/3600;    --> estou usando como divis�o inteira, no pascal isso n�o � poss�vel.
    minutos <- (numero - 3600 * horas)/60;
    segundos <- (numero - 3600 * horas) - (minutos * 60);
    exiba(numero," segundos equivalem a ", horas," horas, ",minutos," minutos e ",segundos," segundos.");
Fim.
}

// Solu��o em Pascal

Program Exercicio13;
uses crt;
var
    numero,horas,minutos,segundos: integer;
begin
    clrscr;
    writeln('Programa que converte segundos em horas-minutos-segundos.');
    writeln('Digite um numero de segundos: ');
    readln(numero);
    horas := numero div 3600;
    minutos := (numero mod 3600) div 60;
    segundos := (numero mod 3600) mod 60;
    writeln(numero,' segundos equivalem a ', horas,' horas, ',minutos,' minutos e ',segundos,' segundos.');
    repeat until keypressed;
end.