//Exercicio 62: Uma pessoa aplicou um capital de R$ 6.000,00 a juros mensais de 26,5% durante um ano.
//Escreva um algoritmo que determine e exiba o montante de cada mês durante esse período.

{         Solução em Portugol
Algoritmo Exercicio 62;
Const
capital_inicial = 6000;
juros = 1,265
Var
  mes: inteiro;
Inicio
  exiba("Programa que calcula quanto de dinheiro a pessoa terá após 1 ano.");
  para mes <- 1 até 12 faça
    exiba("No ",mes,"º mês o valor foi de", (capital_inicial * juros ^ mes)," reais.");
  fimpara;
Fim.
}

// Solução em Pascal

Program Exercicio62;
uses crt;
Const
  capital_inicial = 6000;
  juros = 1.265;
Var
  mes: integer;
begin
  clrscr;
  writeln('Programa que calcula quanto de dinheiro a pessoa terá após 1 ano.');
  for mes := 1 to 12 do
    writeln('No ',mes,'º mês o valor foi de ', (capital_inicial * (exp(mes*ln(juros)))):0:2,' reais.');
  repeat until keypressed;
end.