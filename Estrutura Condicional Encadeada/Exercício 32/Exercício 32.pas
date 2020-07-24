//Exercicio 32: Escreva um algoritmo que receba do usu�rio 4 n�meros inteiros e, informe se h� ou n�o um deles no 
//intervalo entre 1 e 25, outro de 26 a 50, outro de 51 a 75, e um �ltimo de 76 a 100.

{		      Solu��o em Portugol.
Algoritmo Exercicio 32;
Var
  N1,N2,N3,N4: inteiro;
Inicio
  exiba("Programa que diz se n�meros est�o em certos intervalos.");
  exiba("Digite o primeiro n�mero: ");
  leia(N1);
  exiba("Digite o segundo n�mero: ");
  leia(N2);
  exiba("Digite o terceiro n�mero: ");
  leia(N3);
  exiba("Digite o quarto n�mero: ");
  leia(N4);
  se(((N1 >= 1) e (N1 <= 25)) ou ((N2 >= 1) e (N2 <= 25)) ou ((N3 >= 1) e (N3 <= 25)) ou ((N4 >= 1) e (N4 <= 25)))
    ent�o exiba("Um dos n�meros est� no intervalo 1-25.");
    sen�o exiba("Nenhum dos n�meros est� no intervalo 1-25.");
  fimse;
  se(((N1 >= 26) e (N1 <= 50)) ou ((N2 >= 26) e (N2 <= 50)) ou ((N3 >= 26) e (N3 <= 50)) ou ((N4 >= 26) e (N4 <= 50)))
    ent�o exiba("Um dos n�meros est� no intervalo 26-50.");
    sen�o exiba("Nenhum dos n�meros est� no intervalo 26-50.");
  fimse;
  se(((N1 >= 51) e (N1 <= 75)) ou ((N2 >= 51) e (N2 <= 75)) ou ((N3 >= 51) e (N3 <= 75)) ou ((N4 >= 51) e (N4 <= 75)))
    ent�o exiba("Um dos n�meros est� no intervalo 51-75.");
    sen�o exiba("Nenhum dos n�meros est� no intervalo 51-75.");
  fimse;
  se(((N1 >= 76) e (N1 <= 100)) ou ((N2 >= 76) e (N2 <= 100)) ou ((N3 >= 76) e (N3 <= 100)) ou ((N4 >= 76) e (N4 <= 100)))
    ent�o exiba("Um dos n�meros est� no intervalo 76-100.");
    sen�o exiba("Nenhum dos n�meros est� no intervalo 76-100.");
  fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio32;
uses crt;
const
  const1 = 1;
var
  N1,N2,N3,N4: integer;
begin
  clrscr;
  writeln('Programa que diz se n�meros est�o em certos intervalos.');
  writeln('Digite o primeiro n�mero: ');
  readln(N1);
  writeln('Digite o segundo n�mero: ');
  readln(N2);
  writeln('Digite o terceiro n�mero: ');
  readln(N3);
  writeln('Digite o quarto n�mero: ');
  readln(N4);
  if(((N1 >= 1) and (N1 <= 25)) or ((N2 >= 1) and (N2 <= 25)) or ((N3 >= 1) and (N3 <= 25)) or ((N4 >= 1) and (N4 <= 25)))
    then writeln('Um dos n�meros est� no intervalo 1-25.')
    else writeln('Nenhum dos n�meros est� no intervalo 1-25.');
  if(((N1 >= 26) and (N1 <= 50)) or ((N2 >= 26) and (N2 <= 50)) or ((N3 >= 26) and (N3 <= 50)) or ((N4 >= 26) and (N4 <= 50)))
    then writeln('Um dos n�meros est� no intervalo 26-50.')
    else writeln('Nenhum dos n�meros est� no intervalo 26-50.');
  if(((N1 >= 51) and (N1 <= 75)) or ((N2 >= 51) and (N2 <= 75)) or ((N3 >= 51) and (N3 <= 75)) or ((N4 >= 51) and (N4 <= 75)))
    then writeln('Um dos n�meros est� no intervalo 51-75.')
    else writeln('Nenhum dos n�meros est� no intervalo 51-75.');
  if(((N1 >= 76) and (N1 <= 100)) or ((N2 >= 76) and (N2 <= 100)) or ((N3 >= 76) and (N3 <= 100)) or ((N4 >= 76) and (N4 <= 100)))
    then writeln('Um dos n�meros est� no intervalo 76-100.')
    else writeln('Nenhum dos n�meros est� no intervalo 76-100.');
  repeat until keypressed;
end.