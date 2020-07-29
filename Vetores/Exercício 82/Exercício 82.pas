{
Exercicio 82: Fa�a um algoritmo que receba duas notas de 6 alunos e calcule e imprima:

a) a m�dia entre essas 2 notas de cada aluno;
b) a mensagem de acordo com a tabela abaixo;
c) o total de alunos aprovados e o total de alunos reprovados.

    M�dia           Mensagem   
0 = m�dia < 5       Reprovado 
5 <= m�dia < 7       Exame  
7 <= m�dia <= 10    Aprovado

}
{         Solu��o em Portugol
Algoritmo Exercicio 82;
Tipo
  vet = vetor[1..6] de real;
Var
  media,P1,P2: vet;
  i,aprovados,reprovados: inteiro;
Inicio
  exiba("Relat�rio de M�dias de uma turma.");
  aprovados <- 0;
  reprovados <- 0;
  para i <- 1 at� 6 fa�a                                            // Leitura de notas P1 e P2 entre 0 e 10.
    exiba("Digite a nota da P1 do ",i,"� aluno:");
    leia(P1[i]);
    enquanto(P1[i] < 0 ou P1[i] > 10)fa�a
      exiba("Digite uma nota entre 0 e 10 para a P1:");
      leia(P1[i]);
    fimenquanto;
    exiba("Digite a nota da P2 do ",i,"� aluno:");
    leia(P2[i]);
    enquanto(P2[i] < 0 ou P2[i] > 10)fa�a
      exiba("Digite uma nota entre 0 e 10 para a P2:");
      leia(P2[i]);
    fimenquanto;
    media[i] <- (P1[i] + P2[i])/2;
    se(media[i] < 5)                                          // Acumulando aprovados e reprovados.
      ent�o reprovados <- reprovados + 1
      sen�o se(media[i] >= 7)
              ent�o aprovados <- aprovados + 1;
            fimse;
    fimse;
  fimpara;
  exiba("Media            Mensagem");
  para i <- i at� 6 fa�a                                            // Exibindo segundo o padr�o do exerc�cio.
    se(media[i] < 5)
      ent�o exiba(media[i],"         Reprovado")
      sen�o se(media[i] < 7)
              ent�o exiba(media[i],"           Exame")
              sen�o exiba(media[i],"          Aprovado");
            fimse;
    fimse;
  fimpara;
  exiba("Foram aprovados: ", aprovados);
  exiba("Foram reprovados: ", reprovados);
Fim.
}

// Solu��o em Pascal

Program Exercicio82;
uses crt;
Type
  vet = array[1..6] of real;
Var
  media,P1,P2: vet;
  i,aprovados,reprovados: integer;
Begin
  ClrScr;
  writeln('Relat�rio de M�dias de uma turma.');
  aprovados := 0;
  reprovados := 0;
  for i := 1 to 6 do
  Begin
    writeln('Digite a nota da P1 do ',i,'� aluno:');              // Leitura de notas P1 e P2 entre 0 e 10.
    readln(P1[i]);
    while((P1[i] < 0) or (P1[i] > 10))do
    Begin
      writeln('Digite uma nota entre 0 e 10 para a P1:');
      readln(P1[i]);
    End;
    writeln('Digite a nota da P2 do ',i,'� aluno:');
    readln(P2[i]);
    while((P2[i] < 0) or (P2[i] > 10))do
    Begin
      writeln('Digite uma nota entre 0 e 10 para a P2:');
      readln(P2[i]);
    End;
    media[i] := (P1[i] + P2[i])/2;
    if(media[i] < 5)
      then reprovados := reprovados + 1                       // Acumulando aprovados e reprovados.
      else if(media[i] >= 7)
             then aprovados := aprovados + 1;
  End;
  writeln('Media            Mensagem');
  for i := 1 to 6 do
  Begin                                                     // Exibindo segundo o padr�o do exerc�cio.
    if(media[i] < 5)
      then writeln(media[i]:0:2,'             Reprovado')
      else if(media[i] < 7)
             then writeln(media[i]:0:2,'               Exame')
             else writeln(media[i]:0:2,'             Aprovado');
  End;
  writeln('Foram aprovados: ', aprovados);
  writeln('Foram reprovados: ', reprovados);
  repeat until keypressed;
end.