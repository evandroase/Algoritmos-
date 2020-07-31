//Exercicio 96: Fa�a uma rotina para calcular o fatorial de um n�mero qualquer.

{         Solu��o em Portugol
Algoritmo Exercicio 96;
Var
  N,resultado: inteiro;
Procedimento Fatorial(n: inteiro; Var fat: inteiro);
Var
  i: inteiro;
Inicio
  fat <- 1;
  se(n > 0)
    ent�o para i <- 1 at� n fa�a
            fat <- fat * i;
          fimpara;
Fim;

Inicio
  exiba("Programa que calcula o fatorial de um n�mero.");
  exiba("Digite o n�mero que voc� deseja saber o fatorial: ");
  leia(N);
  Fatorial(N,resultado);
  exiba("O fatorial de ",N," �: ",resultado);	
Fim.
}

// Solu��o em Pascal

Program Exercicio96;
uses crt;
Var
  N,resultado: integer;
Procedure Fatorial(n: integer; Var fat: integer);
Var
  i: integer;
Begin
  fat := 1;
  if(n > 0)
    then for i := 1 to n do
           fat := fat * i;
End;

Begin
  ClrScr;
  writeln('Programa que calcula o fatorial de um n�mero.');
  Writeln('Digite o n�mero que voc� deseja saber o fatorial: ');
  readln(N);
  Fatorial(N,resultado);
  writeln('O fatorial de ',N,' �: ',resultado);
  repeat until keypressed;
end.