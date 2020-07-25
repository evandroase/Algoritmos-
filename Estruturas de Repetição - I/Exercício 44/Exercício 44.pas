//Exercicio 44: Fa�a um algoritmo para somar os restos da divis�o por 3 de 20 n�meros inteiros.

{		      Solu��o em Portugol
Algoritmo Exercicio 44;
Var
  soma, N, contador: inteiro;
Inicio
  exiba("Programa que soma os restos da divis�o por 3 de 20 n�meros inteiros.");
  soma <- 0;
  para contador <- 1 at� 20 faca
    exiba("Digite o ",contador,"� n�mero: ");
    leia(N);
    soma <- soma + resto(N,3);
  fimpara;
  exiba("O valor da soma �: ",soma);
Fim.
}

// Solu��o em Pascal

Program Exercicio44;
uses crt;
var
  N,contador,soma: integer;
begin
  clrscr;
  writeln('Programa que soma os restos da divis�o por 3 de 20 n�meros inteiros.');
  soma := 0;
  for contador := 1 to 20 do
  begin
    writeln('Digite o ',contador,'� n�mero: ');
    readln(N);
    soma := soma + (N mod 3);
  end;
  writeln('O valor da soma �: ',soma);
  repeat until keypressed;
end.