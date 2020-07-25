//Exercicio 51: Escreva um algoritmo que receba um n�mero inteiro e informe se esse n�mero � ou n�o primo.

{		      Solu��o em Portugol               //OBS: Um n�mero N � primo se s� � divis�vel por +-1 e +-N.
Algoritmo Exercicio 51;                    // No caso, podemos avaliar apenas a parte positiva e ent�o N s� pode ter 2 divisores.
Var
  numero,contador,primo: inteiro;
Inicio
  exiba("Programa que diz se um n�mero � primo.");
  exiba("Digite um n�mero: ");
  leia(numero);
  primo <- 0;
  para contador <- 1 at� numero fa�a
    se(resto(numero,contador) = 0)
      ent�o primo  <- primo + 1;
    fimse;
  fimpara;
  se(primo = 2)
    ent�o exiba("O n�mero ",numero," � primo.")
    sen�o exiba("O n�mero ",numero," n�o � primo.);
  fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio51;
uses crt;
var
  numero,contador,primo: integer;
begin
  clrscr;
  writeln('Programa que diz se um n�mero � primo.');
  writeln('Digite um n�mero: ');
  readln(numero);
  primo := 0;
  for contador := 1 to numero do
  Begin
    if((numero mod contador) = 0)
      then primo  := primo + 1;
  End;
  if(primo = 2)
    then writeln('O n�mero ',numero,' � primo.')
    else writeln('O n�mero ',numero,' n�o � primo.');
  repeat until keypressed;
end.