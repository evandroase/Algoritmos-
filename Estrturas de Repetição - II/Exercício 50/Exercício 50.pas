//Exercicio 50: Escreva um algoritmo que receba um n�mero inteiro e calcule e exiba o seu fatorial.

{		      Solu��o em Portugol
Algoritmo Exercicio 50;
Var
  fatorial,numero,contador: inteiro;
Inicio
  exiba("Programa que calcula fatoriais.");
  exiba("Digite o fatorial que voc� deseja saber: ");
  leia(numero);
  fatorial <- 1;
  para contador <- 1 at� numero fa�a
    fatorial <- fatorial * contador;
  fimpara;
  exiba("O fatorial de ", numero," �: ",fatorial);
Fim.
}

// Solu��o em Pascal

Program Exercicio50;
uses crt;
var
  fatorial,numero,contador: integer;
begin
  clrscr;
  writeln('Programa que calcula fatoriais.');
  writeln('Digite o fatorial que voc� deseja saber: ');
  readln(numero);
  fatorial := 1;
  for contador := 1 to numero do
  Begin
    fatorial := fatorial * contador;
  End;
  writeln('O fatorial de ', numero,' �: ',fatorial);
  repeat until keypressed;
end.