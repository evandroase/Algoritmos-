//Exercicio : Dizemos que um n�mero inteiro positivo � triangular se ele for o produto de tr�s n�meros naturais consecutivos.
//Por exemplo, o n�mero 120 � triangular, pois 120 = 4 X 5 X 6. Escreva um algoritmo que receba um n�mero inteiro positivo n
//e verifique se ele � triangular.


{         Solu��o em Portugol
Algoritmo Exercicio ;
Var
  n,primeiro,segundo,terceiro, triangular: inteiro;
Inicio
  primeiro <- 1;             // S�o os 3 primeiros inteiros positivos. Eles mudam de valor a cada loop.
  segundo <- 2;
  terceiro <- 3; 
  exiba("Programa que avalia se um n�mero inteiro positivo � triangular.");
  exiba("Digite o n�mero que ser� avaliado: ");
  leia(n);
  enquanto(n <= 0)fa�a                                 // Consist�ncia de dados.
    exiba("Digite um n�mero inteiro positivo.");
    leia(n);
  fimenquanto;
  enquanto(primeiro * segundo * terceiro <= n)fa�a      // Multiplica��es s�o feitas at� que o produto passe o valor de n
    se(primeiro * segundo * terceiro = n)              // se uma das multiplica��es resultarem em n, o n�mero � triangular.
      ent�o triangular <-1;                            
    fimse;
    primeiro <- segundo;
    segundo <- terceiro;
    terceiro <- terceiro + 1;  
  fimenquanto;
  se(triangular = 1)
    ent�o exiba(n," � triangular.")
    sen�o exiba(n," n�o � triangular.");
	fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio;
uses crt;
var
  n,primeiro,segundo,terceiro,triangular: integer;
begin
  clrscr;
  primeiro := 1;             // S�o os 3 primeiros inteiros positivos. Eles mudam de valor a cada loop.
  segundo := 2;
  terceiro := 3;
  writeln('Programa que avalia se um n�mero inteiro positivo � triangular.');
  writeln('Digite o n�mero que ser� avaliado: ');
  readln(n);
  while(n <= 0)do                                 // Consist�ncia de dados.
  Begin
    writeln('Digite um n�mero inteiro positivo.');
    readln(n);
  End;
  while(primeiro * segundo * terceiro <= n)do           // Multiplica��es s�o feitas at� que o produto passe o valor de n
  Begin																								 // se uma das multiplica��es resultarem em n, o n�mero � triangular.
    if(primeiro * segundo * terceiro = n)
      then triangular := 1;
    primeiro := segundo;
    segundo := terceiro;
    terceiro := terceiro + 1;
  End;
  if(triangular = 1)
    then writeln(n,' � triangular.')
    else writeln(n,' n�o � triangular.');
  repeat until keypressed;
end.