{
Exercicio 73: Escreva um algoritmo que receba 10 n�meros inteiros, calcule e exiba:

a) Quantos n�meros pares e quantos �mpares foram informados;
b) Qual o maior e o menor n�mero;
c) Quantos n�meros s�o m�ltiplos de 4;
d) Quantos n�meros primos foram informados

}
{         Solu��o em Portugol
Algoritmo Exercicio 73;
Var
  pares,impares,maior,menor,multiplos_4,primos,i,j,divisores,aux: inteiro;
  N: vetor[1..10] de inteiros;
Inicio
  pares <- 0;
  impares <- 0;
  multiplos_4 <- 0;
  primos <- 0;
  exiba("Programa que calcula coisas com n�meros inteiros.");
  para i <- 1 at� 10 fa�a                                          // Leitura dos n�meros inteiros.
    exiba("Digite o ",i,"� n�mero: ");
    leia(N[i]);
  fimpara;
	
  para i <- 1 at� 10 fa�a
    se(resto(N[i],2) = 0)                                  // C�lculo da Quest�o (a)
      ent�o pares <- pares + 1
      sen�o impares <- impares + 1;
    fimse;
		
    se(i = 1)                                              //C�lculo da Quest�o (b)
      ent�o Inicio
              maior <- N[i];
              menor <- N[i];
            Fim
    sen�o se(N[i] > maior)
            ent�o maior <- N[i];
            sen�o se(N[i] < menor)
                    ent�o menor <- N[i]
                  fimse;
          fimse;
    fimse;
		
    se(resto(N[i],4) = 0)                                  // C�lculo da Quest�o (c)
      ent�o multiplos_4 <- multiplos_4 + 1;
    fimse;
		aux <- N[i];
    se(aux < 0)
      ent�o aux <- -aux;
    fimse;
    para j <- 1 at� aux fa�a                               // C�lculo da Quest�o (d)
      se(resto(N[i],j) = 0)
        ent�o divisores <- divisores + 1;
      fimse;
    fimpara;
    se(divisores = 2)
      primos <- primos + 1;
    fimse;
    divisores <- 0;
  fimpara;
	exiba("Pares: ", pares," impares: ",impares);            // Quest�o (a)
  exiba("Maior n�mero: ",maior," menor n�mero: ",menor);   // Quest�o (b)
  exiba("Quantidade de m�ltiplos de 4: ",multiplos_4);     // Quest�o (c)
  exiba("Quantidade de n�meros primos: ",primos);          // Quest�o (d)
Fim.
}

// Solu��o em Pascal

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
  writeln('Programa que calcula coisas com n�meros inteiros.');
	
  for i := 1 to 10 do                                       // Leitura dos n�meros inteiros.
  Begin
    writeln('Digite o ',i,'� n�mero: ');
    readln(N[i]);
  End;

  for i := 1 to 10 do
  Begin
    if((N[i] mod 2) = 0)                                  // C�lculo da Quest�o (a)
      then pares := pares + 1
      else impares := impares + 1;
			
    if(i = 1)                                              //C�lculo da Quest�o (b)
      then Begin
              maior := N[i];
              menor := N[i];
           End
      else if(N[i] > maior)
             then maior := N[i]
             else if(N[i] < menor)
                    then menor := N[i];
										
    if((N[i] mod 4) = 0)                                  // C�lculo da Quest�o (c)
      then multiplos_4 := multiplos_4 + 1;

		aux := N[i];
    if(aux < 0)
      then aux := -aux;	
    for j := 1 to aux do                                 // C�lculo da Quest�o (d)
      if(N[i] mod j = 0)
        then divisores := divisores + 1;
    if(divisores = 2)
      then primos := primos + 1;
    divisores := 0;
  End;
  writeln('Pares: ', pares,' impares: ',impares);            // Quest�o (a)
  writeln('Maior n�mero: ',maior,' menor n�mero: ',menor);   // Quest�o (b)
  writeln('Quantidade de m�ltiplos de 4: ',multiplos_4);     // Quest�o (c)
  writeln('Quantidade de n�meros primos: ',primos);          // Quest�o (d)
  repeat until keypressed;
end.