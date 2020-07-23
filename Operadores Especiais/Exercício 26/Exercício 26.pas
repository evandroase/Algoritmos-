{
Exercicio 26:Escreva um algoritmo que receba o nome e a idade de um atleta para uma competição. No final, exibir um
boletim constando o nome do atleta e sua respectiva categoria, baseando-se na tabela abaixo:

    Idade                   Categoria
Abaixo de 08 anos       Não pode participar!
Entre 08 e 10 anos      Pré-Mirim
Entre 11 e 13 anos      Mirim
Entre 14 e 16 anos      Infantil
Entre 17 e 19 anos      Juvenil
Acima de 19 anos        Veterano
}

{		      Solução em Portugol
Algoritmo Exercicio 26;
Var
  idade: inteiro;
  nome: caracter;
Inicio
  exiba("Programa que define a sua categoria no esporte.");
  exiba("Digite o seu nome: ");
  leia(nome);
  exiba("Digite a sua idade: ");
  leia(idade);
  se(idade < 8)
    então exiba(nome," : Não pode participar!");
  fimse;
  se((idade >= 8) e (idade < 11))
    então exiba(nome," : Pré-Mirim");
  fimse;
  se((idade >= 11) e (idade < 14))
    então exiba(nome," : Mirim");
  fimse;
  se((idade >= 14) e (idade < 17))
    então exiba(nome," : Infantil");
  fimse;
  se((idade >= 17) e (idade <= 19))
    então exiba(nome," : Juvenil");
  fimse;
  se(idade > 19)
    então exiba(nome," : Veterano");
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio26;
uses crt;
var
  idade: integer;
  nome: string;
begin
  clrscr;
  writeln('Programa que define a sua categoria no esporte.');
  writeln('Digite o seu nome: ');
  readln(nome);
  writeln('Digite a sua idade: ');
  readln(idade);
  if(idade < 8)
    then writeln(nome,' : Não pode participar!');
  if((idade >= 8) and (idade < 11))
    then writeln(nome,' : Pré-Mirim');
  if((idade >= 11) and (idade < 14))
    then writeln(nome,' : Mirim');
  if((idade >= 14) and (idade < 17))
    then writeln(nome,' : Infantil');
  if((idade >= 17) and (idade <= 19))
    then writeln(nome,' : Juvenil');
  if(idade > 19)
    then writeln(nome,' : Veterano');
  repeat until keypressed;
end.