//Exercicio 21:Fa�a um algoritmo que leia o ano de nascimento de uma pessoa, calcule e mostre sua idade e, tamb�m,
//verifique e mostre se ela j� tem idade para votar (16 anos ou mais) e para obter a carteira de habilita��o 
//(18 anos ou mais).
{		      Solu��o em Portugol
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
  exiba("Voc� tem ",idade," anos.");
  se(idade < 16)
    ent�o exiba("Voc� n�o pode votar.")
    sen�o exiba("Voc� j� pode votar.");
  fimse;
  se(idade < 18)
    ent�o exiba("Voc� n�o pode obter a carteira de habilita��o.")
    sen�o exiba("Voc� pode obter a carteira de habilita��o.");
  fimse;
Fim.
}

// Solu��o em Pascal

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
  writeln('Voc� tem ',idade,' anos.');
  if(idade < 16)
    then writeln('Voc� n�o pode votar.')
    else writeln('Voc� j� pode votar.');
  if(idade < 18)
    then writeln('Voc� n�o pode obter a carteira de habilita��o.')
    else writeln('Voc� pode obter a carteira de habilita��o.');
  repeat until keypressed;
end.