{
Exercicio 73: Escreva um algoritmo que receba 10 números inteiros, calcule e exiba:

a) Quantos números pares e quantos ímpares foram informados;
b) Qual o maior e o menor número;
c) Quantos números são múltiplos de 4;
d) Quantos números primos foram informados

}
{         Solução em Portugol
Algoritmo Exercicio 73;
Var
  pares,impares,maior,menor,multiplos_4,primos,i,j,divisores,aux: inteiro;
  N: vetor[1..10] de inteiros;
Inicio
  pares <- 0;
  impares <- 0;
  multiplos_4 <- 0;
  primos <- 0;
  exiba("Programa que calcula coisas com números inteiros.");
  para i <- 1 até 10 faça                                          // Leitura dos números inteiros.
    exiba("Digite o ",i,"º número: ");
    leia(N[i]);
  fimpara;
	
  para i <- 1 até 10 faça
    se(resto(N[i],2) = 0)                                  // Cálculo da Questão (a)
      então pares <- pares + 1
      senão impares <- impares + 1;
    fimse;
		
    se(i = 1)                                              //Cálculo da Questão (b)
      então Inicio
              maior <- N[i];
              menor <- N[i];
            Fim
    senão se(N[i] > maior)
            então maior <- N[i];
            senão se(N[i] < menor)
                    então menor <- N[i]
                  fimse;
          fimse;
    fimse;
		
    se(resto(N[i],4) = 0)                                  // Cálculo da Questão (c)
      então multiplos_4 <- multiplos_4 + 1;
    fimse;
		aux <- N[i];
    se(aux < 0)
      então aux <- -aux;
    fimse;
    para j <- 1 até aux faça                               // Cálculo da Questão (d)
      se(resto(N[i],j) = 0)
        então divisores <- divisores + 1;
      fimse;
    fimpara;
    se(divisores = 2)
      primos <- primos + 1;
    fimse;
    divisores <- 0;
  fimpara;
	exiba("Pares: ", pares," impares: ",impares);            // Questão (a)
  exiba("Maior número: ",maior," menor número: ",menor);   // Questão (b)
  exiba("Quantidade de múltiplos de 4: ",multiplos_4);     // Questão (c)
  exiba("Quantidade de números primos: ",primos);          // Questão (d)
Fim.
}

// Solução em Pascal

Program Exercicio73;
uses crt;
var
  pares,impares,maior,menor,multiplos_4,primos,i,j,divisores,aux: integer;
  N: array[1..10] of integer;
begin
  clrscr;
  pares := 0;
  impares := 0;
  multiplos_4 := 0;
  primos := 0;
  divisores := 0;
  writeln('Programa que calcula coisas com números inteiros.');
	
  for i := 1 to 10 do                                       // Leitura dos números inteiros.
  Begin
    writeln('Digite o ',i,'º número: ');
    readln(N[i]);
  End;

  for i := 1 to 10 do
  Begin
    if((N[i] mod 2) = 0)                                  // Cálculo da Questão (a)
      then pares := pares + 1
      else impares := impares + 1;
			
    if(i = 1)                                              //Cálculo da Questão (b)
      then Begin
              maior := N[i];
              menor := N[i];
           End
      else if(N[i] > maior)
             then maior := N[i]
             else if(N[i] < menor)
                    then menor := N[i];
										
    if((N[i] mod 4) = 0)                                  // Cálculo da Questão (c)
      then multiplos_4 := multiplos_4 + 1;

		aux := N[i];
    if(aux < 0)
      then aux := -aux;	
    for j := 1 to aux do                                 // Cálculo da Questão (d)
      if(N[i] mod j = 0)
        then divisores := divisores + 1;
    if(divisores = 2)
      then primos := primos + 1;
    divisores := 0;
  End;
  writeln('Pares: ', pares,' impares: ',impares);            // Questão (a)
  writeln('Maior número: ',maior,' menor número: ',menor);   // Questão (b)
  writeln('Quantidade de múltiplos de 4: ',multiplos_4);     // Questão (c)
  writeln('Quantidade de números primos: ',primos);          // Questão (d)
  repeat until keypressed;
end.