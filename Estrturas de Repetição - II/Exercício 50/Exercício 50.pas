//Exercicio 50: Escreva um algoritmo que receba um número inteiro e calcule e exiba o seu fatorial.

{		      Solução em Portugol
Algoritmo Exercicio 50;
Var
  fatorial,numero,contador: inteiro;
Inicio
  exiba("Programa que calcula fatoriais.");
  exiba("Digite o fatorial que você deseja saber: ");
  leia(numero);
  fatorial <- 1;
  para contador <- 1 até numero faça
    fatorial <- fatorial * contador;
  fimpara;
  exiba("O fatorial de ", numero," é: ",fatorial);
Fim.
}

// Solução em Pascal

Program Exercicio50;
uses crt;
var
  fatorial,numero,contador: integer;
begin
  clrscr;
  writeln('Programa que calcula fatoriais.');
  writeln('Digite o fatorial que você deseja saber: ');
  readln(numero);
  fatorial := 1;
  for contador := 1 to numero do
  Begin
    fatorial := fatorial * contador;
  End;
  writeln('O fatorial de ', numero,' é: ',fatorial);
  repeat until keypressed;
end.