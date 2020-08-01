//Exercicio 99: Fazer uma função que transforme horas, minutos e segundos em segundos.

{         Solução em Portugol
Algoritmo Exercicio 99;
Var
  H,M,S,RESULTADO: inteiro;
Procedimento ConversorSegundos(aux: inteiro;Var resultado: inteiro);
Var
  h,m,s: inteiro;
Inicio
  exiba("Digite um número de horas:");
  leia(h);
  enquanto(h < 0)faça
    exiba("Digite um número de horas válido.");
    leia(h);
  fimenquanto;
  exiba("Digite um número de minutos:");
  leia(m);
  enquanto(m < 0)faça
    exiba("Digite um número de minutos válido.");
    leia(m);
  fimenquanto;
  exiba("Digite um número de segundos:");
  leia(s);
  enquanto(s < 0)faça
    exiba("Digite um número de segundos válido.");
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

// Solução em Pascal

Program Exercicio99;
uses crt;
Var
  Aux,RESULTADO: integer;
Procedure ConversorHorario(aux: integer; Var resultado: integer);
Var
 h,m,s: integer;
Begin
  writeln('Digite um número de horas:');
  readln(h);
  while(h < 0)do
  Begin
    writeln('Digite um número de horas válido.');
    readln(h);
  End;
  writeln('Digite um número de minutos:');
  readln(m);
  while(m < 0)do
  Begin
    writeln('Digite um número de minutos válido.');
    readln(m);
  End;
  writeln('Digite um número de segundos:');
  readln(s);
  while(s < 0)do
  Begin
    writeln('Digite um número de segundos válido.');
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