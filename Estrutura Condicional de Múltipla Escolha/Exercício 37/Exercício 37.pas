{
Exercicio 37: Um cinema colheu de um espectador as respostas de um question�rio, no qual constava: sua idade e sua
opini�o em rela��o ao filme, segundo as seguintes notas:

Nota           Significado
 A                �timo
 B                 Bom
 C               Regular
 D                Ruim
 E               P�ssimo
OBS: Faltou o resto do exerc�cio. Vou exibir na tela a idade da pessoa e a nota que ela deu.
}
{		      Solu��o em Portugol
Algoritmo Exercicio 37;
Var
  idade: inteiro;
  nota: caracter;
Inicio
  exiba("Pesquisa de satisfa��o com o filme.");
  exiba("Qual a sua idade: ");
  leia(idade);
  exiba("D� uma nota de A at� E para o filme, sendo A = �timo e E = p�ssimo.");
  leia(nota);
  caso(nota)de
    "A": exiba("Voc� tem ",idade," anos e avaliou o filme como sendo �timo.");
    "B": exiba("Voc� tem ",idade," anos e avaliou o filme como sendo bom.");
    "C": exiba("Voc� tem ",idade," anos e avaliou o filme como sendo regular.");
    "D": exiba("Voc� tem ",idade," anos e avaliou o filme como sendo ruim.");
    "E": exiba("Voc� tem ",idade," anos e avaliou o filme como sendo p�ssimo.");
    else exiba("Nota inv�lida.");
  fimcaso;
Fim.
}

// Solu��o em Pascal

Program Exercicio37;
uses crt;
var
  idade: integer;
  nota: char;
begin
  clrscr;
  writeln('Pesquisa de satisfa��o com o filme.');
  writeln('Qual a sua idade: ');
  readln(idade);
  writeln('D� uma nota de A at� E para o filme, sendo A = �timo e E = p�ssimo.');
  readln(nota);
  case(nota)of
    'A': writeln('Voc� tem ',idade,' anos e avaliou o filme como sendo �timo.');
    'B': writeln('Voc� tem ',idade,' anos e avaliou o filme como sendo bom.');
    'C': writeln('Voc� tem ',idade,' anos e avaliou o filme como sendo regular.');
    'D': writeln('Voc� tem ',idade,' anos e avaliou o filme como sendo ruim.');
    'E': writeln('Voc� tem ',idade,' anos e avaliou o filme como sendo p�ssimo.');
    else writeln('Nota inv�lida.');
	end;
  repeat until keypressed;
end.