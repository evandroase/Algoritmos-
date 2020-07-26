{
Exercicio 57: Em uma eleição municipal existem quatro candidatos. Os votos são informados através de código.
Os dados utilizados para a escrutinagem obedecem à seguinte codificação:
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
{         Solução em Portugol
Algoritmo Exercicio 57;
Var
  candidato1,candidato2,candidato3,candidato4,nulo,branco: inteiro;
  percentual: real;
	voto: caracter;
Inicio
  exiba("Urna eletrônica municipal.");
  voto <- '8';                                //Zerando os acumuladores e colocando um valor qualquer 
  candidato1 <- 0;                           //em voto para acessar o loop.
  candidato2 <- 0;
  candidato3 <- 0;
  candidato4 <- 0;
  branco <- 0;
  nulo <- 0;
  enquanto(voto <> 0)faça
    exiba("Digite entre 1-4 para votar nos respectivos candidatos, 5 para votar nulo e 6 para votar branco.");
    leia(voto);
    caso(voto)de
      "1": candidato1 <- candidato1 + 1;                //Votos são acumulados aqui.
      "2": candidato2 <- candidato2 + 1;
      "3": candidato3 <- candidato3 + 1;
      "4": candidato4 <- candidato4 + 1;
      "5": nulo <- nulo + 1;
      "6": branco <- branco + 1;
      senão exiba("Digite uma opção válida.");
    fimcaso;
  fimenquanto;
  percentual <- 100 * (branco + nulo)/(candidato1 + candidato2 + candidato3 + candidato + branco + nulo);
  exiba("Apuração da urna eletrônica.");                //Exibição dos resultados da eleição.
  exiba("O candidato 1 teve ",candidato1," votos.");	
  exiba("O candidato 2 teve ",candidato2," votos.");
  exiba("O candidato 3 teve ",candidato3," votos.");
  exiba("O candidato 4 teve ",candidato4," votos.");
  exiba("Votos brancos: ",branco);
  exiba("Votos nulos: ",nulo);
  exiba("O percentual de votos brancos e nulos foi de: ",percentual:0:2),
Fim.
}

// Solução em Pascal

Program Exercicio57;
uses crt;
var
  candidato1,candidato2,candidato3,candidato4,nulo,branco: integer;
  percentual: real;
	voto: char;
begin
  clrscr;
  writeln('Urna eletrônica municipal.');
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
      '1': candidato1 := candidato1 + 1;                //Votos são acumulados aqui.
      '2': candidato2 := candidato2 + 1;
      '3': candidato3 := candidato3 + 1;
      '4': candidato4 := candidato4 + 1;
      '5': nulo := nulo + 1;
      '6': branco := branco + 1;
      else writeln('Digite uma opção válida.');
    end;
  End;
  percentual := 100 * (branco + nulo)/(candidato1 + candidato2 + candidato3 + candidato4 + branco + nulo);
  writeln('Apuração da urna eletrônica.');                //Exibição dos resultados da eleição.
  writeln('O candidato 1 teve ',candidato1,' votos.');
  writeln('O candidato 2 teve ',candidato2,' votos.');
  writeln('O candidato 3 teve ',candidato3,' votos.');
  writeln('O candidato 4 teve ',candidato4,' votos.');
  writeln('Votos brancos: ',branco);
  writeln('Votos nulos: ',nulo);
  writeln('O percentual de votos brancos e nulos foi de: ',percentual:0:2,'%.');
  repeat until keypressed;
end.