//Exercicio 100: Fa�a uma fun��o que tenha como par�metro uma temperatura em Celsius e retorne a temperatura em Kelvin.
//( K = 273 + C ).

{         Solu��o em Portugol
Algoritmo Exercicio 100;
Var
  C: real;
Procedimento Conversor(c: real; Var k: real);
Inicio
  enquanto(c < -273)fa�a
    exiba("Digite uma temperatura v�lida:");
    leia(c);
  fimenquanto;
  k <- 273 + c;
Fim;
Inicio
  exiba("Programa que converte de Celsius para Kelvin.");
  exiba("Digite uma temperatura em Celsius:");
  leia(C);
  Conversor(C,K);
  exiba(C," Celsius enquivale a ",K," Kelvin.");
Fim.
}

// Solu��o em Pascal

Program Exercicio100;
uses crt;
Var
  C,K: real;
Procedure Conversor(c: real; Var k: real);
Begin
  while(c < -273)do
  Begin
    WriteLn('Digite uma temperatura v�lida:');
    readln(c);
  End;
  k := 273 + c;
End;
Begin
  writeln('Programa que converte de Celsius para Kelvin.');
  writeln('Digite uma temperatura em Celsius:');
  readln(C);
  Conversor(C,K);
  writeln(C:0:2,' Celsius enquivale a ',K:0:2,' Kelvin.');
  repeat until keypressed;
end.