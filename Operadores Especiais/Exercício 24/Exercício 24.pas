{ Exercicio 24: Escreva um algoritmo que receba o nome e a idade de uma pessoa. Exibir o nome da pessoa e as
 seguintes expressões, conforme o caso:
 
	Idade						Expressão
Abaixo de 16 anos			Parabéns! Mas você é muito jovem.
Entre 16 e 17 anos			Parabéns! Você já pode votar.
Entre 18 e 21 anos			Parabéns! Você já pode votar e tirar carteira de motorista.
Acima de 21 anos			Parabéns! Você está ficando experiente.
}


{		      Solução em Portugol
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
    então exiba("Parabéns ",nome,"! Mas você é muito jovem.");
  fimse;
  se((idade = 16) ou (idade = 17))
    então exiba("Parabéns ",nome,"! Você já pode votar.");
  fimse;
  se((idade >= 18) e (idade <= 21))
    então exiba("Parabéns ",nome,"! Você já pode votar e tirar carteira de motorista.");
  fimse;
  se(idade > 21)
    então exiba("Parabéns ",nome,"! Você está ficando experiente.");
  fimse;
Fim.
}

// Solução em Pascal

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
    then writeln('Parabéns ',nome,'! Mas você é muito jovem.');
  if((idade = 16) or (idade = 17))
    then writeln('Parabéns ',nome,'! Você já pode votar.');
  if((idade >= 18) and (idade <= 21))
    then writeln('Parabéns ',nome,'! Você já pode votar e tirar carteira de motorista.');
  if(idade > 21)
    then writeln('Parabéns ',nome,'! Você está ficando experiente.');
  repeat until keypressed;
end.