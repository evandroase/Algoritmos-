//Exercicio 39: Escreva um algoritmo que pergunte ao usu�rio qual tabuada ele deseja ver na tela. Calcular e exibir a tabuada.

{		      Solu��o em Portugol
Algoritmo Exercicio 39;
Var
  tabuada, contador: inteiro;
Inicio
  exiba("Programa que exibe tabuadas.");
  exiba("Digite uma tabuada que voc� quer saber: ");
  leia(tabuada);
  contador <- 0;
  enquanto(contador <= 10) faca
    exiba(tabuada," x ",contador," = ", tabuada * contador);
    contador <- contador + 1;	  
  fimenquanto;
Fim.
}

// Solu��o em Pascal

Program Exercicio39;
uses crt;
var
  tabuada, contador: integer;
begin
  clrscr;
  writeln('Programa que exibe tabuadas.');
  writeln('Digite uma tabuada que voc� quer saber: ');
  readln(tabuada);
  contador := 0;
  while(contador <= 10) do
  Begin
    writeln(tabuada,' x ',contador,' = ', tabuada * contador);
    contador := contador + 1;
  End;
  repeat until keypressed;
end.