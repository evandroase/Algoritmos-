//Exercicio 25: Escreva um algoritmo que leia tr�s n�meros e exiba-os em ordem crescente.

{		      Solu��o em Portugol
Algoritmo Exercicio 25;
Var
  N1,N2,N3,maior: real;
Inicio
  exiba("Programa que coloca 3 n�meros em ordem crescente.");
  exiba("Digite o primeiro n�mero: ");
  leia(N1);
  exiba("Digite o segundo n�mero: ");
  leia(N2);                                      //Existem 13 possibilidades, sendo que cada uma � avaliada por um
  exiba("Digite o terceiro n�mero: ");           //condicional diferente.
  leia(N3);
  se((N1 > N2) e (N2 > N3))                     //N3 < N2 < N1
    ent�o exiba(N3,"-",N2,"-",N1);
  fimse;
  se((N2 > N1) e (N1 > N3))                     //N3 < N1 < N2
    ent�o exiba(N3,"-",N1,"-",N2);
  fimse;
  se((N3 > N1) e (N1 > N2))                     //N2 < N1 < N3
    ent�o exiba(N2,"-",N1,"-",N3);
  fimse;
  se((N1 > N3) e (N3 > N2))                     //N2 < N3 < N1
    ent�o exiba(N2,"-",N3,"-",N1);
  fimse;
  se((N3 > N2) e (N2 > N1))                     //N1 < N2 < N3
    ent�o exiba(N1,"-",N2,"-",N3);
  fimse;
  se((N2 > N3) e (N3> N1))                      //N1 < N3 < N2
    ent�o exiba(N1,"-",N3,"-",N2);
  fimse;
  se((N2 = N3) e (N3 = N1))                     //N1 = N3 = N2
    ent�o exiba(N1,"-",N3,"-",N2);
  fimse;
  se((N2 = N3) e (N1 > N2))                     //N2 = N3 < N1
    ent�o exiba(N2,"-",N3,"-",N1);
  fimse;
  se((N2 = N3) e (N1 < N2))                     //N2 = N3 > N1
    ent�o exiba(N1,"-",N3,"-",N2);
  fimse;
  se((N1 = N3) e (N1 > N2))                     //N1 = N3 > N2
    ent�o exiba(N2,"-",N3,"-",N1);
  fimse;
  se((N1 = N3) e (N1 < N2))                     //N1 = N3 < N2
    ent�o exiba(N1,"-",N3,"-",N2);
  fimse;
  se((N2 = N1) e (N2 < N3))                     //N1 = N2 < N3
    ent�o exiba(N2,"-",N1,"-",N3);
  fimse;
  se((N2 = N1) e (N2 > N3))                     //N1 = N2 > N3
    ent�o exiba(N3,"-"N2,"-",N1);
  fimse;

Fim.
}

// Solu��o em Pascal

Program Exercicio25;
uses crt;
var
  N1,N2,N3: integer;
begin
  clrscr;
  writeln('Programa que coloca 3 n�meros em ordem crescente.');
  writeln('Digite o primeiro n�mero: ');
  readln(N1);
  writeln('Digite o segundo n�mero: ');           //Existem 13 possibilidades, sendo que cada uma � avaliada por um
  readln(N2);                                     //condicional diferente.
  writeln('Digite o terceiro n�mero: ');
  readln(N3);
  if((N1 > N2) and (N2 > N3))                     //N3 < N2 < N1
    then writeln(N3,'-',N2,'-',N1);
  if((N2 > N1) and (N1 > N3))                     //N3 < N1 < N2
    then writeln(N3,'-',N1,'-',N2);
  if((N3 > N1) and (N1 > N2))                     //N2 < N1 < N3
    then writeln(N2,'-',N1,'-',N3);
  if((N1 > N3) and (N3 > N2))                     //N2 < N3 < N1
    then writeln(N2,'-',N3,'-',N1);
  if((N3 > N2) and (N2 > N1))                     //N1 < N2 < N3
    then writeln(N1,'-',N2,'-',N3);
  if((N2 > N3) and (N3> N1))                      //N1 < N3 < N2
    then writeln(N1,'-',N3,'-',N2);
  if((N2 = N3) and (N3 = N1))                     //N1 = N3 = N2
    then writeln(N1,'-',N3,'-',N2);
  if((N2 = N3) and (N1 > N2))                     //N2 = N3 < N1
    then writeln(N2,'-',N3,'-',N1);
  if((N2 = N3) and (N1 < N2))                     //N2 = N3 > N1
    then writeln(N1,'-',N3,'-',N2);
  if((N1 = N3) and (N1 > N2))                     //N1 = N3 > N2
    then writeln(N2,'-',N3,'-',N1);
  if((N1 = N3) and (N1 < N2))                     //N1 = N3 < N2
    then writeln(N1,'-',N3,'-',N2);
  if((N2 = N1) and (N2 < N3))                     //N1 = N2 < N3
    then writeln(N2,'-',N1,'-',N3);
  if((N2 = N1) and (N2 > N3))                     //N1 = N2 > N3
    then writeln(N3,'-',N2,'-',N1);
  repeat until keypressed;
end.