//Exercicio 13: Dado um número inteiro positivo que representa uma quantidade de tempo em segundos, escreva um algoritmo
//que converta esse número em horas, minutos e segundos. Por exemplo: supondo que o número lido seja 33560, seu algoritmo
//deverá exibir: 33560 segundos = 9 horas 19 minutos e 20 segundos.

{		      Solução em Portugol
Algoritmo Exercicio13;
Var
    numero,horas,minutos,segundos: inteiro;
Inicio
    exiba("Programa que converte segundos em horas-minutos-segundos.");
    exiba("Digite um numero de segundos: ");
    leia(numero);
    horas <- numero/3600;    --> estou usando como divisão inteira, no pascal isso não é possível.
    minutos <- (numero - 3600 * horas)/60;
    segundos <- (numero - 3600 * horas) - (minutos * 60);
    exiba(numero," segundos equivalem a ", horas," horas, ",minutos," minutos e ",segundos," segundos.");
Fim.
}

// Solução em Pascal

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