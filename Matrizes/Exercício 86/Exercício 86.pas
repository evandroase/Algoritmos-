//Exercicio 86: Faça um algoritmo que leia uma matriz A NxM de valores inteiros, determine
//a sua matriz transposta e exiba.

{         Solução em Portugol
Algoritmo Exercicio 86;
Var
  matriz: vetor[1..1000,1..1000] de inteiro;
  N,M,i,j: inteiro;
Inicio
  exiba("Programa que exibe a transposta de uma matriz de números inteiros.");   // Leitura das dimensões da matriz.
  exiba("Digite a dimensão N da matriz:");
  leia(N);
  enquanto(N <= 0)faça
    exiba("Digite uma dimensão maior que 0:");
    leia(N);
  fimenquanto;
  exiba("Digite a dimensão M da matriz:");
  leia(M);
  enquanto(M <= 0)faça
    exiba("Digite uma dimensão maior que 0:");
    leia(M);
  fimenquanto;
  para i <- 1 até N faça                                                        //  Leitura dos elementos da matriz.
    para j <-1 até M faça
      exiba("Digite o elemento matriz[",i,",",j,"]);
      leia(matriz[i,j]);
    fimpara;
  fimpara;
  exiba("A matriz é:");
  para i <- 1 até N faça                                                       // Exibindo a matriz
    para j <- 1 até M faça
      exiba(matriz[i,j]," ");
    fimpara;
    exiba('');                                                           //  Pula linha.
  fimpara;
  exiba("A matriz transposta é:");	
  para j <- 1 até M faça                                                        //  Exibe a transposta.
    para i <-1 até N faça
      exiba(matriz[j,i]," ");
    fimpara;
    exiba("");                                                                  //  Pula linha.
  fimpara;
Fim.
}

// Solução em Pascal

Program Exercicio86;
uses crt;
Var
  matriz: array[1..1000,1..1000] of integer;
  N,M,i,j: integer;
Begin
  ClrScr;
  writeln('Programa que exibe a transposta de uma matriz de números inteiros.');   // Leitura das dimensões da matriz.
  writeln('Digite a dimensão N da matriz:');
  readln(N);
  while(N <= 0)do
  Begin
    writeln('Digite uma dimensão maior que 0:');
    readln(N);
  End;
  writeln('Digite a dimensão M da matriz:');
  readln(M);
  while(M <= 0)do
  Begin
    writeln('Digite uma dimensão maior que 0:');
    readln(M);
  End;
  for i := 1 to N do                                                        //  Leitura dos elementos da matriz.
    for j :=1 to M do
    Begin
      writeln('Digite o elemento matriz[',i,',',j,']');
      readln(matriz[i,j]);
    End;
  writeln('A matriz é:');
  for i := 1 to N do                                                       // Exibindo a matriz
  Begin
    for j := 1 to M do
      write(matriz[i,j],' ');
    writeln('');                                                           //  Pula linha.
  End;
  writeln('A matriz transposta é:');
  for i := 1 to M do                                                       // Exibindo a transposta
  Begin
    for j := 1 to N do
      write(matriz[j,i],' ');
    writeln('');                                                           //  Pula linha.
  End;
  repeat until keypressed;
end.