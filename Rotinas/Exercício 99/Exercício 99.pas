//Exercicio 99: Fazer uma fun��o que transforme horas, minutos e segundos em segundos.

{         Solu��o em Portugol
Algoritmo Exercicio 99;
Var
  H,M,S,RESULTADO: inteiro;
Procedimento ConversorSegundos(aux: inteiro;Var resultado: inteiro);
Var
  h,m,s: inteiro;
Inicio
  exiba("Digite um n�mero de horas:");
  leia(h);
  enquanto(h < 0)fa�a
    exiba("Digite um n�mero de horas v�lido.");
    leia(h);
  fimenquanto;
  exiba("Digite um n�mero de minutos:");
  leia(m);
  enquanto(m < 0)fa�a
    exiba("Digite um n�mero de minutos v�lido.");
    leia(m);
  fimenquanto;
  exiba("Digite um n�mero de segundos:");
  leia(s);
  enquanto(s < 0)fa�a
    exiba("Digite um n�mero de segundos v�lido.");
    leia(s);
  fimenquanto;
  resultado <- h * 3600 + m * 60 + s;
Fim;
Inicio
  Aux = 0;
  exiba("Programa que converte Horas, Minutos, Segundos em Segundos.");
  ConversorSegundos(Aux,RESULTADO);
  exiba(H," horas, ",M," minutos e ",S," segundos equivalem a ", RESULTADO," segundos.");
Fim.
}

// Solu��o em Pascal

Program Exercicio99;
uses crt;
Var
  Aux,RESULTADO: integer;
Procedure ConversorHorario(aux: integer; Var resultado: integer);
Var
 h,m,s: integer;
Begin
  writeln('Digite um n�mero de horas:');
  readln(h);
  while(h < 0)do
  Begin
    writeln('Digite um n�mero de horas v�lido.');
    readln(h);
  End;
  writeln('Digite um n�mero de minutos:');
  readln(m);
  while(m < 0)do
  Begin
    writeln('Digite um n�mero de minutos v�lido.');
    readln(m);
  End;
  writeln('Digite um n�mero de segundos:');
  readln(s);
  while(s < 0)do
  Begin
    writeln('Digite um n�mero de segundos v�lido.');
    readln(s);
  End;
  resultado := h * 3600 + m * 60 + s;
  write(h,' horas, ',m,' minutos e ',s,' segundos equivalem a ');
End;
Begin
  Aux := 0;
  writeln('Programa que converte Horas, Minutos, Segundos em Segundos.');
  ConversorHorario(Aux,RESULTADO);
  writeln(RESULTADO,' segundos.');
  repeat until keypressed;
end.