{

Exercicio 81: Dada uma rela��o de 1000 n�meros em graus Celsius, fa�a um algoritmo que imprima o seguinte relat�rio:
                       Graus Fahrenheit            Graus Celsius
                            xxxxxx                    xxxxxx

}
{         Solu��o em Portugol
Algoritmo Exercicio 81;
Tipo
  vet = vetor[1..1000] de real;
Var
  celsius,farenheit: vet;
  i: inteiro;	
Inicio
  exiba("Programa conversor de temperaturas.");
  para i <- 1 at� 1000 fa�a
    exiba("Digite a ",i,"� temperatura em Celsius:");
    leia(celsius[i]);
    farenheit[i] <- (9/5) * celsius[i] + 32;
  fimpara;
  exiba("Graus Farenheit             "Graus Celsius");
  para i <- 1 at� 1000 fa�a
    exiba(farenheit[i],"             ",celsius[i]);
  fimpara;
Fim.
}

// Solu��o em Pascal

Program Exercicio81;
uses crt;
Type
  vet = Array[1..1000] of real;
Var
  celsius,farenheit: vet;
  i: integer;
Begin
  writeln('Programa conversor de temperaturas.');
  for i := 1 to 10 do
  Begin
    writeln('Digite a ',i,'� temperatura em Celsius:');
    readln(celsius[i]);
    farenheit[i] := (9/5) * celsius[i] + 32;
  End;
  writeln('Graus Farenheit             Graus Celsius');
  for i := 1 to 10 do                                                      // N�o sei alinhar.
    writeln(farenheit[i]:0:2,'                          ',celsius[i]:0:2);
  repeat until keypressed;
end.