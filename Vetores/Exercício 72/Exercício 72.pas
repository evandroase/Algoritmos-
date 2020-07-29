//Exercicio 72: Armazenar 50 números num arranjo e verificar se existem números iguais. Existindo, informar quais números
//são iguais e armazenar as posições em que se encontram (mesmo que a igualdade ocorrer mais de uma vez!).

{         Solução em Portugol
Algoritmo Exercicio 72;
Tipo
  vet = vetor[1..50] de real;
Var
  v,posicoes_iguais: vet ;
  i,j,acumulador: inteiro;
Inicio
  acumulador <- 0;
  exiba("Programa que armazena 50 números e diz se existem números iguais.");
  para i <- 1 até 50 faça
    exiba("Digite o ",i,"º número:");
    leia(v[i]);
    posicoes_iguais[i] <- 0;
  fimpara;
	
  para i <- 1 até 50 faça
    para j <- i + 1 até 50 faça                                    // Verificando se existem números iguais e armazenando
      se(v[i] = v[j])                                              // as posições que ocorrem.
        então Inicio
                acumulador <- acumulador + 1;
                posições_iguais[j] <- j;
                posicoes_iguais[i] <- i;
              Fim
      fimse;
    fimpara;
  fimpara;
	
  exiba("Existem números iguais?");
  se(acumulador > 0)
    então exiba("Verdadeiro")
    senão exiba("Falso");
  fimse;
  acumulador <- 0;
  para i <- 1 até 50 faça                                       // Exibindo as posições de igualdade.
    se(posicoes_iguais[i] <> 0)
      então Inicio
              exiba("Numero igual: ", v[i]," nas posicoes: ");     // Exibe o número igual.
              para j <- 1 até 50 faça                              // Exibe as posições em que esse número aparece.
                se(v[i] = v[j])                                    
                  então Inicio
                          exiba(j);
                          posicoes_iguais[j] := 0;
                        Fim
                fimse;  
              fimpara; 
            Fim;
    fimse;
	fimpara;
Fim.
}

// Solução em Pascal

Program Exercicio72;
uses crt;
Type
  vet = array[1..50] of integer;
Var
  v,posicoes_iguais: vet ;
  i,j,acumulador: integer;
begin
  clrscr;
  acumulador := 0;
  writeln('Programa que armazena 50 números e diz se existem números iguais.');
  for i := 1 to 50 do
  Begin
    writeln('Digite o ',i,'º número:');
    readln(v[i]);
    posicoes_iguais[i] := 0;           // Posições diferentes de 0 tem números iguais.
  End;

  for i := 1 to 50 do
    for j := i + 1 to 50 do                                    // Verificando se existem números iguais e armazenando
      if(v[i] = v[j])                                          // as posições que ocorrem.
        then Begin
                acumulador := acumulador + 1;
                posicoes_iguais[j] := j;
                posicoes_iguais[i] := i;
             End;
  writeln('Existem números iguais?');
  if(acumulador > 0)
    then writeln('Verdadeiro')
    else writeln('Falso');
  for i := 1 to 50 do                                       // Exibindo as posições de igualdade.
    if(posicoes_iguais[i] <> 0)
      then Begin
              writeln('Numero igual: ', v[i],' nas posicoes: ');    // Exibe o número igual.
              for j := 1 to 50 do                                   // Exibe as posições em que esse número aparece.
                if(v[i] = v[j])
                  then Begin
                          writeln(j);
                          posicoes_iguais[j] := 0;
                       End;
           End;
end.