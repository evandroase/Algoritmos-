//Exercicio 61: Escreva um algoritmo para ler um número real e, a seguir, ler e exibir uma lista de números reais até
//que seja lido um número igual ao primeiro lido. Nem o primeiro número nem o último devem ser exibidos

{         Solução em Portugol
Algoritmo Exercicio 61;
Var
  segredo, numero: real;
Inicio
  exiba("Digite um número qualquer: ");
  leia(segredo);
  numero <- segredo - 1;          // Isso é só pra evitar que não se entre no loop.
  enquanto(segredo <> numero)faça
    exiba("Digite um número: ");
    leia(numero);
    se(numero <> segredo)
      então exiba("O número digitado foi: ", numero);
    fimse;
  fimenquanto;
Fim.
}

// Solução em Pascal

Program Exercicio61;
uses crt;
var
  segredo, numero: real;
begin
  clrscr;
  writeln('Digite um número qualquer: ');
  readln(segredo);
  numero := segredo - 1;          // Isso é só pra evitar que não se entre no loop.
  while(segredo <> numero)do
  Begin
    writeln('Digite um número: ');
    readln(numero);
    if(numero <> segredo)
      then writeln('O número digitado foi: ', numero:0:2);
  End;
  repeat until keypressed;
end.