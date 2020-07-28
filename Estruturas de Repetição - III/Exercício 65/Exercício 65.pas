//Exercicio : Dizemos que um número inteiro positivo é triangular se ele for o produto de três números naturais consecutivos.
//Por exemplo, o número 120 é triangular, pois 120 = 4 X 5 X 6. Escreva um algoritmo que receba um número inteiro positivo n
//e verifique se ele é triangular.


{         Solução em Portugol
Algoritmo Exercicio ;
Var
  n,primeiro,segundo,terceiro, triangular: inteiro;
Inicio
  primeiro <- 1;             // São os 3 primeiros inteiros positivos. Eles mudam de valor a cada loop.
  segundo <- 2;
  terceiro <- 3; 
  exiba("Programa que avalia se um número inteiro positivo é triangular.");
  exiba("Digite o número que será avaliado: ");
  leia(n);
  enquanto(n <= 0)faça                                 // Consistência de dados.
    exiba("Digite um número inteiro positivo.");
    leia(n);
  fimenquanto;
  enquanto(primeiro * segundo * terceiro <= n)faça      // Multiplicações são feitas até que o produto passe o valor de n
    se(primeiro * segundo * terceiro = n)              // se uma das multiplicações resultarem em n, o número é triangular.
      então triangular <-1;                            
    fimse;
    primeiro <- segundo;
    segundo <- terceiro;
    terceiro <- terceiro + 1;  
  fimenquanto;
  se(triangular = 1)
    então exiba(n," é triangular.")
    senão exiba(n," não é triangular.");
	fimse;
Fim.
}

// Solução em Pascal

Program Exercicio;
uses crt;
var
  n,primeiro,segundo,terceiro,triangular: integer;
begin
  clrscr;
  primeiro := 1;             // São os 3 primeiros inteiros positivos. Eles mudam de valor a cada loop.
  segundo := 2;
  terceiro := 3;
  writeln('Programa que avalia se um número inteiro positivo é triangular.');
  writeln('Digite o número que será avaliado: ');
  readln(n);
  while(n <= 0)do                                 // Consistência de dados.
  Begin
    writeln('Digite um número inteiro positivo.');
    readln(n);
  End;
  while(primeiro * segundo * terceiro <= n)do           // Multiplicações são feitas até que o produto passe o valor de n
  Begin																								 // se uma das multiplicações resultarem em n, o número é triangular.
    if(primeiro * segundo * terceiro = n)
      then triangular := 1;
    primeiro := segundo;
    segundo := terceiro;
    terceiro := terceiro + 1;
  End;
  if(triangular = 1)
    then writeln(n,' é triangular.')
    else writeln(n,' não é triangular.');
  repeat until keypressed;
end.