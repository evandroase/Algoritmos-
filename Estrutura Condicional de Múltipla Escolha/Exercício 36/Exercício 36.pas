{
Exerc�cio 36: Elabore um algoritmo que receba o valor de dois n�meros inteiros e a opera��o aritm�tica desejada.
Calcule e exiba, ent�o, a resposta adequada. Utilize os s�mbolos da tabela abaixo para ler qual a opera��o aritm�tica escolhida.

S�mbolo          Opera��o
  +               Adi��o
  -              Subtra��o
  *             Multiplica��o
  /               Divis�o
}
{		      Solu��o em Portugol
Algoritmo Exercicio 36;
Var
  numero1,numero2: real;
  operacao: caracter;
Inicio
  exiba("Calculadora com as 4 opera��es b�sicas.");
  exiba("Digite o primeiro n�mero: ");
  leia(numero1);
  exiba("Digite a opera��o que voc� deseja realizar: ");
  leia(operacao);
  exiba("Digite o segundo n�mero: ");
  leia(numero2);
  caso(operacao)de
    "+": exiba("A soma dos dois n�meros �: ", numero1 + numero2);
    "-": exiba("A subtra��o dos dois n�meros �: ", numero1 - numero2);
    "*": exiba("A multiplica��o dos dois n�meros �: ", numero1 * numero2);
    "/": exiba("A divis�o dos dois n�meros �: ", numero1 / numero2);
    sen�o exiba("Reinicie o programa e digite uma opera��o v�lida.");
  fimcaso;
Fim.
}

// Solu��o em Pascal

Program Exercicio36;
uses crt;
var
  numero1,numero2: real;
  operacao: char;
begin
  clrscr;
  writeln('Calculadora com as 4 opera��es b�sicas.');
  writeln('Digite o primeiro n�mero: ');
  readln(numero1);
  writeln('Digite a opera��o que voc� deseja realizar: ');
  readln(operacao);
  writeln('Digite o segundo n�mero: ');
  readln(numero2);
  case(operacao)of
    '+': writeln('A soma dos dois n�meros �: ', (numero1 + numero2):0:2);
    '-': writeln('A subtra��o dos dois n�meros �:', (numero1 - numero2):0:2);
    '*': writeln('A multiplica��o dos dois n�meros �:', (numero1 * numero2):0:2);
    '/': writeln('A divis�o dos dois n�meros �:', (numero1 / numero2):0:2);
    else writeln('Reinicie o programa e digite uma opera��o v�lida.');
  End;
  repeat until keypressed;
end.