//Exercicio 47: Escreva um algoritmo que receba 10 números e exiba o maior deles e o menor deles.

{		      Solução em Portugol
Algoritmo Exercicio 47;
Var
  N,maior,menor: real;
  contador: inteiro;
Inicio
  exiba("Programa que diz qual o maior e qual o menor entre 10 números.");
  para contador <- 1 até 10 faça
    exiba("Digite o ",contador,"º número: ");
    leia(N);
    se(contador = 1)
      então Inicio
              maior <- N;
              menor <- N;
            Fim
    fimse;
    se( N >= maior)
      então maior <- N;
    fimse;
    se(N <= menor)
      então menor <- N;
    fimse;
  fimpara;
	exiba("O menor número é: ",menor," e o maior número é: ",maior);
Fim.
}

// Solução em Pascal

Program Exercicio47;
uses crt;
var
  N,maior,menor: real;
  contador: integer;
begin
  clrscr;
  writeln('Programa que diz qual o maior e qual o menor entre 10 números.');
  for contador := 1 to 10 do
  Begin
    writeln('Digite o ',contador,'º número: ');
    readln(N);
    if(contador = 1)
      then Begin
              maior := N;
              menor := N;
           End;
    if( N >= maior)
      then maior := N;
    if(N <= menor)
      then menor := N;
  End;
	writeln('O menor número é: ',menor:0:2,' e o maior número é: ',maior:0:2);
  repeat until keypressed;
end.