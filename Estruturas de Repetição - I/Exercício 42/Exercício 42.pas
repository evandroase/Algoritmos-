//Exercicio 42: Prepare um algoritmo que determine o valor de S, em que:
//              S = 1/1 - 2/4 + 3/9 - 4/16 + 5/25 - 6/36 ... - 10/100

{		      Solução em Portugol
Algoritmo Exercicio 42;
Var
  S: real;
	contador,alternador_sinal: inteiro;
Inicio
  exiba("Programa que calcula uma soma maluca.");
  S <- 0;
  alternador_sinal <- 1;
  para contador <-1 até 10 faca
    S <- S + (contador/(contador*contador)) * alternador_sinal;
    alternador_sinal <- alternador_sinal * (-1);
  fimpara;
  exiba("O valor da soma é: ",S);
Fim.
}

// Solução em Pascal

Program Exercicio42;
uses crt;
var
  S: real;
	contador,alternador_sinal: integer;
begin
  clrscr;
  writeln('Programa que calcula uma soma maluca.');
  S := 0;
  alternador_sinal := 1;
  for contador := 1 to 10 do
  begin
    S := S + (contador/(contador*contador)) * alternador_sinal;
    alternador_sinal := alternador_sinal * (-1);
  end;
  writeln('O valor da soma é: ',S:0:2);
  repeat until keypressed;
end.