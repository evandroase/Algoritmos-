//Exercicio 47: Escreva um algoritmo que receba 10 n�meros e exiba o maior deles e o menor deles.

{		      Solu��o em Portugol
Algoritmo Exercicio 47;
Var
  N,maior,menor: real;
  contador: inteiro;
Inicio
  exiba("Programa que diz qual o maior e qual o menor entre 10 n�meros.");
  para contador <- 1 at� 10 fa�a
    exiba("Digite o ",contador,"� n�mero: ");
    leia(N);
    se(contador = 1)
      ent�o Inicio
              maior <- N;
              menor <- N;
            Fim
    fimse;
    se( N >= maior)
      ent�o maior <- N;
    fimse;
    se(N <= menor)
      ent�o menor <- N;
    fimse;
  fimpara;
	exiba("O menor n�mero �: ",menor," e o maior n�mero �: ",maior);
Fim.
}

// Solu��o em Pascal

Program Exercicio47;
uses crt;
var
  N,maior,menor: real;
  contador: integer;
begin
  clrscr;
  writeln('Programa que diz qual o maior e qual o menor entre 10 n�meros.');
  for contador := 1 to 10 do
  Begin
    writeln('Digite o ',contador,'� n�mero: ');
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
	writeln('O menor n�mero �: ',menor:0:2,' e o maior n�mero �: ',maior:0:2);
  repeat until keypressed;
end.