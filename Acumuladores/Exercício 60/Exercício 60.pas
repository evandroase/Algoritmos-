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
  matutino_c, vespertino_c, noturno_c, moradores,contador: inteiro;
  elevador, periodo: caracter;
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
  para contador <- 1 até moradores faça
    exiba("Qual elevador você mais utilizar?");
    leia(elevador);
    enquanto((elevador <> "A") e (elevador <> "B") e (elevador <> "C"))             // Consistência de dados
      exiba("Escolha entre o elevador A, B e C");
      leia(elevador);
    fimenquanto;
    exiba("Qual o período que você mais utiliza o elevador?");
    leia(periodo);
    enquanto((periodo <> "M") e (periodo <> "V") e (periodo <> "N"))             // Consistência de dados
      exiba("Escolha entre os periodos matutino(M), vespertino (V) e noturno (N)");
      leia(periodo);
    fimenquanto;
    caso(elevador)de
      "A": Inicio
             A <- A + 1;
             caso(periodo)de
               "M": matutino_a <- matutino_a + 1;
               "V": vespertino_a <- vespertino_a + 1;
               "N": noturno_a <- noturno_a + 1;
             fimcaso;
           Fim;
      "B": Inicio
             B <- B + 1;
             caso(periodo)de
               "M": matutino_b <- matutino_b + 1;
               "V": vespertino_b <- vespertino_b + 1;
               "N": noturno_b <- noturno_b + 1;
             fimcaso;
           Fim;
      "C": Inicio
             C <- C + 1;
             caso(periodo)de
               "M": matutino_c <- matutino_c + 1;
               "V": vespertino_c <- vespertino_c + 1;
               "N": noturno_c <- noturno_c + 1;
             fimcaso;
           Fim;                                               // OBS: Eu estou ignorando os casos em que existem igualdades
    fimcaso;                                                  // pq o exercício ficaria muito grande.
  fimpara;
  matutino <- matutino_a + matutino_b + matutino_c;           // Total de usos em cada período.
  vespertino <- vespertino_a + vespertino_b + vespertino_c;
  noturno <- noturno_a + noturno_b + noturno_c;
  se((A > B) e (A > C))                                      
    então Inicio                                                                //Questão (a)
            exiba("O elevador mais utilizado foi o A.");
            se((matutino_a > vespertino_a) e (matutino_a > noturno_a))
              então exiba("No período da manhã.")
              senão se((vespertino_a > matutino_a) e (vespertino_a > noturno_a))
                      então exiba("No período da tarde.")
                      senão exiba("No período da noite.");
                    fimse;
            fimse;
          Fim
    senão se((B > A) e (C > A))
            então Inicio
                    exiba("O elevador mais utilizado foi o B.");
                    se((matutino_b > vespertino_b) e (matutino_b > noturno_b))
                      então exiba("No período da manhã.")
                      senão se((vespertino_b > matutino_b) e (vespertino_b > noturno_b))
                              então exiba("No período da tarde.")
                              senão exiba("No período da noite.");
                            fimse;
                    fimse;
                  Fim
            senão se((C > B) e (C > A))
                    então Inicio
                            exiba("O elevador mais utilizado foi o B.");
                            se((matutino_c > vespertino_c) e (matutino_c > noturno_c))
                              então exiba("No período da manhã.")
                              senão se((vespertino_c > matutino_c) e (vespertino_c > noturno_c))
                                      então exiba("No período da tarde.")
                                      senão exiba("No período da noite.");
                                    fimse;
                            fimse;
                          Fim
                  fimse;
          fimse;
	fimse;
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