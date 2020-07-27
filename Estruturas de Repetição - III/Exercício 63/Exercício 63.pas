//Exercicio :

{         Solução em Portugol
Algoritmo Exercicio 62;
Var
  capital_inicial, juros: real; 
  mes, contador: inteiro;
Inicio
  exiba("Programa que calcula quanto de dinheiro uma aplicação rende.");
  exiba("Digite o seu capital inicial: ");
  leia(capital_inicial);
  enquanto(capital_inicial <= 0)faça
    exiba("Digite um capital inicial maior que 0.");
    leia(capital_inicial);
  fimenquanto;
  exiba("Digite o tempo, em meses, da aplicação: ");
  leia(mes);
  enquanto(mes <= 0)faça
    exiba("Digite um tempo maior que 0.");
    leia(mes);
  fimenquanto;
  exiba("Digite a taxa de juros da aplicação: ");
  leia(juros);
  enquanto(juros <= 0)faça
    exiba("Digite uma taxa de juros válida.");
    leia(juros);
  fimenquanto;
  para contador <- 1 até mes faça
    exiba("No ",mes,"º mês o valor foi de", (capital_inicial * (1 + juros/100) ^ mes)," reais.");
  fimpara;
Fim.
}

// Solução em Pascal

Program Exercicio;
uses crt;
Var
  mes, contador: integer;
  capital_inicial, juros: real;  
begin
  clrscr;
  writeln('Programa que calcula quanto de dinheiro uma aplicação rende.');
  writeln('Digite o seu capital inicial: ');
  readln(capital_inicial);
  while(capital_inicial <= 0)do
  Begin
    writeln('Digite um capital inicial maior que 0.');
    readln(capital_inicial);
  End;
  writeln('Digite o tempo, em meses, da aplicação: ');
  readln(mes);
  while(mes <= 0)do
  Begin
    writeln('Digite um tempo maior que 0.');
    readln(mes);
  End;
  writeln('Digite a taxa de juros da aplicação: ');
  readln(juros);
  while(juros <= 0)do
  Begin
    writeln('Digite uma taxa de juros válida.');
    readln(juros);
  End;
  for contador := 1 to mes do
    writeln('No ',contador,'º mês o valor foi de ', (capital_inicial * (exp(mes*ln(juros/100 + 1)))):0:2,' reais.');
  repeat until keypressed;
end.