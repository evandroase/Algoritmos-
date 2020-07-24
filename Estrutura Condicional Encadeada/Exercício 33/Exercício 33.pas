{
Exercicio 33: Dados tr�s valores X, Y, Z, verificar se eles podem ser os comprimentos dos lados de um tri�ngulo. 
Se forem, verificar e exibir se � um tri�ngulo eq�il�tero, is�sceles ou escaleno. Se eles n�o formarem um tri�ngulo,
escrever uma mensagem. Antes da elabora��o do algoritmo, torna-se necess�ria a revis�o de algumas propriedades e defini��es.

Propriedades:O comprimento de um lado de um tri�ngulo n�o pode ser maior do que a soma dos comprimentos dos outros dois lados.
Defini��es:  a) Chama-se tri�ngulo eq�il�tero o que tem os comprimentos dos tr�s lados iguais;
             b) Chama-se tri�ngulo is�sceles ao tri�ngulo que t�m os comprimentos de dois lados iguais e um lado diferente;
             c) Tri�ngulo escaleno � o tri�ngulo que tem os comprimentos dos tr�s lados diferentes.

}
{		      Solu��o em Portugol
Algoritmo Exercicio 33;
Var
  X,Y,Z: real;
Inicio
  exiba("Programa que diz se 3 medidas formam um tri�ngulo e, caso positivo, qual o tipo de tri�ngulo.");
  exiba("Digite o valor de X: ");
  leia(X);
  exiba("Digite o valor de Y: ");
  leia(Y);
  exiba("Digite o valor de Z: ");
  leia(Z);
  se((X > Y + Z) ou (Y > X + Z) ou (Z > X + Y))
    ent�o exiba("Essas medidas n�o formam um tri�ngulo.")
    sen�o se((X = Y) e (X = Z))
            ent�o exiba("O tri�ngulo � equil�tero.")
            sen�o se((X <> Y) e (Y <> Z)) e (X <> Z))
                    ent�o exiba("O tri�ngulo � escaleno.")
                    sen�o exiba("O tri�ngulo � is�sceles.");
                  fimse;	
          fimse;
  fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio33;
uses crt;;
var
  X,Y,Z: real;
begin
  clrscr;
  writeln('Programa que diz se 3 medidas formam um tri�ngulo e, caso positivo, qual o tipo de tri�ngulo.');
  writeln('Digite o valor de X: ');
  readln(X);
  writeln('Digite o valor de Y: ');
  readln(Y);
  writeln('Digite o valor de Z: ');
  readln(Z);
  if((X > Y + Z) or (Y > X + Z) or (Z > X + Y))
    then writeln('Essas medidas n�o formam um tri�ngulo.')
    else if((X = Y) and (X = Z))
            then writeln('O tri�ngulo � equil�tero.')
            else if((X <> Y) and (Y <> Z) and (Z <> X))
                    then writeln('O tri�ngulo � escaleno.')
                    else writeln('O tri�ngulo � is�sceles.');
  repeat until keypressed;
end.