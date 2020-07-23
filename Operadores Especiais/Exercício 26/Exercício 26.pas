{
Exercicio 26:Escreva um algoritmo que receba o nome e a idade de um atleta para uma competi��o. No final, exibir um
boletim constando o nome do atleta e sua respectiva categoria, baseando-se na tabela abaixo:

    Idade                   Categoria
Abaixo de 08 anos       N�o pode participar!
Entre 08 e 10 anos      Pr�-Mirim
Entre 11 e 13 anos      Mirim
Entre 14 e 16 anos      Infantil
Entre 17 e 19 anos      Juvenil
Acima de 19 anos        Veterano
}

{		      Solu��o em Portugol
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
    ent�o exiba(nome," : N�o pode participar!");
  fimse;
  se((idade >= 8) e (idade < 11))
    ent�o exiba(nome," : Pr�-Mirim");
  fimse;
  se((idade >= 11) e (idade < 14))
    ent�o exiba(nome," : Mirim");
  fimse;
  se((idade >= 14) e (idade < 17))
    ent�o exiba(nome," : Infantil");
  fimse;
  se((idade >= 17) e (idade <= 19))
    ent�o exiba(nome," : Juvenil");
  fimse;
  se(idade > 19)
    ent�o exiba(nome," : Veterano");
  fimse;
Fim.
}

// Solu��o em Pascal

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
    then writeln(nome,' : N�o pode participar!');
  if((idade >= 8) and (idade < 11))
    then writeln(nome,' : Pr�-Mirim');
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