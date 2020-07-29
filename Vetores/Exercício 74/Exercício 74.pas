//Exercicio 74: Escreva um algoritmo que receba e armazene 50 números inteiros num vetor A. Calcular o quadrado dos
//respectivos números do vetor A e armazenar os resultados, respectivamente, no vetor B. Exibir os vetores A e B.

{         Solução em Portugol
Algoritmo Exercicio 74;
Tipo
  vet = vetor[1..50] de inteiros;
Var
  A,B: vet;
  i: inteiros;
Inicio
  exiba("Programa que recebe 50 números num vetor, armazena o quadrado desses números num vetor B e exibe os dois vetores.");
  para i <- 1 até 50 faça
    exiba("Digite o ",i,"º termo do vetor A.");            // Lendo A
    leia(A[i]);
    B[i] <- A[i] * A[i];                                   // Calculando B
  fimpara;

  exiba("O vetor A!");
  para i <- 1 até 50 faça
	  exiba("A[",i,"] = ",A[i]);                             // Exibindo A
  fimpara;

  exiba("O vetor B!");
  para i <- 1 até 50 faça
	  exiba("B[",i,"] = ",B[i]);                             // Exibindo B
  fimpara;
Fim.
}

// Solução em Pascal

Program Exercicio74;
uses crt;
Type
  vet = array[1..50] of integer;
Var
  A,B: vet;
  i: integer;
Begin
  writeln('Programa que recebe 50 números num vetor, armazena o quadrado desses números num vetor B e exibe os dois vetores.');
  for i := 1 to 5 do
  Begin	
    writeln('Digite o ',i,'º termo do vetor A.');            // Lendo A
    readln(A[i]);
    B[i] := A[i] * A[i];                                   // Calculando B
  End;

  writeln('O vetor A!');
  for i := 1 to 5 do
	  writeln('A[',i,'] = ',A[i]);                             // Exibindo A

  writeln('O vetor B!');
  for i := 1 to 5 do
	  writeln('B[',i,'] = ',B[i]);                             // Exibindo B
end.