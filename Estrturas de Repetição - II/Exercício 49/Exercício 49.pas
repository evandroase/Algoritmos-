//Exercicio 49: Fa�a um algoritmo que conte de 1 a 100 e a cada m�ltiplo de 10 emita uma mensagem: "M�ltiplo de 10".

{		      Solu��o em Portugol
Algoritmo Exercicio 49;
Var
  numero,contador: inteiro;
Inicio
  exiba("Programa que exibe m�ltiplos de 10.");
  para contador <- 1 at� 100 fa�a
    se(resto(contador,10) = 0)
      ent�o exiba(contador," : M�ltiplo de 10.")
    fimse;
  fimpara;
Fim.
}

// Solu��o em Pascal

Program Exercicio49;
uses crt;
var
  numero,contador: integer;
begin
  clrscr;
  writeln('Programa que exibe m�ltiplos de 10.');
  for contador := 1 to 100 do
  Begin
    if((contador mod 10) = 0)
    then writeln(contador,' : M�ltiplo de 10.');
  End;
  repeat until keypressed;
end.