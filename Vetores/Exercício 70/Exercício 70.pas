{
Exercicio 70: Armazenando nome e sal�rio de 10 funcion�rios, fa�a:

a) Exibir nome e sal�rio dos funcion�rios que ganham acima de R$ 1.500,00;
b) Aplicar aumento de 20% para os funcion�rios que ganham menos de R$ 500,00 e
   exibir nome e novo sal�rio dos funcion�rios que tiveram aumento.	
}
{         Solu��o em Portugol
Algoritmo Exercicio 70;
Var
  nome_funcionario: vetor[1..10] de caracter;
  salario_funcionario: vetor[1..10] de real;
  i, inteiro;	
Inicio
  exiba("Programa de sal�rios de uma empresa.");
  para i <- 1 at� 10 fa�a                                                  // Leitura dos nomes e sal�rios
    exiba("Digite o nome do",i,"� funcion�rio:");
    leia(nome_funcionario[i]);
    exiba("Digite o sal�rio de ",nome_funcionario[i]);
    leia(salario_funcionario[i]);
  fimpara;
  para i <- 1 at� 10 fa�a                                                 // Quest�o (a)
    se(salario_funcionario[i] > 1500)
      ent�o exiba(nome_funcionario[i]," faz ",salario_funcionario[i]," reais.");
    fimse;
    se(salario_funcionario[i] < 600)                                                       // Quest�o (b)
      ent�o exiba(nome_funcionario[i]," tem um novo sal�rio: ",1,2 * salario_funcionario[i]," reais.");
    fimse;
  fimpara;
Fim.
}

// Solu��o em Pascal

Program Exercicio;
uses crt;
var
  nome_funcionario: array[1..10] of string;
  salario_funcionario: array[1..10] of real;
  i: integer;
begin
  clrscr;
  writeln('Programa de sal�rios de uma empresa.');
  for i := 1 to 10 do                                                  // Leitura dos nomes e sal�rios
  Begin
    writeln('Digite o nome do ',i,'� funcion�rio:');
    readln(nome_funcionario[i]);
    writeln('Digite o sal�rio de ',nome_funcionario[i]);
    readln(salario_funcionario[i]);
  End;
  for i := 1 to 10 do                                                 // Quest�o (a)
  Begin
    if(salario_funcionario[i] > 1500)
      then writeln(nome_funcionario[i],' faz ',salario_funcionario[i]:0:2,' reais.');
    if(salario_funcionario[i] < 600)                                                       // Quest�o (b)
      then writeln(nome_funcionario[i],' tem um novo sal�rio: ',1,2 * salario_funcionario[i]:0:2,' reais.');
  End;;
  repeat until keypressed;
end.