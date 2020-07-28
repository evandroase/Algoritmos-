//Exercicio 71: Armazenar 50 n�meros num arranjo e verificar se existe n�meros iguais.
//A resposta deve ser apenas: verdadeiro ou falso.

{         Solu��o em Portugol
Algoritmo Exercicio 71;
Var
  v: vetor[1..50] de real;
  i,j,acumulador: inteiro;
Inicio
  acumulador <- 0;
  exiba("Programa que armazena 50 n�meros e diz se existem n�meros iguais.");
  para i <- 1 at� 50 fa�a
    exiba("Digite o ",i,"� n�mero:");
    leia(v[i]);
  fimpara;
  para i <- 1 at� 50 fa�a
    para j <- i + 1 at� 50 fa�a
      se(v[i] = v[j])
        ent�o acumulador <- acumulador + 1;
      fimse;
    fimpara; 
  fimpara;
  exiba("Existem n�meros iguais?");
  se(acumulador > 0)
    ent�o exiba("Verdadeiro")
    sen�o exiba("Falso");
  fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio71;
uses crt;
var
  v: array[1..50] of real;
  i,j,acumulador: integer;
begin
  clrscr;
  acumulador := 0;
  writeln('Programa que armazena 50 n�meros e diz se existem n�meros iguais.');
  for i := 1 to 50 do
  Begin
    writeln('Digite o ',i,'� n�mero:');             // Armazenamento dos 50 n�meros.
    readln(v[i]);
  End;
  for i := 1 to 50 do
  Begin
    for j := i + 1 to 50 do                        // Fixa um n�mero e compara com os outros do vetor.
    Begin                                          // Essa compara��o evita repeti��es.
      if(v[i] = v[j])
        then acumulador := acumulador + 1;
    End;
  End;
  writeln('Existem n�meros iguais?');
  if(acumulador > 0)
    then writeln('Verdadeiro')
    else writeln('Falso');
  repeat until keypressed;
end.