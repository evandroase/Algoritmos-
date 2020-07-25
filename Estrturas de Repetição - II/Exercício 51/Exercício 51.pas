//Exercicio 51: Escreva um algoritmo que receba um número inteiro e informe se esse número é ou não primo.

{		      Solução em Portugol               //OBS: Um número N é primo se só é divisível por +-1 e +-N.
Algoritmo Exercicio 51;                    // No caso, podemos avaliar apenas a parte positiva e então N só pode ter 2 divisores.
Var
  numero,contador,primo: inteiro;
Inicio
  exiba("Programa que diz se um número é primo.");
  exiba("Digite um número: ");
  leia(numero);
  primo <- 0;
  para contador <- 1 até numero faça
    se(resto(numero,contador) = 0)
      então primo  <- primo + 1;
    fimse;
  fimpara;
  se(primo = 2)
    então exiba("O número ",numero," é primo.")
    senão exiba("O número ",numero," não é primo.);
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio51;
uses crt;
var
  numero,contador,primo: integer;
begin
  clrscr;
  writeln('Programa que diz se um número é primo.');
  writeln('Digite um número: ');
  readln(numero);
  primo := 0;
  for contador := 1 to numero do
  Begin
    if((numero mod contador) = 0)
      then primo  := primo + 1;
  End;
  if(primo = 2)
    then writeln('O número ',numero,' é primo.')
    else writeln('O número ',numero,' não é primo.');
  repeat until keypressed;
end.