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
  matutino_c, vespertino_c, noturno_c, moradores,contador: inteiro;
  elevador, periodo: caracter;
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
  para contador <- 1 at� moradores fa�a
    exiba("Qual elevador voc� mais utiliza?");
    leia(elevador);
    enquanto((elevador <> "A") e (elevador <> "B") e (elevador <> "C"))fa�a             // Consist�ncia de dados
      exiba("Escolha entre o elevador A, B e C");
      leia(elevador);
    fimenquanto;
    exiba("Qual o per�odo que voc� mais utiliza o elevador?");
    leia(periodo);
    enquanto((periodo <> "M") e (periodo <> "V") e (periodo <> "N"))fa�a             // Consist�ncia de dados
      exiba("Escolha entre os periodos matutino(M), vespertino (V) e noturno (N)");
      leia(periodo);
    fimenquanto;
    caso(elevador)de
      "A": Inicio
             A <- A + 1;                                        // Acumulando os usos de elevadores e per�odos de uso.
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
    fimcaso;                                                  // pq o exerc�cio ficaria muito grande.
  fimpara;
  matutino <- matutino_a + matutino_b + matutino_c;           // Total de usos em cada per�odo.
  vespertino <- vespertino_a + vespertino_b + vespertino_c;
  noturno <- noturno_a + noturno_b + noturno_c;
  se((A > B) e (A > C))                                      
    ent�o Inicio                                                                //Quest�o (a)
            exiba("O elevador mais utilizado foi o A.");
            se((matutino_a > vespertino_a) e (matutino_a > noturno_a))
              ent�o exiba("No per�odo da manh�.")
              sen�o se((vespertino_a > matutino_a) e (vespertino_a > noturno_a))
                      ent�o exiba("No per�odo da tarde.")
                      sen�o exiba("No per�odo da noite.");
                    fimse;
            fimse;
          Fim
    sen�o se((B > A) e (B > C))
            ent�o Inicio
                    exiba("O elevador mais utilizado foi o B.");
                    se((matutino_b > vespertino_b) e (matutino_b > noturno_b))
                      ent�o exiba("No per�odo da manh�.")
                      sen�o se((vespertino_b > matutino_b) e (vespertino_b > noturno_b))
                              ent�o exiba("No per�odo da tarde.")
                              sen�o exiba("No per�odo da noite.");
                            fimse;
                    fimse;
                  Fim
            sen�o se((C > B) e (C > A))
                    ent�o Inicio
                            exiba("O elevador mais utilizado foi o C.");
                            se((matutino_c > vespertino_c) e (matutino_c > noturno_c))
                              ent�o exiba("No per�odo da manh�.")
                              sen�o se((vespertino_c > matutino_c) e (vespertino_c > noturno_c))
                                      ent�o exiba("No per�odo da tarde.")
                                      sen�o exiba("No per�odo da noite.");
                                    fimse;
                            fimse;
                          Fim
                  fimse;
          fimse;
	fimse;
Fim.
}

// Solu��o em Pascal

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
  matutino := 0;                           // matutino,vespertino,noturno -> total de uso dos per�odos
  vespertino := 0;                         // matutino_a, vespertino_a, noturno_a -> per�odos do elevador a
  noturno := 0;                            // matutino_b, vespertino_b, noturno_b -> per�odos do elevador b
  matutino_a := 0;                         // matutino_c, vespertino_c, noturno_c -> per�odos do elevador c
  vespertino_a := 0;
  noturno_a := 0;
  matutino_b := 0;
  vespertino_b := 0;
  noturno_b := 0;
  matutino_c := 0;
  vespertino_c := 0;
  noturno_c := 0;
  writeln('Pesquisa para otimizar o uso de elevadores.');
  writeln('Digite quantos moradores o pr�dio possui: ');
  readln(moradores);
  for contador := 1 to moradores do
  Begin
    writeln('Qual elevador voc� mais utiliza?');
    readln(elevador);
    while((elevador <> 'A') and (elevador <> 'B') and (elevador <> 'C'))do             // Consist�ncia de dados
    Begin
      writeln('Escolha entre o elevador A, B e C:');
      readln(elevador);
    End;
    writeln('Qual o per�odo que voc� mais utiliza o elevador?');
    readln(periodo);
    while((periodo <> 'M') and (periodo <> 'V') and (periodo <> 'N'))do             // Consist�ncia de dados
    Begin
			writeln('Escolha entre os periodos matutino(M), vespertino (V) e noturno (N)');
      readln(periodo);
    End;
    case(elevador)of                                   // Acumulando os usos de elevadores e per�odos de uso.
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
    End;                                                      // pq o exerc�cio ficaria muito grande.
  End;
  matutino := matutino_a + matutino_b + matutino_c;           // Total de usos em cada per�odo.
  vespertino := vespertino_a + vespertino_b + vespertino_c;
  noturno := noturno_a + noturno_b + noturno_c;
  if((A > B) and (A > C))
    then Begin                                                                //Quest�o (a)
            writeln('O elevador mais utilizado foi o A.');
            if((matutino_a > vespertino_a) and (matutino_a > noturno_a))
              then writeln('No per�odo da manh�.')
              else if((vespertino_a > matutino_a) and (vespertino_a > noturno_a))
                      then writeln('No per�odo da tarde.')
                      else writeln('No per�odo da noite.');
          End
    else if((B > A) and (B > C))
            then Begin
                    writeln('O elevador mais utilizado foi o B.');
                    if((matutino_b > vespertino_b) and (matutino_b > noturno_b))
                      then writeln('No per�odo da manh�.')
                      else if((vespertino_b > matutino_b) and (vespertino_b > noturno_b))
                              then writeln('No per�odo da tarde.')
                              else writeln('No per�odo da noite.');
                  End
            else if((C > B) and (C > A))
                    then Begin
                            writeln('O elevador mais utilizado foi o C.');
                            if((matutino_c > vespertino_c) and (matutino_c > noturno_c))
                              then writeln('No per�odo da manh�.')
                              else if((vespertino_c > matutino_c) and (vespertino_c > noturno_c))
                                      then writeln('No per�odo da tarde.')
                                      else writeln('No per�odo da noite.');
                         End;
  repeat until keypressed;
end.