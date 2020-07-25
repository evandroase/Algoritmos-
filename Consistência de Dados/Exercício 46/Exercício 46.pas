//Exercicio 46: Faça um algoritmo para ler um valor X e um valor N e calcular a soma:
//                    Y = X - 2X + 4X - 6X + 8X - 10X + ... NX.
//Obs. Considere N um número inteiro e par.

{		      Solução em Portugol
Algoritmo Exercicio ;
Var
  N, X, contador,alternador_sinal,soma: inteiro;
Inicio
  exiba("Programa que calcula uma soma maluca.");
  exiba("Digite um número par de termos da soma: ");
  leia(N);
  enquanto(resto(N,2) = 1)faça                                  // Consistência 
    exiba("Digite um número par de termos da soma: ");
    leia(N);  
  fimenquanto;
  exiba("Digite um número inteiro X: ");
  leia(X);
  alternador_sinal <- -1;
  soma <- X;
  para contador <- 0 até N -1 faça
    soma <- soma + 2 * contador * alternador_sinal * X;
    alternador_sinal <- alternador_sinal * (-1);
  fimpara;
  exiba("A soma é: ", soma);
Fim.
}

// Solução em Pascal

Program Exercicio;
uses crt;
var
   N, X, contador,alternador_sinal,soma: integer;
begin
  clrscr;
  writeln('Programa que calcula uma soma maluca.');
  writeln('Digite um número par de termos da soma: ');
  readln(N);
  while((N mod 2) = 1)do
  Begin
		writeln('Digite um número par de termos da soma: ');
    readln(N);
  end;
  writeln('Digite um número inteiro X: ');
  readln(X);
  alternador_sinal := 1;
  soma := X;
  for contador := 0 to N-1 do
  Begin
		soma := soma + 2 * contador * alternador_sinal * X;
    alternador_sinal := alternador_sinal * (-1);
  End;
  writeln('A soma é: ', soma);
  repeat until keypressed;
end.