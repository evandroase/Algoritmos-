//Exercicio 86: Fa�a um algoritmo que leia uma matriz A NxM de valores inteiros, determine
//a sua matriz transposta e exiba.

{         Solu��o em Portugol
Algoritmo Exercicio 86;
Var
  matriz: vetor[1..1000,1..1000] de inteiro;
  N,M,i,j: inteiro;
Inicio
  exiba("Programa que exibe a transposta de uma matriz de n�meros inteiros.");   // Leitura das dimens�es da matriz.
  exiba("Digite a dimens�o N da matriz:");
  leia(N);
  enquanto(N <= 0)fa�a
    exiba("Digite uma dimens�o maior que 0:");
    leia(N);
  fimenquanto;
  exiba("Digite a dimens�o M da matriz:");
  leia(M);
  enquanto(M <= 0)fa�a
    exiba("Digite uma dimens�o maior que 0:");
    leia(M);
  fimenquanto;
  para i <- 1 at� N fa�a                                                        //  Leitura dos elementos da matriz.
    para j <-1 at� M fa�a
      exiba("Digite o elemento matriz[",i,",",j,"]);
      leia(matriz[i,j]);
    fimpara;
  fimpara;
  exiba("A matriz �:");
  para i <- 1 at� N fa�a                                                       // Exibindo a matriz
    para j <- 1 at� M fa�a
      exiba(matriz[i,j]," ");
    fimpara;
    exiba('');                                                           //  Pula linha.
  fimpara;
  exiba("A matriz transposta �:");	
  para j <- 1 at� M fa�a                                                        //  Exibe a transposta.
    para i <-1 at� N fa�a
      exiba(matriz[j,i]," ");
    fimpara;
    exiba("");                                                                  //  Pula linha.
  fimpara;
Fim.
}

// Solu��o em Pascal

Program Exercicio86;
uses crt;
Var
  matriz: array[1..1000,1..1000] of integer;
  N,M,i,j: integer;
Begin
  ClrScr;
  writeln('Programa que exibe a transposta de uma matriz de n�meros inteiros.');   // Leitura das dimens�es da matriz.
  writeln('Digite a dimens�o N da matriz:');
  readln(N);
  while(N <= 0)do
  Begin
    writeln('Digite uma dimens�o maior que 0:');
    readln(N);
  End;
  writeln('Digite a dimens�o M da matriz:');
  readln(M);
  while(M <= 0)do
  Begin
    writeln('Digite uma dimens�o maior que 0:');
    readln(M);
  End;
  for i := 1 to N do                                                        //  Leitura dos elementos da matriz.
    for j :=1 to M do
    Begin
      writeln('Digite o elemento matriz[',i,',',j,']');
      readln(matriz[i,j]);
    End;
  writeln('A matriz �:');
  for i := 1 to N do                                                       // Exibindo a matriz
  Begin
    for j := 1 to M do
      write(matriz[i,j],' ');
    writeln('');                                                           //  Pula linha.
  End;
  writeln('A matriz transposta �:');
  for i := 1 to M do                                                       // Exibindo a transposta
  Begin
    for j := 1 to N do
      write(matriz[j,i],' ');
    writeln('');                                                           //  Pula linha.
  End;
  repeat until keypressed;
end.