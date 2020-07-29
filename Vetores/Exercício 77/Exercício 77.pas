//Exercicio 77: Modifique o problema anterior de modo que caso o usu�rio digite um n�mero negativo o algoritmo pe�a
//novamente a quantidade de n�meros e repita este procedimento at� que o usu�rio forne�a um n�mero positivo.

{         Solu��o em Portugol
Algoritmo Exercicio 77;
Var
  vet: vetor[1..10000] de real;
  maior: Real;
  N,i,quantidade_maior: inteiro;
Inicio
  exiba("Programa que l� N n�meros, diz qual o maior deles e quantas vezes foi digitado.");
  exiba("Digite a quantidade de n�meros que ser�o lidos: ");
  leia(N);
  enquanto(N <= 0)fa�a
    exiba("Digite um n�mero positivo.");
    leia(N):
  fimenquanto; 
  quantidade_maior <- 0;
  para i <- 1 at� N fa�a
    exiba("Digite o ",i,"� n�mero:");
    leia(vet[i]);
    se(i = 1)
      ent�o Inicio
              maior <- vet[i];
              quantidade_maior <- 1;
            Fim
      sen�o se(vet[i] = maior)
              ent�o quantidade_maior <- quantidade_maior + 1
              sen�o se(vet[i] > maior)
                      ent�o Inicio
                              maior <- vet[i];
                              quantidade_maior <- 1;
                            Fim;
                    fimse;
            fimse;
    fimse;
  fimpara;
  exiba("O maior n�mero �: ",maior," e aparece ",quantidade_maior," vezes.");
Fim.
}

// Solu��o em Pascal

Program Exercicio77;
uses crt;
var
  vet: array[1..10000] of real;
  maior: Real;
  N,i,quantidade_maior: integer;
begin
  clrscr;
  writeln('Programa que l� N n�meros, diz qual o maior deles e quantas vezes foi digitado.');
  WriteLn('Digite a quantidade de n�meros que ser�o lidos: ');
  readln(N);
  while(N <= 0)do
  Begin
    writeln('Digite um n�mero positivo.');
    readln(N);
  End;
  quantidade_maior := 0;
  for i := 1 to N do
  Begin
    WriteLn('Digite o ',i,'� n�mero:');
    Readln(vet[i]);
    if(i = 1)
      then Begin
             maior := vet[i];
             quantidade_maior := 1;
           End
      else if(vet[i] = maior)
             then quantidade_maior := quantidade_maior + 1
             else if(vet[i] > maior)
                    then Begin
                           maior := vet[i];
                           quantidade_maior := 1;
                         End;
  End;
  WriteLn('O maior n�mero �: ',maior:0:2,' e aparece ',quantidade_maior,' vezes.');
	repeat until keypressed;
end.