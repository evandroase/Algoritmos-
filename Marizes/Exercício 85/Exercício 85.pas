//Exercicio 85: Faça um algoritmo que leia uma matriz A de ordem
//NxN e que verifique se a matriz é simétrica (Aij=Aji).

{         Solução em Portugol
Algoritmo Exercicio 85;
Var
  M: vetor[1..1000,1..100] de inteiro;
  i,j,N,acumulador: inteiro;
Inicio
  acumulador <- 0;
  exiba("Programa que determina se uma matriz é simétrica.");
  exiba("Determine o tamanho da matriz.");
  leia(N);
  para i <- 1 até N faça                                        // Lendo a matriz.
    para j <- 1 até N faça
      exiba("Digite o elemento M[",i,",",j,"]");
      leia(M[i,j]);
    fimpara;
  fimpara;
  para i <- 1 até N faça                                        // Regra: matriz simétrica se acumulador = (N² - N)/2
    para j <- i + 1 até N faça                                  // Estou lendo apenas a matriz triangular superior.
      se(M[i,j] = M[j,i])
        então acumulador <- acumulador + 1;
      fimse;
    fimpara;
  fimpara;
  se(acumulador = (N*N - N)/2)                                  // Exibindo se a matriz é simétrica ou não.
    então exiba("A matriz é simétrica.")
    senão exiba("A matriz não é simétrica.");
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio85;
uses crt;
Var
  M: array[1..1000,1..100] of integer;
  i,j,N,acumulador: integer;
Begin
  acumulador := 0;
  writeln('Programa que determina se uma matriz é simétrica.');
  writeln('Determine o tamanho da matriz:');
  readln(N);
  for i := 1 to N do                                        // Lendo a matriz.
    for j := 1 to N do
    Begin
      writeln('Digite o elemento M[',i,',',j,']');
      readln(M[i,j]);
    End;
  for i := 1 to N do                                        // Regra: matriz simétrica se acumulador = (N² - N)/2
    for j := i + 1 to N do                                  // Estou lendo apenas a matriz triangular superior.
      if(M[i,j] = M[j,i])
        then acumulador := acumulador + 1;
  if(acumulador = (N*N - N)/2)                                  // Exibindo se a matriz é simétrica ou não.
    then writeln('A matriz é simétrica.')
    else writeln('A matriz não é simétrica.');
  repeat until keypressed;
end.