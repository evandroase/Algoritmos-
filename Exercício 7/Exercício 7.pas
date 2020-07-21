//Exercício 7: Escreva um algoritmo que receba o valor das 3 notas de um aluno, calcule e exiba sua média podenrada
//conforme a fórmula: (1ª prova(peso 2) + 2ª prova (peso 3) + 3ª prova(peso 4))/9

{		      Solução em Portugol
Algoritmo Exercicio7;
Var
    P1,P2,P3,media_ponderada: real;
Inicio
    exiba("Programa que calcula a média ponderada de um aluno.");
    exiba("Digite a nota da primeira prova: ");
    leia(P1);
    exiba("Digite a nota da segunda prova: ");
    leia(P2);
    exiba("Digite a nota da terceira prova: ");
    leia(P3);
    media_ponderada <- (2 * P1 + 3 * P2 + 4 * P3)/9;
    exiba("A média ponderada do aluno é: ",media_ponderada);
Fim.
}

// Solução em Pascal

Program Exercicio7;
uses crt;
var
    P1,P2,P3,media_ponderada:real;
begin
    clrscr;
    writeln('Programa que calcula a média ponderada de um aluno.');
    writeln('Digite a nota da primeira prova: ');
    readln(P1);
    writeln('Digite a nota da segunda prova: ');
    readln(P2);
    writeln('Digite a nota da terceira prova: ');
    readln(P3);
    media_ponderada := (2 * P1 + 3 * P2 + 4 * P3)/9;
    writeln('A média ponderada do aluno é: ',media_ponderada:2:2);
    repeat until keypressed;
end.
