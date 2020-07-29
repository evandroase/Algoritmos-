//Exercicio 75: Escreva um algoritmo que receba e armazene 50 n�meros quaisquer num vetor X. Calcular a m�dia desses
//n�meros. Criar um vetor Y com o seguinte c�lculo: cada elemento de Y ser� a diferen�a entre o respectivo elemento de
//X e a m�dia calculada. Exibir: a m�dia calculada e os vetores X e Y.

{         Solu��o em Portugol
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
  para i <- 1 at� 50 fa�a                         // L� os 50 n�meros e calcula a soma dos elementos de X.
    exiba("Digite o ",i,"� n�mero.");
    leia(X[i]);
    soma_vetor <- soma_vetor + X[i];
  fimpara;

  media_X <- soma_vetor/50;

  para i <- 1 at� 50 fa�a                         // Criando o vetor Y.
    Y[i] <- X[i] - media_X;
  fimpara;
	exiba("A m�dia do vetor X �: ",media_X);        // Exibindo a m�dia dos elementos de X.
  exiba("O vetor X �:");
  para i <- 1 at� 50 fa�a                         //Exibindo os elementos de X.
    exiba("X[",i,"] = ",X[i]);
  fimpara;
  exiba("O vetor Y �:");
  para i <- 1 at� 50 fa�a                         //Exibindo os elementos de Y.
    exiba("Y[",i,"] = ",Y[i]);
  fimpara;
Fim.
}

// Solu��o em Pascal

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
  for i := 1 to 50 do                               // L� os 50 n�meros e calcula a soma dos elementos de X.
  Begin
    writeln('Digite o ',i,'� n�mero.');
    readln(X[i]);
    soma_vetor := soma_vetor  + X[i];
  End;

  media_X := soma_vetor/5;                              // C�lculo da m�dia.

  for i := 1 to 50 do                                    // Criando o vetor Y.
    Y[i] := X[i] - media_X;

  writeln('A m�dia do vetor X �: ',media_X:0:2);        // Exibindo a m�dia dos elementos de X.

  writeln('O vetor X �:');
  for i := 1 to 50 do                                    //Exibindo os elementos de X.
    writeln('X[',i,'] = ',X[i]:0:2);

  writeln('O vetor Y �:');
  for i := 1 to 50 do                                    //Exibindo os elementos de Y.
    writeln('Y[',i,'] = ',Y[i]:0:2);
  repeat until keypressed;
end.