//Exercicio 87: Dado duas matrizes A e B de ordem NxN faca um algoritmo que some as duas e gere a matriz C.
// Os elementos da matriz C são a soma dos respectivos elementos de A e B.

{         Solução em Portugol
Algoritmo Exercicio ;
Tipo
  matriz = vetor[1..1000,1..1000] de reais;
Var
  A,B,C: matriz;
  N,i,j: inteiro;
Inicio
  exiba("Programa que soma duas matrizes N x N.");               //Determinando a dimensão da matriz
  exiba(Digite a dimensão da matriz:"");
  leia(N);
  enquanto(N <= 0)faça
    exiba(Digite uma dimensão maior que 0:"");
    leia(N);
  fimenquanto;
  para i <- 1 até N faça                                         //Lendo a matriz A.
    para j <- 1 até N faça
      exiba("Digite o elemento A[",i,",",j,"]");
      leia(A[i,j]);
    fimpara; 
  fimpara;
  para i <- 1 até N faça                                         //Lendo a matriz B e criando a C.
    para j <- 1 até N faça
      exiba("Digite o elemento B[",i,",",j,"]");
      leia(B[i,j]);
      C[i,j] <- A[i,j] + B[i,j];
    fimpara;
  fimpara;
  para i <- 1 até N faça                                         //Exibindo a matriz A.
    para j <- 1 até N faça
      exiba(A[i,j]);
    fimpara;
    exiba("");                                                   // Pula Linha.
  fimpara;
  para i <- 1 até N faça                                         //Exibindo a matriz B.
    para j <- 1 até N faça
      exiba(B[i,j]);
    fimpara;
    exiba("");                                                   // Pula Linha.
  fimpara;
  para i <- 1 até N faça                                         //Exibindo a matriz C.
    para j <- 1 até N faça
      exiba(C[i,j]);
    fimpara;
    exiba("");                                                   // Pula Linha.
  fimpara;
Fim.
}

// Solução em Pascal

Program Exercicio;
uses crt;
Type
  matriz = array[1..1000,1..1000] of real;
Var
  A,B,C: matriz;
  N,i,j: integer;
Begin
  writeln('Programa que soma duas matrizes N x N.');               //Determinando a dimensão da matriz
  writeln('Digite a dimensão da matriz:');
  readln(N);
  while(N <= 0)do
  Begin
    writeln('Digite uma dimensão maior que 0:');
    readln(N);
  End;
  for i := 1 to N do                                         //Lendo a matriz A.
    for j := 1 to N do
    Begin
      writeln('Digite o elemento A[',i,',',j,']');
      readln(A[i,j]);
    end;
  for i := 1 to N do                                         //Lendo a matriz B e criando a C.
    for j := 1 to N do
    Begin
      writeln('Digite o elemento B[',i,',',j,']');
      readln(B[i,j]);
      C[i,j] := A[i,j] + B[i,j];
    End;
  for i := 1 to N do                                         //Exibindo a matriz A.
  Begin
    for j := 1 to N do
      write(A[i,j]:0:2);                                         
    writeln('');                                             // Pula Linha.
  end;
  writeln('');
  for i := 1 to N do                                         //Exibindo a matriz B.
  Begin                                        
    for j := 1 to N do
      write(B[i,j]:0:2);
    writeln('');                                             // Pula Linha.
  End;
  writeln('');	
  for i := 1 to N do
  Begin                                                      //Exibindo a matriz C.
    for j := 1 to N do
      write(C[i,j]:0:2);
    writeln('');                                             // Pula Linha.
  End;
  repeat until keypressed;
end.