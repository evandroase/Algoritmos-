//Exercicio 53: Fa�a um algoritmo que leia 4 n�meros inteiros e, informe, quantos e quais deles s�o pares.

{         Solu��o em Portugol
Algoritmo Exercicio 53;
Var
  N,contador,acumulador: inteiro;
Inicio
  exiba("Programa que l� 4 n�meros e diz quais/quantos s�o pares.");
  acumulador <- 0;
  para contador <- 1 at� 4 fa�a
    exiba("Digite o ", contador,"� n�mero:");
    leia(N);
    se(resto(N,2) = 0)
      ent�o Inicio
              acumulador <- acumulador + 1;
              exiba("O n�mero ",N," � par.");
            Fim
    fimse;
  fimpara;
  exiba("S�o no total ",acumulador," n�meros pares.");
Fim.
}

// Solu��o em Pascal

Program Exercicio53;
uses crt;
var
  N,contador,acumulador: integer;
begin
  clrscr;
  writeln('Programa que l� 4 n�meros e diz quais/quantos s�o pares.');
  acumulador := 0;
  for contador := 1 to 4 do
  Begin
    writeln('Digite o ', contador,'� n�mero:');
    readln(N);
    if((N mod 2) = 0)
      then Begin
              acumulador := acumulador + 1;
              writeln('O n�mero ',N,' � par.');
           End
  End;
  writeln('S�o no total ',acumulador,' n�meros pares.');
  repeat until keypressed;
end.