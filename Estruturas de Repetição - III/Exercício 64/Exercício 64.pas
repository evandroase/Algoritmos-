//Exercicio 64: Sejam a e b dois números inteiros. Sabemos que o produto de a por b pode ser calculado da seguinte
//maneira: a X b = a + a + a + a ..... + a, onde o número de termos do lado direto da expressão é b.
//Por exemplo: 3 X 4 = 3 + 3 + 3 + 3. Escreva um algoritmo que leia dois números inteiros e calcule o produto deles
//usando o método descrito acima.

{         Solução em Portugol
Algoritmo Exercicio 64;
Var
  a, b, resultado, contador: inteiro;
Inicio
  resultado <- 0;
  exiba("Calculando o produto a X b através de somas.");
  exiba("Digite o valor de a:");
  leia(a);
  exiba("Digite o valor de b:");
  leia(b);
  se(b < 0)                       // Fazendo o módulo de b para o loop funcionar corretamente.
    então c := -b
    senão c:= b;
  fimse;
  se(b = 0)
		então exiba("O valor da multiplicação é 0")                   // Se b = 0, não é possível fazer a soma.
    senão para contador <- 1 até b faça
             se(((a > 0) and (b < 0)) or ((a < 0) and (b < 0)))   // Tratando as 4 combinações de positivos e negativos.
                então resultado := resultado - a
                senão resultado := resultado + a;
            fimse;
          fimpara;
  fimse;
  exiba("a X b = ", resultado);
Fim.
}

// Solução em Pascal

Program Exercicio64;
uses crt;
var
  a, b, resultado, contador, c: integer;
begin
  clrscr;
  resultado := 0;
  writeln('Calculando o produto a X b através de somas.');
  writeln('Digite o valor de a:');
  readln(a);
  writeln('Digite o valor de b:');
  readln(b);
  if(b < 0)
    then c := -b
    else c:= b;
  if(b = 0)
    then writeln('O valor da multiplicação é 0.')
    else for contador := 1 to c do
            if(((a > 0) and (b < 0)) or ((a < 0) and (b < 0)))
              then resultado := resultado - a
              else resultado := resultado + a;
  writeln('a X b = ', resultado);
  repeat until keypressed;
end.