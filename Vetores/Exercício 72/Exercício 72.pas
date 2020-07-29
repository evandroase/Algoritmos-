//Exercicio 72: Armazenar 50 n�meros num arranjo e verificar se existem n�meros iguais. Existindo, informar quais n�meros
//s�o iguais e armazenar as posi��es em que se encontram (mesmo que a igualdade ocorrer mais de uma vez!).

{         Solu��o em Portugol
Algoritmo Exercicio 72;
Tipo
  vet = vetor[1..50] de real;
Var
  v,posicoes_iguais: vet ;
  i,j,acumulador: inteiro;
Inicio
  acumulador <- 0;
  exiba("Programa que armazena 50 n�meros e diz se existem n�meros iguais.");
  para i <- 1 at� 50 fa�a
    exiba("Digite o ",i,"� n�mero:");
    leia(v[i]);
    posicoes_iguais[i] <- 0;
  fimpara;
	
  para i <- 1 at� 50 fa�a
    para j <- i + 1 at� 50 fa�a                                    // Verificando se existem n�meros iguais e armazenando
      se(v[i] = v[j])                                              // as posi��es que ocorrem.
        ent�o Inicio
                acumulador <- acumulador + 1;
                posi��es_iguais[j] <- j;
                posicoes_iguais[i] <- i;
              Fim
      fimse;
    fimpara;
  fimpara;
	
  exiba("Existem n�meros iguais?");
  se(acumulador > 0)
    ent�o exiba("Verdadeiro")
    sen�o exiba("Falso");
  fimse;
  acumulador <- 0;
  para i <- 1 at� 50 fa�a                                       // Exibindo as posi��es de igualdade.
    se(posicoes_iguais[i] <> 0)
      ent�o Inicio
              exiba("Numero igual: ", v[i]," nas posicoes: ");     // Exibe o n�mero igual.
              para j <- 1 at� 50 fa�a                              // Exibe as posi��es em que esse n�mero aparece.
                se(v[i] = v[j])                                    
                  ent�o Inicio
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

// Solu��o em Pascal

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
  writeln('Programa que armazena 50 n�meros e diz se existem n�meros iguais.');
  for i := 1 to 50 do
  Begin
    writeln('Digite o ',i,'� n�mero:');
    readln(v[i]);
    posicoes_iguais[i] := 0;           // Posi��es diferentes de 0 tem n�meros iguais.
  End;

  for i := 1 to 50 do
    for j := i + 1 to 50 do                                    // Verificando se existem n�meros iguais e armazenando
      if(v[i] = v[j])                                          // as posi��es que ocorrem.
        then Begin
                acumulador := acumulador + 1;
                posicoes_iguais[j] := j;
                posicoes_iguais[i] := i;
             End;
  writeln('Existem n�meros iguais?');
  if(acumulador > 0)
    then writeln('Verdadeiro')
    else writeln('Falso');
  for i := 1 to 50 do                                       // Exibindo as posi��es de igualdade.
    if(posicoes_iguais[i] <> 0)
      then Begin
              writeln('Numero igual: ', v[i],' nas posicoes: ');    // Exibe o n�mero igual.
              for j := 1 to 50 do                                   // Exibe as posi��es em que esse n�mero aparece.
                if(v[i] = v[j])
                  then Begin
                          writeln(j);
                          posicoes_iguais[j] := 0;
                       End;
           End;
end.