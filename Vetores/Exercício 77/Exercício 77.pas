//Exercicio 77: Modifique o problema anterior de modo que caso o usuário digite um número negativo o algoritmo peça
//novamente a quantidade de números e repita este procedimento até que o usuário forneça um número positivo.

{         Solução em Portugol
Algoritmo Exercicio 77;
Var
  vet: vetor[1..10000] de real;
  maior: Real;
  N,i,quantidade_maior: inteiro;
Inicio
  exiba("Programa que lê N números, diz qual o maior deles e quantas vezes foi digitado.");
  exiba("Digite a quantidade de números que serão lidos: ");
  leia(N);
  enquanto(N <= 0)faça
    exiba("Digite um número positivo.");
    leia(N):
  fimenquanto; 
  quantidade_maior <- 0;
  para i <- 1 até N faça
    exiba("Digite o ",i,"º número:");
    leia(vet[i]);
    se(i = 1)
      então Inicio
              maior <- vet[i];
              quantidade_maior <- 1;
            Fim
      senão se(vet[i] = maior)
              então quantidade_maior <- quantidade_maior + 1
              senão se(vet[i] > maior)
                      então Inicio
                              maior <- vet[i];
                              quantidade_maior <- 1;
                            Fim;
                    fimse;
            fimse;
    fimse;
  fimpara;
  exiba("O maior número é: ",maior," e aparece ",quantidade_maior," vezes.");
Fim.
}

// Solução em Pascal

Program Exercicio77;
uses crt;
var
  vet: array[1..10000] of real;
  maior: Real;
  N,i,quantidade_maior: integer;
begin
  clrscr;
  writeln('Programa que lê N números, diz qual o maior deles e quantas vezes foi digitado.');
  WriteLn('Digite a quantidade de números que serão lidos: ');
  readln(N);
  while(N <= 0)do
  Begin
    writeln('Digite um número positivo.');
    readln(N);
  End;
  quantidade_maior := 0;
  for i := 1 to N do
  Begin
    WriteLn('Digite o ',i,'º número:');
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
  WriteLn('O maior número é: ',maior:0:2,' e aparece ',quantidade_maior,' vezes.');
	repeat until keypressed;
end.