//Exercicio 78: Modifique o problema anterior para permitir que o usu�rio possa em caso de erro ter tr�s tentivas.
// Na terceira tentativa o algoritmo deve terminar avisando ao usu�rio a raz�o da interrup��o.
{         Solu��o em Portugol
Algoritmo Exercicio 78;
Var
  vet: vetor[1..10000] de real;
  maior: Real;
  N,i,quantidade_maior,tentativas: inteiro;
Inicio
  exiba("Programa que l� N n�meros, diz qual o maior deles e quantas vezes foi digitado.");
  exiba("Digite a quantidade de n�meros que ser�o lidos: ");
  leia(N);
  tentativas <- 0;
  enquanto(N <= 0 e tentativas < 3)fa�a
    tentativas <- tentativas + 1;
    exiba("Digite um n�mero positivo.");
    leia(N):
  fimenquanto;
  quantidade_maior <- 0;
  se(tentativas <= 3 e N > 0)
  ent�o Inicio
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
        Fim
  sen�o exiba("Voc� ultrapassou o n�mero de tentativas poss�veis. Programa finalizado.");
Fim.
}

// Solu��o em Pascal

Program Exercicio78;
uses crt;
var
  vet: array[1..10000] of real;
  maior: Real;
  N,i,quantidade_maior,tentativas: integer;
begin
  clrscr;
  writeln('Programa que l� N n�meros, diz qual o maior deles e quantas vezes foi digitado.');
  WriteLn('Digite a quantidade de n�meros que ser�o lidos: ');
  readln(N);
  tentativas := 0;
  while((N <= 0) and (tentativas < 3))do
  Begin
    tentativas := tentativas + 1;
    writeln('Digite um n�mero positivo.');
    readln(N);
  End;
  quantidade_maior := 0;
  if((tentativas <= 3) and (N > 0))
    then Begin
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
           WriteLn('O maior n�mero �: ',maior:0:2,' e aparece ',quantidade_maior,' vezes.')
         End
  else writeln('Voc� ultrapassou o n�mero de tentativas poss�veis. Programa finalizado.');
	repeat until keypressed;
end.