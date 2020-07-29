//Exercicio 78: Modifique o problema anterior para permitir que o usuário possa em caso de erro ter três tentivas.
// Na terceira tentativa o algoritmo deve terminar avisando ao usuário a razão da interrupção.
{         Solução em Portugol
Algoritmo Exercicio 78;
Var
  vet: vetor[1..10000] de real;
  maior: Real;
  N,i,quantidade_maior,tentativas: inteiro;
Inicio
  exiba("Programa que lê N números, diz qual o maior deles e quantas vezes foi digitado.");
  exiba("Digite a quantidade de números que serão lidos: ");
  leia(N);
  tentativas <- 0;
  enquanto(N <= 0 e tentativas < 3)faça
    tentativas <- tentativas + 1;
    exiba("Digite um número positivo.");
    leia(N):
  fimenquanto;
  quantidade_maior <- 0;
  se(tentativas <= 3 e N > 0)
  então Inicio
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
        Fim
  senão exiba("Você ultrapassou o número de tentativas possíveis. Programa finalizado.");
Fim.
}

// Solução em Pascal

Program Exercicio78;
uses crt;
var
  vet: array[1..10000] of real;
  maior: Real;
  N,i,quantidade_maior,tentativas: integer;
begin
  clrscr;
  writeln('Programa que lê N números, diz qual o maior deles e quantas vezes foi digitado.');
  WriteLn('Digite a quantidade de números que serão lidos: ');
  readln(N);
  tentativas := 0;
  while((N <= 0) and (tentativas < 3))do
  Begin
    tentativas := tentativas + 1;
    writeln('Digite um número positivo.');
    readln(N);
  End;
  quantidade_maior := 0;
  if((tentativas <= 3) and (N > 0))
    then Begin
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
           WriteLn('O maior número é: ',maior:0:2,' e aparece ',quantidade_maior,' vezes.')
         End
  else writeln('Você ultrapassou o número de tentativas possíveis. Programa finalizado.');
	repeat until keypressed;
end.