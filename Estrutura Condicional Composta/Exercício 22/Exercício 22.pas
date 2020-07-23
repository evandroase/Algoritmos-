//Exercicio 22:Escreva um algoritmo que receba o nome e a idade de uma pessoa. Exibir o nome da pessoa e a expressão 
//"Maior de Idade" ou a expressão "Menor de Idade".
{		      Solução em Portugol
Algoritmo Exercicio 22;
Var
  idade: inteiro;
  nome: caracter;
Inicio
  exiba("Programa que diz se você é maior ou menor de idade.");
  exiba("Digite o seu nome: ");
  leia(nome);
  exiba("Digite sua idade:");
  leia(idade);
  se(idade < 18)
    então exiba(nome," é Menor de Idade.")
    senão exiba(nome," é Maior de Idade.");
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio22;
uses crt;
var
  idade: integer;
  nome: string;
begin
  clrscr;
  writeln('Programa que diz se você é maior ou menor de idade.');
  writeln('Digite o seu nome: ');
  readln(nome);
  writeln('Digite a sua idade: ');
  readln(idade);
  if(idade < 18)
    then writeln(nome,' é Menor de Idade.')
    else writeln(nome,' é Maior de Idade.');
  repeat until keypressed;
end.