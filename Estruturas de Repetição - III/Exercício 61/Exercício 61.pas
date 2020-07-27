//Exercicio 61: Escreva um algoritmo para ler um n�mero real e, a seguir, ler e exibir uma lista de n�meros reais at�
//que seja lido um n�mero igual ao primeiro lido. Nem o primeiro n�mero nem o �ltimo devem ser exibidos

{         Solu��o em Portugol
Algoritmo Exercicio 61;
Var
  segredo, numero: real;
Inicio
  exiba("Digite um n�mero qualquer: ");
  leia(segredo);
  numero <- segredo - 1;          // Isso � s� pra evitar que n�o se entre no loop.
  enquanto(segredo <> numero)fa�a
    exiba("Digite um n�mero: ");
    leia(numero);
    se(numero <> segredo)
      ent�o exiba("O n�mero digitado foi: ", numero);
    fimse;
  fimenquanto;
Fim.
}

// Solu��o em Pascal

Program Exercicio61;
uses crt;
var
  segredo, numero: real;
begin
  clrscr;
  writeln('Digite um n�mero qualquer: ');
  readln(segredo);
  numero := segredo - 1;          // Isso � s� pra evitar que n�o se entre no loop.
  while(segredo <> numero)do
  Begin
    writeln('Digite um n�mero: ');
    readln(numero);
    if(numero <> segredo)
      then writeln('O n�mero digitado foi: ', numero:0:2);
  End;
  repeat until keypressed;
end.