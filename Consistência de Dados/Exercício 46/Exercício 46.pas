//Exercicio 46: Fa�a um algoritmo para ler um valor X e um valor N e calcular a soma:
//                    Y = X - 2X + 4X - 6X + 8X - 10X + ... NX.
//Obs. Considere N um n�mero inteiro e par.

{		      Solu��o em Portugol
Algoritmo Exercicio ;
Var
  N, X, contador,alternador_sinal,soma: inteiro;
Inicio
  exiba("Programa que calcula uma soma maluca.");
  exiba("Digite um n�mero par de termos da soma: ");
  leia(N);
  enquanto(resto(N,2) = 1)fa�a                                  // Consist�ncia 
    exiba("Digite um n�mero par de termos da soma: ");
    leia(N);  
  fimenquanto;
  exiba("Digite um n�mero inteiro X: ");
  leia(X);
  alternador_sinal <- -1;
  soma <- X;
  para contador <- 0 at� N -1 fa�a
    soma <- soma + 2 * contador * alternador_sinal * X;
    alternador_sinal <- alternador_sinal * (-1);
  fimpara;
  exiba("A soma �: ", soma);
Fim.
}

// Solu��o em Pascal

Program Exercicio;
uses crt;
var
   N, X, contador,alternador_sinal,soma: integer;
begin
  clrscr;
  writeln('Programa que calcula uma soma maluca.');
  writeln('Digite um n�mero par de termos da soma: ');
  readln(N);
  while((N mod 2) = 1)do
  Begin
		writeln('Digite um n�mero par de termos da soma: ');
    readln(N);
  end;
  writeln('Digite um n�mero inteiro X: ');
  readln(X);
  alternador_sinal := 1;
  soma := X;
  for contador := 0 to N-1 do
  Begin
		soma := soma + 2 * contador * alternador_sinal * X;
    alternador_sinal := alternador_sinal * (-1);
  End;
  writeln('A soma �: ', soma);
  repeat until keypressed;
end.