//Exercicio 21:Faça um algoritmo que leia o ano de nascimento de uma pessoa, calcule e mostre sua idade e, também,
//verifique e mostre se ela já tem idade para votar (16 anos ou mais) e para obter a carteira de habilitação 
//(18 anos ou mais).
{		      Solução em Portugol
Algoritmo Exercicio 21;
Const
  ano_atual = 2020;
Var
  ano_nascimento,idade: inteiro;
Inicio
  exiba("Programa que determina se a pessoa pode dirigir e/ou votar.");
  exiba("Digite o seu ano de nascimento: ");
  leia(ano_nascimento);
  idade <- ano_atual - ano_nascimento;
  exiba("Você tem ",idade," anos.");
  se(idade < 16)
    então exiba("Você não pode votar.")
    senão exiba("Você já pode votar.");
  fimse;
  se(idade < 18)
    então exiba("Você não pode obter a carteira de habilitação.")
    senão exiba("Você pode obter a carteira de habilitação.");
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio21;
uses crt;
const
  ano_atual = 2020;
var
  ano_nascimento,idade: integer;
begin
  clrscr;
  writeln('Programa que determina se a pessoa pode dirigir e/ou votar.');
  writeln('Digite o seu ano de nascimento: ');
  readln(ano_nascimento);
  idade := ano_atual - ano_nascimento;
  writeln('Você tem ',idade,' anos.');
  if(idade < 16)
    then writeln('Você não pode votar.')
    else writeln('Você já pode votar.');
  if(idade < 18)
    then writeln('Você não pode obter a carteira de habilitação.')
    else writeln('Você pode obter a carteira de habilitação.');
  repeat until keypressed;
end.