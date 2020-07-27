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
    exiba("Qual elevador você mais utiliza?");
    leia(elevador);
    enquanto((elevador <> "A") e (elevador <> "B") e (elevador <> "C"))faça             // Consistência de dados
      exiba("Escolha entre o elevador A, B e C");
      leia(elevador);
    fimenquanto;
    exiba("Qual o período que você mais utiliza o elevador?");
    leia(periodo);
    enquanto((periodo <> "M") e (periodo <> "V") e (periodo <> "N"))faça             // Consistência de dados
      exiba("Escolha entre os periodos matutino(M), vespertino (V) e noturno (N)");
      leia(periodo);
    fimenquanto;
    caso(elevador)de
      "A": Inicio
             A <- A + 1;                                        // Acumulando os usos de elevadores e períodos de uso.
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
    senão se((B > A) e (B > C))
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
                            exiba("O elevador mais utilizado foi o C.");
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
var
  matutino, vespertino, noturno: real;
  A, B, C, matutino_a, vespertino_a, noturno_a, matutino_b, vespertino_b, noturno_b,
  matutino_c, vespertino_c, noturno_c, moradores,contador: integer;
  elevador, periodo: char;
begin
  clrscr;
  A := 0;                                  // Zerando os acumuladores.
  B := 0;
  C := 0;                                  // A,B,C -> quantidade de uso dos elevadores
  matutino := 0;                           // matutino,vespertino,noturno -> total de uso dos períodos
  vespertino := 0;                         // matutino_a, vespertino_a, noturno_a -> períodos do elevador a
  noturno := 0;                            // matutino_b, vespertino_b, noturno_b -> períodos do elevador b
  matutino_a := 0;                         // matutino_c, vespertino_c, noturno_c -> períodos do elevador c
  vespertino_a := 0;
  noturno_a := 0;
  matutino_b := 0;
  vespertino_b := 0;
  noturno_b := 0;
  matutino_c := 0;
  vespertino_c := 0;
  noturno_c := 0;
  writeln('Pesquisa para otimizar o uso de elevadores.');
  writeln('Digite quantos moradores o prédio possui: ');
  readln(moradores);
  for contador := 1 to moradores do
  Begin
    writeln('Qual elevador você mais utiliza?');
    readln(elevador);
    while((elevador <> 'A') and (elevador <> 'B') and (elevador <> 'C'))do             // Consistência de dados
    Begin
      writeln('Escolha entre o elevador A, B e C:');
      readln(elevador);
    End;
    writeln('Qual o período que você mais utiliza o elevador?');
    readln(periodo);
    while((periodo <> 'M') and (periodo <> 'V') and (periodo <> 'N'))do             // Consistência de dados
    Begin
			writeln('Escolha entre os periodos matutino(M), vespertino (V) e noturno (N)');
      readln(periodo);
    End;
    case(elevador)of                                   // Acumulando os usos de elevadores e períodos de uso.
      'A': Begin
             A := A + 1;
             case(periodo)of
               'M': matutino_a := matutino_a + 1;
               'V': vespertino_a := vespertino_a + 1;
               'N': noturno_a := noturno_a + 1;
             End;
           End;
      'B': Begin
             B := B + 1;
             case(periodo)of
               'M': matutino_b := matutino_b + 1;
               'V': vespertino_b := vespertino_b + 1;
               'N': noturno_b := noturno_b + 1;
             End;
           End;
      'C': Begin
             C := C + 1;
             case(periodo)of
               'M': matutino_c := matutino_c + 1;
               'V': vespertino_c := vespertino_c + 1;
               'N': noturno_c := noturno_c + 1;
             End;
           End;                                               // OBS: Eu estou ignorando os casos em que existem igualdades
    End;                                                      // pq o exercício ficaria muito grande.
  End;
  matutino := matutino_a + matutino_b + matutino_c;           // Total de usos em cada período.
  vespertino := vespertino_a + vespertino_b + vespertino_c;
  noturno := noturno_a + noturno_b + noturno_c;
  if((A > B) and (A > C))
    then Begin                                                                //Questão (a)
            writeln('O elevador mais utilizado foi o A.');
            if((matutino_a > vespertino_a) and (matutino_a > noturno_a))
              then writeln('No período da manhã.')
              else if((vespertino_a > matutino_a) and (vespertino_a > noturno_a))
                      then writeln('No período da tarde.')
                      else writeln('No período da noite.');
          End
    else if((B > A) and (B > C))
            then Begin
                    writeln('O elevador mais utilizado foi o B.');
                    if((matutino_b > vespertino_b) and (matutino_b > noturno_b))
                      then writeln('No período da manhã.')
                      else if((vespertino_b > matutino_b) and (vespertino_b > noturno_b))
                              then writeln('No período da tarde.')
                              else writeln('No período da noite.');
                  End
            else if((C > B) and (C > A))
                    then Begin
                            writeln('O elevador mais utilizado foi o C.');
                            if((matutino_c > vespertino_c) and (matutino_c > noturno_c))
                              then writeln('No período da manhã.')
                              else if((vespertino_c > matutino_c) and (vespertino_c > noturno_c))
                                      then writeln('No período da tarde.')
                                      else writeln('No período da noite.');
                         End;
  repeat until keypressed;
end.