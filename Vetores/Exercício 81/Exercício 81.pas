{

Exercicio 81: Dada uma relação de 1000 números em graus Celsius, faça um algoritmo que imprima o seguinte relatório:
                       Graus Fahrenheit            Graus Celsius
                            xxxxxx                    xxxxxx

}
{         Solução em Portugol
Algoritmo Exercicio 81;
Tipo
  vet = vetor[1..1000] de real;
Var
  celsius,farenheit: vet;
  i: inteiro;	
Inicio
  exiba("Programa conversor de temperaturas.");
  para i <- 1 até 1000 faça
    exiba("Digite a ",i,"ª temperatura em Celsius:");
    leia(celsius[i]);
    farenheit[i] <- (9/5) * celsius[i] + 32;
  fimpara;
  exiba("Graus Farenheit             "Graus Celsius");
  para i <- 1 até 1000 faça
    exiba(farenheit[i],"             ",celsius[i]);
  fimpara;
Fim.
}

// Solução em Pascal

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
    writeln('Digite a ',i,'ª temperatura em Celsius:');
    readln(celsius[i]);
    farenheit[i] := (9/5) * celsius[i] + 32;
  End;
  writeln('Graus Farenheit             Graus Celsius');
  for i := 1 to 10 do                                                      // Não sei alinhar.
    writeln(farenheit[i]:0:2,'                          ',celsius[i]:0:2);
  repeat until keypressed;
end.