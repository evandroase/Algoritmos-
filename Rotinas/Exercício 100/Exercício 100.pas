//Exercicio 100: Fa�a uma fun��o que tenha como par�metro uma temperatura em Celsius e retorne a temperatura em Kelvin.
//( K = 273 + C ).

{         Solu��o em Portugol
Algoritmo Exercicio 100;
Var
  K: real;
Procedimento Conversor(Var k: real);
Inicio
  exiba("Digite uma temperatura em Celsius:");
  leia(C);
  enquanto(c < -273)fa�a
    exiba("Digite uma temperatura v�lida:");
    leia(c);
  fimenquanto;
  k <- 273 + c;
  exiba(c," Celsius equivalem a ");
Fim;
Inicio
  exiba("Programa que converte de Celsius para Kelvin.");
  ConversorKelvin(K);
  exiba(K," Kelvin.");
Fim.
}

// Solu��o em Pascal

Program Exercicio100;
uses crt;
Var
  K: real;
Procedure Conversor(Var k: real);
Var
  c: real;
Begin
  writeln('Digite uma temperatura em Celsius:');
  readln(c);
  while(c < -273)do
  Begin
    writeln('Digite uma temperatura v�lida:');
    readln(c);
  end;
  k := 273 + c;
  write(c:0:2,' Celsius equivalem a ');
End;
Begin
  writeln('Programa que converte de Celsius para Kelvin.');
  Conversor(K);
  writeln(K:0:2,' Kelvin.');
  repeat until keypressed;
end.