{
Exercicio 33: Dados três valores X, Y, Z, verificar se eles podem ser os comprimentos dos lados de um triângulo. 
Se forem, verificar e exibir se é um triângulo eqüilátero, isósceles ou escaleno. Se eles não formarem um triângulo,
escrever uma mensagem. Antes da elaboração do algoritmo, torna-se necessária a revisão de algumas propriedades e definições.

Propriedades:O comprimento de um lado de um triângulo não pode ser maior do que a soma dos comprimentos dos outros dois lados.
Definições:  a) Chama-se triângulo eqüilátero o que tem os comprimentos dos três lados iguais;
             b) Chama-se triângulo isósceles ao triângulo que têm os comprimentos de dois lados iguais e um lado diferente;
             c) Triângulo escaleno é o triângulo que tem os comprimentos dos três lados diferentes.

}
{		      Solução em Portugol
Algoritmo Exercicio 33;
Var
  X,Y,Z: real;
Inicio
  exiba("Programa que diz se 3 medidas formam um triângulo e, caso positivo, qual o tipo de triângulo.");
  exiba("Digite o valor de X: ");
  leia(X);
  exiba("Digite o valor de Y: ");
  leia(Y);
  exiba("Digite o valor de Z: ");
  leia(Z);
  se((X > Y + Z) ou (Y > X + Z) ou (Z > X + Y))
    então exiba("Essas medidas não formam um triângulo.")
    senão se((X = Y) e (X = Z))
            então exiba("O triângulo é equilátero.")
            senão se((X <> Y) e (Y <> Z)) e (X <> Z))
                    então exiba("O triângulo é escaleno.")
                    senão exiba("O triângulo é isósceles.");
                  fimse;	
          fimse;
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio33;
uses crt;;
var
  X,Y,Z: real;
begin
  clrscr;
  writeln('Programa que diz se 3 medidas formam um triângulo e, caso positivo, qual o tipo de triângulo.');
  writeln('Digite o valor de X: ');
  readln(X);
  writeln('Digite o valor de Y: ');
  readln(Y);
  writeln('Digite o valor de Z: ');
  readln(Z);
  if((X > Y + Z) or (Y > X + Z) or (Z > X + Y))
    then writeln('Essas medidas não formam um triângulo.')
    else if((X = Y) and (X = Z))
            then writeln('O triângulo é equilátero.')
            else if((X <> Y) and (Y <> Z) and (Z <> X))
                    then writeln('O triângulo é escaleno.')
                    else writeln('O triângulo é isósceles.');
  repeat until keypressed;
end.