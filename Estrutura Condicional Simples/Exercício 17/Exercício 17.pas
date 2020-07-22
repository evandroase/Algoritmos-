//Exercicio 17: Fa�a um algoritmo que leia o ano de nascimento de uma pessoa, calcule e mostre sua idade e, tamb�m,
//verifique e mostre se ela j� tem idade para votar (16 anos ou mais) e para obter a carteira de habilita��o
//(18 anos ou mais).

{		      Solu��o em Portugol
Algoritmo Exercicio ;
Const
    ano_atual = 2020;
Var
    ano_nascimento,idade: inteiro;
Inicio
    exiba("Programa que diz se voc� tem idade para votar e dirigir.");
    exiba("Digite o ano em que voc� nasceu: ");
    leia(ano_nascimento);
    idade <- ano_atual - ano_nascimento;
    se(idade < 16)
        ent�o exiba("Voc� n�o pode votar nem dirigir.);
    fimse;
    se(idade >= 16 e idade < 18)
        ent�o exiba("Voc� n�o pode dirigir mas pode votar.");
    fimse;
    se(idade >= 18)
        ent�o exiba("Voc� pode dirigir e votar.");
Fim.
}

// Solu��o em Pascal

Program Exercicio;
uses crt;
const
    ano_atual = 2020;
var
    ano_nascimento,idade: integer;
begin
    clrscr;
    writeln('Programa que diz se voc� tem idade para votar e dirigir.');
    writeln('Digite o ano em que voc� nasceu: ');
    readln(ano_nascimento);
    idade := ano_atual - ano_nascimento;
    if(idade < 16)
        then writeln('Voc� n�o pode votar nem dirigir.');
    if((idade >= 16) and (idade < 18))
        then writeln('Voc� n�o pode dirigir mas pode votar.');
    if(idade >= 18)
        then writeln('Voc� pode dirigir e votar.');
    repeat until keypressed;
end.