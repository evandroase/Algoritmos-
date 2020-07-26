//Exercicio 54: Fulano tem 1,50 m e cresce 2 cm por ano, enquanto Beltrano tem 1,10 m e cresce 3 cm por ano.
//Elabore um algoritmo que calcule e exiba quantos anos ser�o necess�rios para que Beltrano seja mais alto que Fulano.

{         Solu��o em Portugol
Algoritmo Exercicio 54;
Const
  crescimento_fulano = 2;           // Vou fazer o exerc�cio em cm.
  crescimento_beltrano = 3;
  altura_fulano = 150;
  altura_beltrano = 110;
Var
  fulano,beltrano,anos: inteiro;
Inicio
  exiba("Programa que calcula quantos anos levar�o para que Beltrano seja maior que Fulano.");
  anos <- 0;
  fulano <- 150;
  beltrano <- 110;
  enquanto(fulano >= beltrano)fa�a
    anos := anos + 1;
    fulano <- altura_fulano + crescimento_fulano * anos;
    beltrano <- altura_beltrano + crescimento_beltrano * anos;
  fimenquanto;
  exiba("Ser�o necess�rios ",anos," anos para que Beltrano fique maior que Fulano.");
Fim.
}

// Solu��o em Pascal

Program Exercicio54;
uses crt;
Const
  crescimento_fulano = 2;          
  crescimento_beltrano = 3;
  altura_fulano = 150;
  altura_beltrano = 110;
var
  fulano,beltrano,anos: integer;
begin
  clrscr;
  writeln('Programa que calcula quantos anos levar�o para que Beltrano seja maior que Fulano.');
  anos := 0;
  fulano := 150;
  beltrano := 110;
  while(fulano >= beltrano)do
  Begin
    anos := anos + 1;
    fulano := altura_fulano + crescimento_fulano * anos;
    beltrano := altura_beltrano + crescimento_beltrano * anos;
  End;
  writeln('Ser�o necess�rios ',anos,' anos para que Beltrano fique maior que Fulano.');
  repeat until keypressed;
end.