{
Exercício 36: Elabore um algoritmo que receba o valor de dois números inteiros e a operação aritmética desejada.
Calcule e exiba, então, a resposta adequada. Utilize os símbolos da tabela abaixo para ler qual a operação aritmética escolhida.

Símbolo          Operação
  +               Adição
  -              Subtração
  *             Multiplicação
  /               Divisão
}
{		      Solução em Portugol
Algoritmo Exercicio 36;
Var
  numero1,numero2: real;
  operacao: caracter;
Inicio
  exiba("Calculadora com as 4 operações básicas.");
  exiba("Digite o primeiro número: ");
  leia(numero1);
  exiba("Digite a operação que você deseja realizar: ");
  leia(operacao);
  exiba("Digite o segundo número: ");
  leia(numero2);
  caso(operacao)de
    "+": exiba("A soma dos dois números é: ", numero1 + numero2);
    "-": exiba("A subtração dos dois números é: ", numero1 - numero2);
    "*": exiba("A multiplicação dos dois números é: ", numero1 * numero2);
    "/": exiba("A divisão dos dois números é: ", numero1 / numero2);
    senão exiba("Reinicie o programa e digite uma operação válida.");
  fimcaso;
Fim.
}

// Solução em Pascal

Program Exercicio36;
uses crt;
var
  numero1,numero2: real;
  operacao: char;
begin
  clrscr;
  writeln('Calculadora com as 4 operações básicas.');
  writeln('Digite o primeiro número: ');
  readln(numero1);
  writeln('Digite a operação que você deseja realizar: ');
  readln(operacao);
  writeln('Digite o segundo número: ');
  readln(numero2);
  case(operacao)of
    '+': writeln('A soma dos dois números é: ', (numero1 + numero2):0:2);
    '-': writeln('A subtração dos dois números é:', (numero1 - numero2):0:2);
    '*': writeln('A multiplicação dos dois números é:', (numero1 * numero2):0:2);
    '/': writeln('A divisão dos dois números é:', (numero1 / numero2):0:2);
    else writeln('Reinicie o programa e digite uma operação válida.');
  End;
  repeat until keypressed;
end.