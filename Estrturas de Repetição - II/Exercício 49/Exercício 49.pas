//Exercicio 49: Faça um algoritmo que conte de 1 a 100 e a cada múltiplo de 10 emita uma mensagem: "Múltiplo de 10".

{		      Solução em Portugol
Algoritmo Exercicio 49;
Var
  numero,contador: inteiro;
Inicio
  exiba("Programa que exibe múltiplos de 10.");
  para contador <- 1 até 100 faça
    se(resto(contador,10) = 0)
      então exiba(contador," : Múltiplo de 10.")
    fimse;
  fimpara;
Fim.
}

// Solução em Pascal

Program Exercicio49;
uses crt;
var
  numero,contador: integer;
begin
  clrscr;
  writeln('Programa que exibe múltiplos de 10.');
  for contador := 1 to 100 do
  Begin
    if((contador mod 10) = 0)
    then writeln(contador,' : Múltiplo de 10.');
  End;
  repeat until keypressed;
end.