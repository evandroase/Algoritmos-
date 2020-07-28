//Exercicio 66: Escreva um algoritmo que receba 10 n�meros e exiba o maior deles e o menor deles.

{         Solu��o em Portugol
Algoritmo Exercicio 66;
Var
  N : vetor[1..10] de inteiro;
  i,maior,menor: inteiro;
Inicio
  exiba("Programa que avalia qual o maior e qual o menor entre 10 n�meros.");
  para i <- 1 at� 10 fa�a
    exiba("Digite o ",i,"� n�mero:");
    leia(N[i]);
    se(i = 1)                        // O primeiro dos 10 n�meros sempre ser� o menor/maior antes de avaliar os outros.
      ent�o Inicio
              maior <- N[i];
              menor <- N[i];
            Fim;
    fimse;
    se(N[i] > maior)                // Avalia��o dos n�meros para saber se eles s�o o maior/menor. 
      ent�o maior <- N[i]
      sen�o se(N[i] < menor)
              ent�o menor <- N[i];
            fimse; 
    fimse;
  fimpara;
  exiba("O maior n�mero �: ",maior," e o menor �: ",menor);
Fim.
}

// Solu��o em Pascal

Program Exercicio66;
uses crt;
var
  N : array [1..10] of integer;
  i,maior,menor: integer;
begin
  clrscr;
  writeln('Programa que avalia qual o maior e qual o menor entre 10 n�meros.');
  for i := 1 to 10 do
  Begin
    writeln('Digite o ',i,'� n�mero:');
    readln(N[i]);
    if(i = 1)                        // O primeiro dos 10 n�meros sempre ser� o menor/maior antes de avaliar os outros.
      then Begin
              maior := N[i];
              menor := N[i];
           End;
    if(N[i] > maior)                // Avalia��o dos n�meros para saber se eles s�o o maior/menor.
      then maior := N[i]
      else if(N[i] < menor)
              then menor := N[i];
  end;
  writeln('O maior n�mero �: ',maior,' e o menor �: ',menor);
  repeat until keypressed;
end.