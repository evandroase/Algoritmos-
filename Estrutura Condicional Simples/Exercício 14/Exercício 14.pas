//Exercicio 14: Fa�a um algoritmo que receba a idade de uma pessoa e exiba mensagem de maioridade.

{		      Solu��o em Portugol

Algoritmo Exercicio14;
Var
    idade: inteiro;
Inicio
    exiba("Programa que determina se uma pessoa � maior de idade.");
    exiba("Digite uma idade: ");
    leia(idade);
    se(idade >= 18)
        ent�o exiba("Maior de idade.");
    fimse;
    se(idade < 18)
        ent�o exiba("Menor de idade.");
    fimse;
Fim.
}
// Solu��o em Pascal
Program Exercicio14;
Uses crt;
Var
    idade: Integer;
Begin
    Clrscr;
    Writeln('Programa que determina se uma pessoa � maior de idade.');
    WriteLn('Digite uma idade: ');
    Readln(idade);
    if(idade >= 18)
        then writeln('Maior de idade.');
    if(idade < 18)
        then writeln('Menor de idade.');
    Repeat Until Keypressed;
End.
