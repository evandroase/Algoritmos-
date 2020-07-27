{
Exercicio 60: Em um pr�dio h� tr�s elevadores denominados A, B e C. Para otimizar o sistema de controle dos elevadores,
foi realizado um levantamento no qual cada usu�rio respondia:

a) o elevador que utilizava com mais freq��ncia;
b) o per�odo que utilizava o elevador, entre: ("M" = Matutino, "V" = Vespertino, "N" = Noturno).

Deve ser fornecido o n�mero de habitantes do pr�dio.

Construa um algoritmo que possa responder:
a) qual � o elevador mais freq�entado e em que per�odo se concentra o maior fluxo;
b) qual o per�odo mais usado de todos e a que elevador pertence;
c) qual a diferen�a percentual entre o mais usado dos hor�rios e o menos usado;
d) qual a porcentagem sobre o total de servi�os prestados do elevador de m�dia
utiliza��o.
}

{         Solu��o em Portugol
Algoritmo Exercicio 60;
Var
  matutino, vespertino, noturno: real;
  A, B, C, matutino_a, vespertino_a, noturno_a, matutino_b, vespertino_b, noturno_b,
  matutino_c, vespertino_c, noturno_c, moradores: inteiro;
Inicio
  A <- 0;                                  // Zerando os acumuladores.
  B <- 0;
  C <- 0;                                  // A,B,C -> quantidade de uso dos elevadores
  matutino <- 0;                           // matutino,vespertino,noturno -> total de uso dos per�odos
  vespertino <- 0;                         // matutino_a, vespertino_a, noturno_a -> per�odos do elevador a
  noturno <- 0;                            // matutino_b, vespertino_b, noturno_b -> per�odos do elevador b
  matutino_a <- 0;                         // matutino_c, vespertino_c, noturno_c -> per�odos do elevador c
  vespertino_a <- 0;                        
  noturno_a <- 0;
  matutino_b <- 0;
  vespertino_b <- 0;
  noturno_b <- 0;
  matutino_c <- 0;
  vespertino_c <- 0;
  noturno_c <- 0;

  exiba("Pesquisa para otimizar o uso de elevadores.");
  exiba("Digite quantos moradores o pr�dio possui: ");
  leia(moradores);
Fim.
}

// Solu��o em Pascal

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