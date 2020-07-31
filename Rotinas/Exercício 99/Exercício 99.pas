//Exercicio 99: Fazer uma função que transforme horas, minutos e segundos em segundos.

{         Solução em Portugol
Algoritmo Exercicio 99;
Var
  H,M,S,RESULTADO	: inteiro;
Procedimento Conversor(h: inteiro; m: inteiro; s: inteiro;Var resultado: inteiro);
Inicio
  resultado <- h * 3600 + m * 60 + s;
Fim;
Inicio
  exiba("Programa que converte Horas, Minutos, Segundos em Segundos.");
  exiba("Digite um número de horas:");
  leia(H);
  enquanto(H < 0)faça
    exiba("Digite um número de horas válido.");
    leia(H);
  fimenquanto;
  exiba("Digite um número de minutos:");
  leia(M);
  enquanto(M < 0)faça
    exiba("Digite um número de minutos válido.");
    leia(M);
  fimenquanto;
  exiba("Digite um número de segundos:");
  leia(S);
  enquanto(S < 0)faça
    exiba("Digite um número de segundos válido.");
    leia(S);
  fimenquanto;
  Conversor(H,M,S,RESULTADO);
  exiba(H," horas, ",M," minutos e ",S," segundos equivalem a ", RESULTADO," segundos.");
Fim.
}

// Solução em Pascal

Program Exercicio99;
uses crt;
Var
  H,M,S,RESULTADO	: integer;
Procedure Conversor(h: integer; m: integer; s: integer;Var resultado: integer);
Begin
  resultado := h * 3600 + m * 60 + s;
End;
Begin
  writeln('Programa que converte Horas, Minutos, Segundos em Segundos.');
  writeln('Digite um número de horas:');
  readln(H);
  while(H < 0)do
  Begin
    writeln('Digite um número de horas válido.');
    readln(H);
  End;
  writeln('Digite um número de minutos:');
  readln(M);
  while(M < 0)do
  Begin
    writeln('Digite um número de minutos válido.');
    readln(M);
  End;
  writeln('Digite um número de segundos:');
  readln(S);
  while(S < 0)do
  Begin
    writeln('Digite um número de segundos válido.');
    readln(S);
  End;
  Conversor(H,M,S,RESULTADO);
  writeln(H,' horas, ',M,' minutos e ',S,' segundos equivalem a ', RESULTADO,' segundos.');
  repeat until keypressed;
end.