//Exercicio 53: Faça um algoritmo que leia 4 números inteiros e, informe, quantos e quais deles são pares.

{         Solução em Portugol
Algoritmo Exercicio 53;
Var
  N,contador,acumulador: inteiro;
Inicio
  exiba("Programa que lê 4 números e diz quais/quantos são pares.");
  acumulador <- 0;
  para contador <- 1 até 4 faça
    exiba("Digite o ", contador,"º número:");
    leia(N);
    se(resto(N,2) = 0)
      então Inicio
              acumulador <- acumulador + 1;
              exiba("O número ",N," é par.");
            Fim
    fimse;
  fimpara;
  exiba("São no total ",acumulador," números pares.");
Fim.
}

// Solução em Pascal

Program Exercicio53;
uses crt;
var
  N,contador,acumulador: integer;
begin
  clrscr;
  writeln('Programa que lê 4 números e diz quais/quantos são pares.');
  acumulador := 0;
  for contador := 1 to 4 do
  Begin
    writeln('Digite o ', contador,'º número:');
    readln(N);
    if((N mod 2) = 0)
      then Begin
              acumulador := acumulador + 1;
              writeln('O número ',N,' é par.');
           End
  End;
  writeln('São no total ',acumulador,' números pares.');
  repeat until keypressed;
end.