//Exercicio 64: Sejam a e b dois n�meros inteiros. Sabemos que o produto de a por b pode ser calculado da seguinte
//maneira: a X b = a + a + a + a ..... + a, onde o n�mero de termos do lado direto da express�o � b.
//Por exemplo: 3 X 4 = 3 + 3 + 3 + 3. Escreva um algoritmo que leia dois n�meros inteiros e calcule o produto deles
//usando o m�todo descrito acima.

{         Solu��o em Portugol
Algoritmo Exercicio 64;
Var
  a, b, resultado, contador: inteiro;
Inicio
  resultado <- 0;
  exiba("Calculando o produto a X b atrav�s de somas.");
  exiba("Digite o valor de a:");
  leia(a);
  exiba("Digite o valor de b:");
  leia(b);
  se(b < 0)                       // Fazendo o m�dulo de b para o loop funcionar corretamente.
    ent�o c := -b
    sen�o c:= b;
  fimse;
  se(b = 0)
		ent�o exiba("O valor da multiplica��o � 0")                   // Se b = 0, n�o � poss�vel fazer a soma.
    sen�o para contador <- 1 at� b fa�a
             se(((a > 0) and (b < 0)) or ((a < 0) and (b < 0)))   // Tratando as 4 combina��es de positivos e negativos.
                ent�o resultado := resultado - a
                sen�o resultado := resultado + a;
            fimse;
          fimpara;
  fimse;
  exiba("a X b = ", resultado);
Fim.
}

// Solu��o em Pascal

Program Exercicio64;
uses crt;
var
  a, b, resultado, contador, c: integer;
begin
  clrscr;
  resultado := 0;
  writeln('Calculando o produto a X b atrav�s de somas.');
  writeln('Digite o valor de a:');
  readln(a);
  writeln('Digite o valor de b:');
  readln(b);
  if(b < 0)
    then c := -b
    else c:= b;
  if(b = 0)
    then writeln('O valor da multiplica��o � 0.')
    else for contador := 1 to c do
            if(((a > 0) and (b < 0)) or ((a < 0) and (b < 0)))
              then resultado := resultado - a
              else resultado := resultado + a;
  writeln('a X b = ', resultado);
  repeat until keypressed;
end.