//Exerc�cio 7: Escreva um algoritmo que receba o valor das 3 notas de um aluno, calcule e exiba sua m�dia podenrada
//conforme a f�rmula: (1� prova(peso 2) + 2� prova (peso 3) + 3� prova(peso 4))/9

{		      Solu��o em Portugol
Algoritmo Exercicio7;
Var
    P1,P2,P3,media_ponderada: real;
Inicio
    exiba("Programa que calcula a m�dia ponderada de um aluno.");
    exiba("Digite a nota da primeira prova: ");
    leia(P1);
    exiba("Digite a nota da segunda prova: ");
    leia(P2);
    exiba("Digite a nota da terceira prova: ");
    leia(P3);
    media_ponderada <- (2 * P1 + 3 * P2 + 4 * P3)/9;
    exiba("A m�dia ponderada do aluno �: ",media_ponderada);
Fim.
}

// Solu��o em Pascal

Program Exercicio7;
uses crt;
var
    P1,P2,P3,media_ponderada:real;
begin
    clrscr;
    writeln('Programa que calcula a m�dia ponderada de um aluno.');
    writeln('Digite a nota da primeira prova: ');
    readln(P1);
    writeln('Digite a nota da segunda prova: ');
    readln(P2);
    writeln('Digite a nota da terceira prova: ');
    readln(P3);
    media_ponderada := (2 * P1 + 3 * P2 + 4 * P3)/9;
    writeln('A m�dia ponderada do aluno �: ',media_ponderada:2:2);
    repeat until keypressed;
end.
