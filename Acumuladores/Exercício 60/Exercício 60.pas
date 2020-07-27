{
Exercicio 60: Em um prédio há três elevadores denominados A, B e C. Para otimizar o sistema de controle dos elevadores,
foi realizado um levantamento no qual cada usuário respondia:

a) o elevador que utilizava com mais freqüência;
b) o período que utilizava o elevador, entre: ("M" = Matutino, "V" = Vespertino, "N" = Noturno).

Deve ser fornecido o número de habitantes do prédio.

Construa um algoritmo que possa responder:
a) qual é o elevador mais freqüentado e em que período se concentra o maior fluxo;
b) qual o período mais usado de todos e a que elevador pertence;
c) qual a diferença percentual entre o mais usado dos horários e o menos usado;
d) qual a porcentagem sobre o total de serviços prestados do elevador de média
utilização.
}

{         Solução em Portugol
Algoritmo Exercicio 60;
Var
  matutino, vespertino, noturno: real;
  A, B, C, matutino_a, vespertino_a, noturno_a, matutino_b, vespertino_b, noturno_b,
  matutino_c, vespertino_c, noturno_c, moradores: inteiro;
Inicio
  A <- 0;                                  // Zerando os acumuladores.
  B <- 0;
  C <- 0;                                  // A,B,C -> quantidade de uso dos elevadores
  matutino <- 0;                           // matutino,vespertino,noturno -> total de uso dos períodos
  vespertino <- 0;                         // matutino_a, vespertino_a, noturno_a -> períodos do elevador a
  noturno <- 0;                            // matutino_b, vespertino_b, noturno_b -> períodos do elevador b
  matutino_a <- 0;                         // matutino_c, vespertino_c, noturno_c -> períodos do elevador c
  vespertino_a <- 0;                        
  noturno_a <- 0;
  matutino_b <- 0;
  vespertino_b <- 0;
  noturno_b <- 0;
  matutino_c <- 0;
  vespertino_c <- 0;
  noturno_c <- 0;

  exiba("Pesquisa para otimizar o uso de elevadores.");
  exiba("Digite quantos moradores o prédio possui: ");
  leia(moradores);
Fim.
}

// Solução em Pascal

Program Exercicio60;
uses crt;
const
  const1 = 1;
var
  var1: real;
begin
  clrscr;
  writeln('');
  readln();
  repeat until keypressed;
end.