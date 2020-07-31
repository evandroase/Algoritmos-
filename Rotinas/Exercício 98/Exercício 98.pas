//Exercicio 98:

{         Solução em Portugol
Algoritmo Exercicio 98;
Var
  N: inteiro;
  RESULTADO: caracter;
Procedimento Paridade(n: inteiro; Var resultado: caracter);
Inicio
  se(resto(n,2) = 0)
    então RESULTADO <- "VERDADEIRO"
    senão RESULTADO <- "FALSO";
  fimse;
Fim;
Inicio
  exiba("Programa que exibe VERDADEIRO para um número par e FALSO para ímpar.");
  exiba("Digite um número inteiro: ");
  leia(N);
  Paridade(N,RESULTADO);
  exiba(RESULTADO);
Fim.
}

// Solução em Pascal

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
  writeln('Programa que exibe VERDADEIRO para um número par e FALSO para ímpar.');
  writeln('Digite um número inteiro: ');
  readln(N);
  Paridade(N,RESULTADO);
  writeln(RESULTADO);
  repeat until keypressed;
end.