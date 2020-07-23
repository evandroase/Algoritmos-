{ Exercicio 24: Escreva um algoritmo que receba o nome e a idade de uma pessoa. Exibir o nome da pessoa e as
 seguintes express�es, conforme o caso:
 
	Idade						Express�o
Abaixo de 16 anos			Parab�ns! Mas voc� � muito jovem.
Entre 16 e 17 anos			Parab�ns! Voc� j� pode votar.
Entre 18 e 21 anos			Parab�ns! Voc� j� pode votar e tirar carteira de motorista.
Acima de 21 anos			Parab�ns! Voc� est� ficando experiente.
}


{		      Solu��o em Portugol
Algoritmo Exercicio 24;
Var
  idade: inteiro;
  nome: caracter;
Inicio
  exiba("Programa que avalia a sua idade.");
  exiba("Digite o seu nome: ");
  leia(nome);
  exiba("Digite a sua idade: ");
  leia(idade);
  se(idade < 16)
    ent�o exiba("Parab�ns ",nome,"! Mas voc� � muito jovem.");
  fimse;
  se((idade = 16) ou (idade = 17))
    ent�o exiba("Parab�ns ",nome,"! Voc� j� pode votar.");
  fimse;
  se((idade >= 18) e (idade <= 21))
    ent�o exiba("Parab�ns ",nome,"! Voc� j� pode votar e tirar carteira de motorista.");
  fimse;
  se(idade > 21)
    ent�o exiba("Parab�ns ",nome,"! Voc� est� ficando experiente.");
  fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio24;
uses crt;
var
  idade: integer;
  nome: string;
begin
  clrscr;
  writeln('Programa que avalia a sua idade.');
  writeln('Digite o seu nome: ');
  readln(nome);
  writeln('Digite a sua idade: ');
  readln(idade);
  if(idade < 16)
    then writeln('Parab�ns ',nome,'! Mas voc� � muito jovem.');
  if((idade = 16) or (idade = 17))
    then writeln('Parab�ns ',nome,'! Voc� j� pode votar.');
  if((idade >= 18) and (idade <= 21))
    then writeln('Parab�ns ',nome,'! Voc� j� pode votar e tirar carteira de motorista.');
  if(idade > 21)
    then writeln('Parab�ns ',nome,'! Voc� est� ficando experiente.');
  repeat until keypressed;
end.