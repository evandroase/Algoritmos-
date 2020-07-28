//Exercicio 68: Em dois vetores, armazenar 25 elementos numéricos em cada um. Intercalar os elementos dos dois conjuntos
//formando um novo vetor. Exibir os três vetores.

{         Solução em Portugol
Algoritmo Exercicio 68;
Tipo
  v = vetor[1..25] de reais;
Var
  v1,v2: v;
  v3: vetor[1..50] de reais;
  i: inteiro;
Inicio
  exiba("Programa que intercala 2 vetores.");
  para i <- 1 até 25 faça
    exiba("Digite a posição ",i," dos dois vetores.");
    leia(v1[i]);
    leia(v2[i]);
    v3[2*i-1] <- v1[i];
    v3[2*i] <- v2[i];
  fimpara;
  exiba("O vetor 1 é:");
  para i <- 1 até 25 faça
    exiba(v1[i]);
  fimpara;
  exiba("O vetor 2 é:");
  para i <- 1 até 25 faça
    exiba(v2[i]);
  fimpara;
  exiba("O vetor 3 é:");
  para i <- 1 até 50 faça
    exiba(v3[i]);
  fimpara;
Fim.
}

// Solução em Pascal

Program Exercicio68;
uses crt;
type
  v = array[1..25] of real;
var
  v1,v2: v;
  v3: array[1..50] of real;
  i: integer;
begin
  clrscr;
  writeln('Programa que intercala 2 vetores.');
  for i := 1 to 25 do
  Begin
    writeln('Digite a posição ',i,' dos dois vetores.');
    readln(v1[i]);
    readln(v2[i]);
    v3[2*i-1] := v1[i];
    v3[2*i] := v2[i];
  End;
  writeln('O vetor 1 é:');
  for i := 1 to 25 do
    writeln(v1[i]:0:2);
  writeln('O vetor 2 é:');
  for i := 1 to 25 do
    writeln(v2[i]:0:2);
  writeln('O vetor 3 é:');
  for i := 1 to 50 do
    writeln(v3[i]:0:2);
  repeat until keypressed;
end.