//Exercicio 44: Faça um algoritmo para somar os restos da divisão por 3 de 20 números inteiros.

{		      Solução em Portugol
Algoritmo Exercicio 44;
Var
  soma, N, contador: inteiro;
Inicio
  exiba("Programa que soma os restos da divisão por 3 de 20 números inteiros.");
  soma <- 0;
  para contador <- 1 até 20 faca
    exiba("Digite o ",contador,"º número: ");
    leia(N);
    soma <- soma + resto(N,3);
  fimpara;
  exiba("O valor da soma é: ",soma);
Fim.
}

// Solução em Pascal

Program Exercicio44;
uses crt;
var
  N,contador,soma: integer;
begin
  clrscr;
  writeln('Programa que soma os restos da divisão por 3 de 20 números inteiros.');
  soma := 0;
  for contador := 1 to 20 do
  begin
    writeln('Digite o ',contador,'º número: ');
    readln(N);
    soma := soma + (N mod 3);
  end;
  writeln('O valor da soma é: ',soma);
  repeat until keypressed;
end.