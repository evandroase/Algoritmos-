{

Exercicio 88: Dado uma matriz de ordem 3x3 faça um algoritmo que:
a) Calcule a soma dos elementos da primeira coluna;
b) Calcule o produto dos elementos da primeira linha;
c) Calcule a soma de todos os elementos da matriz;
d) Calcule a soma do diagonal principal;

}
{         Solução em Portugol
Algoritmo Exercicio 88;
Var
  M: vetor[1..3,1..3] de real;
  soma_primeira_coluna, produto_primeira_linha,soma_elementos,soma_diagonal: real;
  i,j: inteiro;
Inicio
  soma_primeira_coluna <- 0;
  produto_primeira_linha <- 1;
  soma_elementos <- 0;
  soma_diagonal <- 0;
  exiba("Programa que faz cálculos com elementos de uma matriz 3 x 3.");
  para i <- 1 até 3 faça
    para j <- 1 até 3 faça
      exiba("Digite o elemento M[",i,",",j,"]");
      leia(M[i,j]);
      soma_elementos <- soma_elementos + M[i,j];
      se(j = 1)
        então soma_primeira_coluna <- soma_primeira_coluna + M[i,j];
      fimse;
      se(i = 1)
        então produto_primeira_linha <- produto_primeira_linha + M[i,j];
      fimse;
      se(i = j)
        então soma_diagonal <- soma_diagonal + M[i,j];
      fimse;
    fimpara;
  fimpara;
  exiba("Soma dos elementos da primeira coluna: ",soma_primeira_coluna);
  exiba("Soma dos elementos da primeira linha: ",produto_primeira_linha);
  exiba("Soma dos elementos da diagonal principal: ",soma_diagonal);
  exiba("Soma de todos os elementos da matriz: ",soma_elementos);
Fim.
}

// Solução em Pascal

Program Exercicio88;
uses crt;
Var
  M: array[1..3,1..3] of real;
  soma_primeira_coluna, produto_primeira_linha,soma_elementos,soma_diagonal: real;
  i,j: integer;
Begin
  soma_primeira_coluna := 0;
  produto_primeira_linha := 1;
  soma_elementos := 0;
  soma_diagonal := 0;
  writeln('Programa que faz cálculos com elementos de uma matriz 3 x 3.');
  for i := 1 to 3 do
    for j := 1 to 3 do
    Begin
      writeln('Digite o elemento M[',i,',',j,']');
      readln(M[i,j]);
      soma_elementos := soma_elementos + M[i,j];
      if(j = 1)
        then soma_primeira_coluna := soma_primeira_coluna + M[i,j];
      if(i = 1)
        then produto_primeira_linha := produto_primeira_linha * M[i,j];
      if(i = j)
        then soma_diagonal := soma_diagonal + M[i,j];
    End;
  writeln('Soma dos elementos da primeira coluna: ',soma_primeira_coluna:0:2);
  writeln('Produto dos elementos da primeira linha: ',produto_primeira_linha:0:2);
  writeln('Soma dos elementos da diagonal principal: ',soma_diagonal:0:2);
  writeln('Soma de todos os elementos da matriz: ',soma_elementos:0:2);
  repeat until keypressed;
end.