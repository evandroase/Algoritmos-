//Exercicio 100: Faça uma função que tenha como parâmetro uma temperatura em Celsius e retorne a temperatura em Kelvin.
//( K = 273 + C ).

{         Solução em Portugol
Algoritmo Exercicio 100;
Var
  K: real;
Procedimento Conversor(Var k: real);
Inicio
  exiba("Digite uma temperatura em Celsius:");
  leia(C);
  enquanto(c < -273)faça
    exiba("Digite uma temperatura válida:");
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

// Solução em Pascal

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
    writeln('Digite uma temperatura válida:');
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