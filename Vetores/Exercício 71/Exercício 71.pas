//Exercicio 71: Armazenar 50 números num arranjo e verificar se existe números iguais.
//A resposta deve ser apenas: verdadeiro ou falso.

{         Solução em Portugol
Algoritmo Exercicio 71;
Var
  v: vetor[1..50] de real;
  i,j,acumulador: inteiro;
Inicio
  acumulador <- 0;
  exiba("Programa que armazena 50 números e diz se existem números iguais.");
  para i <- 1 até 50 faça
    exiba("Digite o ",i,"º número:");
    leia(v[i]);
  fimpara;
  para i <- 1 até 50 faça
    para j <- i + 1 até 50 faça
      se(v[i] = v[j])
        então acumulador <- acumulador + 1;
      fimse;
    fimpara; 
  fimpara;
  exiba("Existem números iguais?");
  se(acumulador > 0)
    então exiba("Verdadeiro")
    senão exiba("Falso");
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio71;
uses crt;
var
  v: array[1..50] of real;
  i,j,acumulador: integer;
begin
  clrscr;
  acumulador := 0;
  writeln('Programa que armazena 50 números e diz se existem números iguais.');
  for i := 1 to 50 do
  Begin
    writeln('Digite o ',i,'º número:');             // Armazenamento dos 50 números.
    readln(v[i]);
  End;
  for i := 1 to 50 do
  Begin
    for j := i + 1 to 50 do                        // Fixa um número e compara com os outros do vetor.
    Begin                                          // Essa comparação evita repetições.
      if(v[i] = v[j])
        then acumulador := acumulador + 1;
    End;
  End;
  writeln('Existem números iguais?');
  if(acumulador > 0)
    then writeln('Verdadeiro')
    else writeln('Falso');
  repeat until keypressed;
end.