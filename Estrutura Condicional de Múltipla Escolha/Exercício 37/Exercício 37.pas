{
Exercicio 37: Um cinema colheu de um espectador as respostas de um questionário, no qual constava: sua idade e sua
opinião em relação ao filme, segundo as seguintes notas:

Nota           Significado
 A                Ótimo
 B                 Bom
 C               Regular
 D                Ruim
 E               Péssimo
OBS: Faltou o resto do exercício. Vou exibir na tela a idade da pessoa e a nota que ela deu.
}
{		      Solução em Portugol
Algoritmo Exercicio 37;
Var
  idade: inteiro;
  nota: caracter;
Inicio
  exiba("Pesquisa de satisfação com o filme.");
  exiba("Qual a sua idade: ");
  leia(idade);
  exiba("Dê uma nota de A até E para o filme, sendo A = ótimo e E = péssimo.");
  leia(nota);
  caso(nota)de
    "A": exiba("Você tem ",idade," anos e avaliou o filme como sendo ótimo.");
    "B": exiba("Você tem ",idade," anos e avaliou o filme como sendo bom.");
    "C": exiba("Você tem ",idade," anos e avaliou o filme como sendo regular.");
    "D": exiba("Você tem ",idade," anos e avaliou o filme como sendo ruim.");
    "E": exiba("Você tem ",idade," anos e avaliou o filme como sendo péssimo.");
    else exiba("Nota inválida.");
  fimcaso;
Fim.
}

// Solução em Pascal

Program Exercicio37;
uses crt;
var
  idade: integer;
  nota: char;
begin
  clrscr;
  writeln('Pesquisa de satisfação com o filme.');
  writeln('Qual a sua idade: ');
  readln(idade);
  writeln('Dê uma nota de A até E para o filme, sendo A = ótimo e E = péssimo.');
  readln(nota);
  case(nota)of
    'A': writeln('Você tem ',idade,' anos e avaliou o filme como sendo ótimo.');
    'B': writeln('Você tem ',idade,' anos e avaliou o filme como sendo bom.');
    'C': writeln('Você tem ',idade,' anos e avaliou o filme como sendo regular.');
    'D': writeln('Você tem ',idade,' anos e avaliou o filme como sendo ruim.');
    'E': writeln('Você tem ',idade,' anos e avaliou o filme como sendo péssimo.');
    else writeln('Nota inválida.');
	end;
  repeat until keypressed;
end.