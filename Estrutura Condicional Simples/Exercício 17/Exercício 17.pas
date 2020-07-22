//Exercicio 17: Faça um algoritmo que leia o ano de nascimento de uma pessoa, calcule e mostre sua idade e, também,
//verifique e mostre se ela já tem idade para votar (16 anos ou mais) e para obter a carteira de habilitação
//(18 anos ou mais).

{		      Solução em Portugol
Algoritmo Exercicio ;
Const
    ano_atual = 2020;
Var
    ano_nascimento,idade: inteiro;
Inicio
    exiba("Programa que diz se você tem idade para votar e dirigir.");
    exiba("Digite o ano em que você nasceu: ");
    leia(ano_nascimento);
    idade <- ano_atual - ano_nascimento;
    se(idade < 16)
        então exiba("Você não pode votar nem dirigir.);
    fimse;
    se(idade >= 16 e idade < 18)
        então exiba("Você não pode dirigir mas pode votar.");
    fimse;
    se(idade >= 18)
        então exiba("Você pode dirigir e votar.");
Fim.
}

// Solução em Pascal

Program Exercicio;
uses crt;
const
    ano_atual = 2020;
var
    ano_nascimento,idade: integer;
begin
    clrscr;
    writeln('Programa que diz se você tem idade para votar e dirigir.');
    writeln('Digite o ano em que você nasceu: ');
    readln(ano_nascimento);
    idade := ano_atual - ano_nascimento;
    if(idade < 16)
        then writeln('Você não pode votar nem dirigir.');
    if((idade >= 16) and (idade < 18))
        then writeln('Você não pode dirigir mas pode votar.');
    if(idade >= 18)
        then writeln('Você pode dirigir e votar.');
    repeat until keypressed;
end.