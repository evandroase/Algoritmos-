{
  Exercicio 80: Uma empresa possui 5 vendedores que ganham por comiss�o sobre a quantidade de produtos vendidos.
  Cada vendedor em um determinado m�s vendeu X produtos do mesmo tipo. A empresa deseja obter um relat�rio com o
  Nome, o total de vendas e o valor a ser pago a cada vendedor. A comiss�o paga pela empresa � de 30% sobre o valor
  de cada produto vendido.
}

{         Solu��o em Portugol
Algoritmo Exercicio 80;
Var
  nome_vendedor: vetor[1..5] de caracter;
  vendas_vendedor: vetor[1..5] de inteiro;
  comissao_vendedor: vetor[1..5] de real;
	preco <- real;
  i: inteiro;
Inicio
  exiba("Programa que exibe um relat�rio de vendas e a comiss�o a ser paga aos 5 vendedores.");
  exiba("Digite o pre�o do produto:");
  leia(preco);
  enquanto(preco <= 0)fa�a
    exiba("Digite um preco v�lido: ");
    leia(preco);
  fimenquanto;
  para i <- 1 at� 5 fa�a
    exiba("Digite o nome do ",i,"� vendedor:");
    leia(nome_vendedor[i]);
    exiba("Digite a quantidade de produtos que ",nome_vendedor[i]," vendeu:");
    leia(vendas_vendedor[i]);
    comissao_vendedor[i] <- vendas_vendedor[i] * preco * 0,3;
  fimpara;
  exiba("Nome do vendedor         Produtos Vendidos         Comissao a Receber");
  para i <- 1 at� 5 fa�a
    exiba("     ",nome_vendedor[i],"         ",vendas_vendedor[i],"         ",comissao_vendedor[i]);
  fimpara;
Fim.
}

// Solu��o em Pascal

Program Exercicio80;
uses crt;
var
  nome_vendedor: array[1..5] of string;
  vendas_vendedor: array[1..5] of integer;
  comissao_vendedor: array[1..5] of real;
	preco : real;
  i: integer;
begin
  clrscr;
  writeln('Programa que exibe um relat�rio de vendas e a comiss�o a ser paga aos 5 vendedores.');
  writeln('Digite o pre�o do produto:');
  readln(preco);
  while(preco <= 0)do
  Begin
    writeln('Digite um preco v�lido: ');
    readln(preco);
  End;
  for i := 1 to 5 do
  Begin
    writeln('Digite o nome do ',i,'� vendedor:');
    readln(nome_vendedor[i]);
    writeln('Digite a quantidade de produtos que ',nome_vendedor[i],' vendeu:');
    readln(vendas_vendedor[i]);
    comissao_vendedor[i] := vendas_vendedor[i] * preco * 0.3;
  End;
  WriteLn('Nome do vendedor         Produtos Vendidos         Comissao a Receber');    // Ainda n�o sei alinhar.
  For i := 1 to 5 do
    writeln('     ',nome_vendedor[i],'                        ',vendas_vendedor[i],'                        ',comissao_vendedor[i]:0:2);
  repeat until keypressed;
end.