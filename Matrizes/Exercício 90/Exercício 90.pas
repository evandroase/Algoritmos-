{
Exercicio 90: Fazer um algoritmo que determine e imprima:

             Prod 1 (unid)     Prod 2 (unid)     Prod 3 (unid)
Armaz�m 1       1200              3700               3737
Armaz�m 2       1400              4210               4224
Armaz�m 3       2000              2240               2444

Custo (R$)      260,00            420,00             330,00

a) A quantidade de itens armazenados em cada armaz�m;
b) Qual o armaz�m possui a maior quantidade de produto 2 armazenado;
c) A matriz de custos;
d) O custo total de cada armaz�m;
e) O custo total de cada produto.

}

{         Solu��o em Portugol
Algoritmo Exercicio 90;
Const
  custoP1 = 260;
  custoP2 = 420;
  custoP3 = 330;
Tipo
  matriz = vetor[1..3,1..3] de inteiros;
Var
  M,C: matriz;
  i,j,maior,armazem1,armazem2,armazem3,armazemmaiorP2,custoarmazem1,custoarmazem2,
  custoarmazem3,custoproduto1,custoproduto2,custoproduto3 : inteiro;
Inicio
  custoarmazem1 <- 0;
  custoarmazem2 <- 0;
  custoarmazem3 <- 0;
  custoproduto1 <- 0;
  custoproduto2 <- 0;
  custoproduto3 <- 0;
  armazem1 <- 0;
  armazem2 <- 0;
  armazem3 <- 0;
  maior <- 0;
  exiba("Programa de armazenagem.");
  exiba("Leitura da matriz de produtos.");
  para i <- 1 at� 3 fa�a
    para j <- 1 at� 3 fa�a
      exiba("M[",i,",",j,"]");
      leia(M[i,j]);
      se(i = 1)
         ent�o armazem1 <- armazem1 + M[i,j];
      fimse;
      se(i = 2)
        ent�o armazem2 <- armazem2 + M[i,j];
      fimse;
      se(i = 3)
        ent�o armazem3 <- armazem3 + M[i,j];
      fimse;
      se(j = 1)
        ent�o C[i,j] <- custoP1 * M[i,j];
      fimse;
      se((j = 2)
        ent�o Inicio
                C[i,j] <- custoP2 * M[i,j];
                se(M[i,j] > maior)
                  ent�o Inicio
                          maior <- M[i,j];
                          armazemmaiorP2 <- i;
                        Fim
                fimse;
              Fim;
      fimse;
      se(j = 3)
        ent�o C[i,j] <- custoP3 * M[i,j];
      fimse;
    fimpara;
  fimpara;
  exiba("O armaz�m 1 tem ",armazem1," produtos.");
  exiba("O armaz�m 2 tem ",armazem2," produtos.");
  exiba("O armaz�m 3 tem ",armazem3," produtos.");
  exiba("O armaz�m com a maior quantidade de produtos 2 � o :",armazemmaiorP2);
  exiba("A matriz de custos �:");
  para i <- 1 at� 3 fa�a
    para j <- 1 at� 3 fa�a
      exiba(C[i,j]);
      se(i = 1)
        ent�o custoarmazem1 <- custoarmazem1 + C[i,j];
      fimse;
      se(i = 2)
        ent�o custoarmazem2 <- custoarmazem2 + C[i,j];
      fimse;
      se(i = 3)
        ent�o custoarmazem3 <- custoarmazem3 + C[i,j];
      fimse;
      se(j = 1)
        ent�o custoproduto1 <- custoproduto1 + C[i,j];
      fimse;
      se(j = 2)
        ent�o custoproduto2 <- custoproduto2 + C[i,j];
      fimse;
      se(j = 3)
        ent�o custoproduto3 <- custoproduto3 + C[i,j];
      fimse;
    fimpara;
    exiba("");
  fimpara;
  exiba("O custo total do armaz�m 1 foi:",custoarmazem1);
  exiba("O custo total do armaz�m 2 foi:",custoarmazem2);
  exiba("O custo total do armaz�m 3 foi:",custoarmazem3);
  exiba("O custo total do produto 1 foi:",custoproduto1);
  exiba("O custo total do produto 2 foi:",custoproduto2);
  exiba("O custo total do produto 3 foi:",custoproduto3);
Fim.
}

// Solu��o em Pascal

Program Exercicio90;
uses crt;
Const
  custoP1 = 260;
  custoP2 = 420;
  custoP3 = 330;
Type
  matriz = array[1..3,1..3] of integer;
Var
  M,C: matriz;
  i,j,maior,armazem1,armazem2,armazem3,armazemmaiorP2,custoarmazem1,custoarmazem2,
  custoarmazem3,custoproduto1,custoproduto2,custoproduto3 : integer;
Begin
  custoarmazem1 := 0;
  custoarmazem2 := 0;
  custoarmazem3 := 0;
  custoproduto1 := 0;
  custoproduto2 := 0;
  custoproduto3 := 0;
  armazem1 := 0;
  armazem2 := 0;
  armazem3 := 0;
  maior := 0;
  writeln('Programa de armazenagem.');
  writeln('Leitura da matriz de produtos.');
  for i := 1 to 3 do
    for j := 1 to 3 do
    Begin
      writeln('M[',i,',',j,']');
      readln(M[i,j]);
      if(i = 1)
         then armazem1 := armazem1 + M[i,j];
      if(i = 2)
        then armazem2 := armazem2 + M[i,j];
      if(i = 3)
        then armazem3 := armazem3 + M[i,j];
      if(j = 1)
        then C[i,j] := custoP1 * M[i,j];
      if(j = 2)
        then Begin
                C[i,j] := custoP2 * M[i,j];
                if(M[i,j] > maior)
                  then Begin
                          maior := M[i,j];
                          armazemmaiorP2 := i;
                       End;
             End;
      if(j = 3)
        then C[i,j] := custoP3 * M[i,j];
    End;
  writeln('O armaz�m 1 tem ',armazem1,' produtos.');
  writeln('O armaz�m 2 tem ',armazem2,' produtos.');
  writeln('O armaz�m 3 tem ',armazem3,' produtos.');
  writeln('O armaz�m com a maior quantidade de produtos 2 � o :',armazemmaiorP2);
  writeln('A matriz de custos �:');
  writeln('');
  for i := 1 to 3 do
  Begin
    for j := 1 to 3 do
    Begin
      write(C[i,j]);
      write(' ');
      if(i = 1)
        then custoarmazem1 := custoarmazem1 + C[i,j];
      if(i = 2)
        then custoarmazem2 := custoarmazem2 + C[i,j];
      if(i = 3)
        then custoarmazem3 := custoarmazem3 + C[i,j];
      if(j = 1)
        then custoproduto1 := custoproduto1 + C[i,j];
      if(j = 2)
        then custoproduto2 := custoproduto2 + C[i,j];
      if(j = 3)
        then custoproduto3 := custoproduto3 + C[i,j];
    End;
    writeln('');
    writeln('');
  End;
  writeln('O custo total do armaz�m 1 foi: ',custoarmazem1);
  writeln('O custo total do armaz�m 2 foi: ',custoarmazem2);
  writeln('O custo total do armaz�m 3 foi: ',custoarmazem3);
  writeln('O custo total do produto 1 foi: ',custoproduto1);
  writeln('O custo total do produto 2 foi: ',custoproduto2);
  writeln('O custo total do produto 3 foi: ',custoproduto3);
  repeat until keypressed;
end.