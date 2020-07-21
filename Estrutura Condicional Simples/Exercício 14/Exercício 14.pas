//Exercicio 14: Faça um algoritmo que receba a idade de uma pessoa e exiba mensagem de maioridade.

{		      Solução em Portugol

Algoritmo Exercicio14;
Var
    idade: inteiro;
Inicio
    exiba("Programa que determina se uma pessoa é maior de idade.");
    exiba("Digite uma idade: ");
    leia(idade);
    se(idade >= 18)
        então exiba("Maior de idade.");
    fimse;
    se(idade < 18)
        então exiba("Menor de idade.");
    fimse;
Fim.
}
// Solução em Pascal
Program Exercicio14;
Uses crt;
Var
    idade: Integer;
Begin
    Clrscr;
    Writeln('Programa que determina se uma pessoa é maior de idade.');
    WriteLn('Digite uma idade: ');
    Readln(idade);
    if(idade >= 18)
        then writeln('Maior de idade.');
    if(idade < 18)
        then writeln('Menor de idade.');
    Repeat Until Keypressed;
End.
