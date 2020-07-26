//Exercicio 55: Em um determinado ano as populações do Brasil e dos EUA são, respectivamente de: 100.000.000 e 190.000.000.
//Supondo que a população do Brasil cresça a uma taxa de 4% ao ano e a dos EUA a uma taxa de 2% ano,construa um algoritmo
//que calcule e exiba em quantos anos a população brasileira será maior do que a população americana.

{         Solução em Portugol
Algoritmo Exercicio 55;
Const
  populacao_brasileira = 100000000;
  populacao_americana = 190000000;
  crescimento_popbrasil = 1,04;
  crescimento_popeua = 1,02;
Var
  anos,brasil,eua: real;
Inicio
  exiba("Prorama que calcula em quantos anos a população brasileira será maior que a americana.");
  anos <- 0;
  brasil <- 100000000;
  eua <- 190000000;
  enquanto(eua >= brasil)faça
    anos <- anos + 1;
    eua <- populacao_americana * crescimento_popeua ^ anos;
    brasil <- populacao_brasileira * crescimento_popbrasil ^ anos;
  fimenquanto;
  exiba("A população brasileira será maior que a americana em ", anos," anos.");
Fim.
}

// Solução em Pascal

Program Exercicio55;
uses crt;
Const
  populacao_brasileira = 100000000;
  populacao_americana = 190000000;
  crescimento_popbrasil = 1.04;
  crescimento_popeua = 1.02;
var
  anos,brasil,eua: real;
begin
  clrscr;
  writeln('Prorama que calcula em quantos anos a população brasileira será maior que a americana.');
  anos := 0;
  brasil := 100000000;
  eua := 190000000;
  while(eua >= brasil)do
  Begin
    anos := anos + 1;
    eua := populacao_americana * exp( ln(crescimento_popeua) * anos);
    brasil := populacao_brasileira * exp( ln(crescimento_popbrasil) * anos);
  End;
  writeln('A população brasileira será maior que a americana em ', anos:0:0,' anos.');
  repeat until keypressed;
end.