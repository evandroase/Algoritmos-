//Exercicio 22:Escreva um algoritmo que receba o nome e a idade de uma pessoa. Exibir o nome da pessoa e a express�o 
//"Maior de Idade" ou a express�o "Menor de Idade".
{		      Solu��o em Portugol
Algoritmo Exercicio 22;
Var
  idade: inteiro;
  nome: caracter;
Inicio
  exiba("Programa que diz se voc� � maior ou menor de idade.");
  exiba("Digite o seu nome: ");
  leia(nome);
  exiba("Digite sua idade:");
  leia(idade);
  se(idade < 18)
    ent�o exiba(nome," � Menor de Idade.")
    sen�o exiba(nome," � Maior de Idade.");
  fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio22;
uses crt;
var
  idade: integer;
  nome: string;
begin
  clrscr;
  writeln('Programa que diz se voc� � maior ou menor de idade.');
  writeln('Digite o seu nome: ');
  readln(nome);
  writeln('Digite a sua idade: ');
  readln(idade);
  if(idade < 18)
    then writeln(nome,' � Menor de Idade.')
    else writeln(nome,' � Maior de Idade.');
  repeat until keypressed;
end.