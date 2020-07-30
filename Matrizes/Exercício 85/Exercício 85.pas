//Exercicio 85: Fa�a um algoritmo que leia uma matriz A de ordem
//NxN e que verifique se a matriz � sim�trica (Aij=Aji).

{         Solu��o em Portugol
Algoritmo Exercicio 85;
Var
  M: vetor[1..1000,1..100] de inteiro;
  i,j,N,acumulador: inteiro;
Inicio
  acumulador <- 0;
  exiba("Programa que determina se uma matriz � sim�trica.");
  exiba("Determine o tamanho da matriz.");
  leia(N);
  para i <- 1 at� N fa�a                                        // Lendo a matriz.
    para j <- 1 at� N fa�a
      exiba("Digite o elemento M[",i,",",j,"]");
      leia(M[i,j]);
    fimpara;
  fimpara;
  para i <- 1 at� N fa�a                                        // Regra: matriz sim�trica se acumulador = (N� - N)/2
    para j <- i + 1 at� N fa�a                                  // Estou lendo apenas a matriz triangular superior.
      se(M[i,j] = M[j,i])
        ent�o acumulador <- acumulador + 1;
      fimse;
    fimpara;
  fimpara;
  se(acumulador = (N*N - N)/2)                                  // Exibindo se a matriz � sim�trica ou n�o.
    ent�o exiba("A matriz � sim�trica.")
    sen�o exiba("A matriz n�o � sim�trica.");
  fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio85;
uses crt;
Var
  M: array[1..1000,1..100] of integer;
  i,j,N,acumulador: integer;
Begin
  acumulador := 0;
  writeln('Programa que determina se uma matriz � sim�trica.');
  writeln('Determine o tamanho da matriz:');
  readln(N);
  for i := 1 to N do                                        // Lendo a matriz.
    for j := 1 to N do
    Begin
      writeln('Digite o elemento M[',i,',',j,']');
      readln(M[i,j]);
    End;
  for i := 1 to N do                                        // Regra: matriz sim�trica se acumulador = (N� - N)/2
    for j := i + 1 to N do                                  // Estou lendo apenas a matriz triangular superior.
      if(M[i,j] = M[j,i])
        then acumulador := acumulador + 1;
  if(acumulador = (N*N - N)/2)                                  // Exibindo se a matriz � sim�trica ou n�o.
    then writeln('A matriz � sim�trica.')
    else writeln('A matriz n�o � sim�trica.');
  repeat until keypressed;
end.