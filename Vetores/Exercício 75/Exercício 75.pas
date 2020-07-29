//Exercicio 75: Escreva um algoritmo que receba e armazene 50 números quaisquer num vetor X. Calcular a média desses
//números. Criar um vetor Y com o seguinte cálculo: cada elemento de Y será a diferença entre o respectivo elemento de
//X e a média calculada. Exibir: a média calculada e os vetores X e Y.

{         Solução em Portugol
Algoritmo Exercicio 75;
Tipo
  vet = vetor[1..50] de real;
Var
  X,Y: vet;
  soma_vetor,media_X: real;
  i: inteiro;
Inicio
  exiba("Programa treinando vetores.");
  soma_vetor <- 0;
  para i <- 1 até 50 faça                         // Lê os 50 números e calcula a soma dos elementos de X.
    exiba("Digite o ",i,"º número.");
    leia(X[i]);
    soma_vetor <- soma_vetor + X[i];
  fimpara;

  media_X <- soma_vetor/50;

  para i <- 1 até 50 faça                         // Criando o vetor Y.
    Y[i] <- X[i] - media_X;
  fimpara;
	exiba("A média do vetor X é: ",media_X);        // Exibindo a média dos elementos de X.
  exiba("O vetor X é:");
  para i <- 1 até 50 faça                         //Exibindo os elementos de X.
    exiba("X[",i,"] = ",X[i]);
  fimpara;
  exiba("O vetor Y é:");
  para i <- 1 até 50 faça                         //Exibindo os elementos de Y.
    exiba("Y[",i,"] = ",Y[i]);
  fimpara;
Fim.
}

// Solução em Pascal

Program Exercicio75;
uses crt;
Type
  vet = array[1..50] of real;
Var
  X,Y: vet;
  soma_vetor,media_X: real;
  i: integer;
Begin
  clrscr;
  writeln('Programa treinando vetores.');
  soma_vetor := 0;
  for i := 1 to 50 do                               // Lê os 50 números e calcula a soma dos elementos de X.
  Begin
    writeln('Digite o ',i,'º número.');
    readln(X[i]);
    soma_vetor := soma_vetor  + X[i];
  End;

  media_X := soma_vetor/5;                              // Cálculo da média.

  for i := 1 to 50 do                                    // Criando o vetor Y.
    Y[i] := X[i] - media_X;

  writeln('A média do vetor X é: ',media_X:0:2);        // Exibindo a média dos elementos de X.

  writeln('O vetor X é:');
  for i := 1 to 50 do                                    //Exibindo os elementos de X.
    writeln('X[',i,'] = ',X[i]:0:2);

  writeln('O vetor Y é:');
  for i := 1 to 50 do                                    //Exibindo os elementos de Y.
    writeln('Y[',i,'] = ',Y[i]:0:2);
  repeat until keypressed;
end.