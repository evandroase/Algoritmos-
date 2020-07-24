//Exercicio 40: Sendo X = 1 + 1/2 + 1/3 + 1/4 + ... + 1/N, prepare um algoritmo para gerar o n�mero X. O n�mero N
//deve ser fornecido pelo usu�rio.

{		      Solu��o em Portugol
Algoritmo Exercicio 40;
Var
  X: real;
  N,contador: inteiro;
Inicio
  exiba("Programa que calcula uma soma maluca.");
  exiba("Digite quantos termos voc� quer na soma: ");
  leia(N);
  contador <- 1;
  X <- 0;
  enquanto(contador <= N)faca
    X <- X + 1/contador;
    contador <- contador + 1;
  fimenquanto;
  exiba("O valor da soma �: ", X);
Fim.
}

// Solu��o em Pascal

Program Exercicio40;
uses crt;
var
  X: real;
  N,contador: integer;
begin
  clrscr;
  writeln('Programa que calcula uma soma maluca.');
  writeln('Digite quantos termos voc� quer na soma: ');
  readln(N);
  contador := 1;
  X := 0;
  while(contador <= N)do
  Begin
    X := X + 1/contador;
    contador := contador + 1;
  End;
  writeln('O valor da soma �: ', X:0:2);
  repeat until keypressed;
end.