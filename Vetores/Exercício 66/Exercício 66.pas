//Exercicio 66: Escreva um algoritmo que receba 10 números e exiba o maior deles e o menor deles.

{         Solução em Portugol
Algoritmo Exercicio 66;
Var
  N : vetor[1..10] de inteiro;
  i,maior,menor: inteiro;
Inicio
  exiba("Programa que avalia qual o maior e qual o menor entre 10 números.");
  para i <- 1 até 10 faça
    exiba("Digite o ",i,"º número:");
    leia(N[i]);
    se(i = 1)                        // O primeiro dos 10 números sempre será o menor/maior antes de avaliar os outros.
      então Inicio
              maior <- N[i];
              menor <- N[i];
            Fim;
    fimse;
    se(N[i] > maior)                // Avaliação dos números para saber se eles são o maior/menor. 
      então maior <- N[i]
      senão se(N[i] < menor)
              então menor <- N[i];
            fimse; 
    fimse;
  fimpara;
  exiba("O maior número é: ",maior," e o menor é: ",menor);
Fim.
}

// Solução em Pascal

Program Exercicio66;
uses crt;
var
  N : array [1..10] of integer;
  i,maior,menor: integer;
begin
  clrscr;
  writeln('Programa que avalia qual o maior e qual o menor entre 10 números.');
  for i := 1 to 10 do
  Begin
    writeln('Digite o ',i,'º número:');
    readln(N[i]);
    if(i = 1)                        // O primeiro dos 10 números sempre será o menor/maior antes de avaliar os outros.
      then Begin
              maior := N[i];
              menor := N[i];
           End;
    if(N[i] > maior)                // Avaliação dos números para saber se eles são o maior/menor.
      then maior := N[i]
      else if(N[i] < menor)
              then menor := N[i];
  end;
  writeln('O maior número é: ',maior,' e o menor é: ',menor);
  repeat until keypressed;
end.