{
Exercicio 70: Armazenando nome e salário de 10 funcionários, faça:

a) Exibir nome e salário dos funcionários que ganham acima de R$ 1.500,00;
b) Aplicar aumento de 20% para os funcionários que ganham menos de R$ 500,00 e
   exibir nome e novo salário dos funcionários que tiveram aumento.	
}
{         Solução em Portugol
Algoritmo Exercicio 70;
Var
  nome_funcionario: vetor[1..10] de caracter;
  salario_funcionario: vetor[1..10] de real;
  i, inteiro;	
Inicio
  exiba("Programa de salários de uma empresa.");
  para i <- 1 até 10 faça                                                  // Leitura dos nomes e salários
    exiba("Digite o nome do",i,"º funcionário:");
    leia(nome_funcionario[i]);
    exiba("Digite o salário de ",nome_funcionario[i]);
    leia(salario_funcionario[i]);
  fimpara;
  para i <- 1 até 10 faça                                                 // Questão (a)
    se(salario_funcionario[i] > 1500)
      então exiba(nome_funcionario[i]," faz ",salario_funcionario[i]," reais.");
    fimse;
    se(salario_funcionario[i] < 600)                                                       // Questão (b)
      então exiba(nome_funcionario[i]," tem um novo salário: ",1,2 * salario_funcionario[i]," reais.");
    fimse;
  fimpara;
Fim.
}

// Solução em Pascal

Program Exercicio;
uses crt;
var
  nome_funcionario: array[1..10] of string;
  salario_funcionario: array[1..10] of real;
  i: integer;
begin
  clrscr;
  writeln('Programa de salários de uma empresa.');
  for i := 1 to 10 do                                                  // Leitura dos nomes e salários
  Begin
    writeln('Digite o nome do ',i,'º funcionário:');
    readln(nome_funcionario[i]);
    writeln('Digite o salário de ',nome_funcionario[i]);
    readln(salario_funcionario[i]);
  End;
  for i := 1 to 10 do                                                 // Questão (a)
  Begin
    if(salario_funcionario[i] > 1500)
      then writeln(nome_funcionario[i],' faz ',salario_funcionario[i]:0:2,' reais.');
    if(salario_funcionario[i] < 600)                                                       // Questão (b)
      then writeln(nome_funcionario[i],' tem um novo salário: ',1,2 * salario_funcionario[i]:0:2,' reais.');
  End;;
  repeat until keypressed;
end.