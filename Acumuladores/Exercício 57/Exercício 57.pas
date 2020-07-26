{
Exercicio 57: Em uma elei��o municipal existem quatro candidatos. Os votos s�o informados atrav�s de c�digo.
Os dados utilizados para a escrutinagem obedecem � seguinte codifica��o:
    1,2,3 e 4 = voto para os respectivos candidatos;
    5 = voto nulo;
    6 = voto em branco.
Elabore um algoritmo que receba os nomes dos candidatos e que calcule e exiba:

a) total de votos de cada candidato;
b) total de votos nulos;
c) total de votos em brancos;
d) percentual dos votos brancos e nulos sobre o total.

Como finalizador do conjunto de votos, tem-se o valor 0.

}
{         Solu��o em Portugol
Algoritmo Exercicio 57;
Var
  candidato1,candidato2,candidato3,candidato4,nulo,branco: inteiro;
  percentual: real;
	voto: caracter;
Inicio
  exiba("Urna eletr�nica municipal.");
  voto <- '8';                                //Zerando os acumuladores e colocando um valor qualquer 
  candidato1 <- 0;                           //em voto para acessar o loop.
  candidato2 <- 0;
  candidato3 <- 0;
  candidato4 <- 0;
  branco <- 0;
  nulo <- 0;
  enquanto(voto <> 0)fa�a
    exiba("Digite entre 1-4 para votar nos respectivos candidatos, 5 para votar nulo e 6 para votar branco.");
    leia(voto);
    caso(voto)de
      "1": candidato1 <- candidato1 + 1;                //Votos s�o acumulados aqui.
      "2": candidato2 <- candidato2 + 1;
      "3": candidato3 <- candidato3 + 1;
      "4": candidato4 <- candidato4 + 1;
      "5": nulo <- nulo + 1;
      "6": branco <- branco + 1;
      sen�o exiba("Digite uma op��o v�lida.");
    fimcaso;
  fimenquanto;
  percentual <- 100 * (branco + nulo)/(candidato1 + candidato2 + candidato3 + candidato + branco + nulo);
  exiba("Apura��o da urna eletr�nica.");                //Exibi��o dos resultados da elei��o.
  exiba("O candidato 1 teve ",candidato1," votos.");	
  exiba("O candidato 2 teve ",candidato2," votos.");
  exiba("O candidato 3 teve ",candidato3," votos.");
  exiba("O candidato 4 teve ",candidato4," votos.");
  exiba("Votos brancos: ",branco);
  exiba("Votos nulos: ",nulo);
  exiba("O percentual de votos brancos e nulos foi de: ",percentual:0:2),
Fim.
}

// Solu��o em Pascal

Program Exercicio57;
uses crt;
var
  candidato1,candidato2,candidato3,candidato4,nulo,branco: integer;
  percentual: real;
	voto: char;
begin
  clrscr;
  writeln('Urna eletr�nica municipal.');
  voto := '8';                                //Zerando os acumuladores e colocando um valor qualquer
  candidato1 := 0;                           //em voto para acessar o loop.
  candidato2 := 0;
  candidato3 := 0;
  candidato4 := 0;
  branco := 0;
  nulo := 0;
  while(voto <> '0')do
  Begin
    writeln('Digite entre 1-4 para votar nos respectivos candidatos, 5 para votar nulo e 6 para votar branco.');
    readln(voto);
    case(voto)of
      '1': candidato1 := candidato1 + 1;                //Votos s�o acumulados aqui.
      '2': candidato2 := candidato2 + 1;
      '3': candidato3 := candidato3 + 1;
      '4': candidato4 := candidato4 + 1;
      '5': nulo := nulo + 1;
      '6': branco := branco + 1;
      else writeln('Digite uma op��o v�lida.');
    end;
  End;
  percentual := 100 * (branco + nulo)/(candidato1 + candidato2 + candidato3 + candidato4 + branco + nulo);
  writeln('Apura��o da urna eletr�nica.');                //Exibi��o dos resultados da elei��o.
  writeln('O candidato 1 teve ',candidato1,' votos.');
  writeln('O candidato 2 teve ',candidato2,' votos.');
  writeln('O candidato 3 teve ',candidato3,' votos.');
  writeln('O candidato 4 teve ',candidato4,' votos.');
  writeln('Votos brancos: ',branco);
  writeln('Votos nulos: ',nulo);
  writeln('O percentual de votos brancos e nulos foi de: ',percentual:0:2,'%.');
  repeat until keypressed;
end.