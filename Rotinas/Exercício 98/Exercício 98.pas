//Exercicio 98:

{         Solu��o em Portugol
Algoritmo Exercicio 98;
Var
  N: inteiro;
  RESULTADO: caracter;
Procedimento Paridade(n: inteiro; Var resultado: caracter);
Inicio
  se(resto(n,2) = 0)
    ent�o RESULTADO <- "VERDADEIRO"
    sen�o RESULTADO <- "FALSO";
  fimse;
Fim;
Inicio
  exiba("Programa que exibe VERDADEIRO para um n�mero par e FALSO para �mpar.");
  exiba("Digite um n�mero inteiro: ");
  leia(N);
  Paridade(N,RESULTADO);
  exiba(RESULTADO);
Fim.
}

// Solu��o em Pascal

Program Exercicio;
uses crt;
Var
  N: integer;
  RESULTADO: string;
Procedure Paridade(n: integer; Var resultado:string);
Begin
  if((n mod 2) = 0)
    then RESULTADO := 'VERDADEIRO'
    else RESULTADO := 'FALSO';
End;
Begin
  writeln('Programa que exibe VERDADEIRO para um n�mero par e FALSO para �mpar.');
  writeln('Digite um n�mero inteiro: ');
  readln(N);
  Paridade(N,RESULTADO);
  writeln(RESULTADO);
  repeat until keypressed;
end.