//Exercício 9: Faça um algoritmo para calcular um valor A elevado a um expoente B. Os valores de A e B devem ser lidos.

{		      Solução em Portugol
Algoritmo Exercicio 9;
Var
    A,B,resultado: real;

Inicio
    exiba("Programa que calcula A elevado a B.");
    exiba("Digite o valor de A:");
    leia(A);
    exiba("Digite o valor de B:");
    leia(B);
    resultado <- A ^ B;
    exiba("O valor de A elevado a B é:",resultado);
Fim.
}

// Solução em Pascal

Program Exercicio;
uses crt;
const
    ano = 2020;
var
    A,B,resultado: real;
begin
    clrscr;
    writeln('Digite o valor de A:');
    readln(A);
    writeln('Digite o valor de B:');
    readln(B);
    resultado := exp(B*ln(A)); //OBS
    writeln('O valor de A elevado a B é: ',resultado:0:2);
    repeat until keypressed;
end.
//OBS: Na matemática, e^ln(A^B) = e^(B * ln(A)) = A ^ B.