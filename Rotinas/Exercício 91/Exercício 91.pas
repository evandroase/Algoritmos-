//Exercicio 91: Fa�a um algoritmo que imite as opera��es b�sicas de uma calculadora. Deve possuir um menu principal
//(criado a partir de uma fun��o) e possuir as quatro opera��es b�sicas: soma, subtra��o, multiplica��o e divis�o.
//Cada a��o deve ser executada a partir de uma fun��o.

{         Solu��o em Portugol
Algoritmo Exerc�cio91;
VAR
  FUNCIONAMENTO: CARACTER;
  OPERACAO: CARACTER;
FUNCAO MENU( A: CARACTER) : CARACTER;
INICIO
  EXIBA("BEM VINDO A CALCULADORA DA FATEC-BTU!");
  EXIBA("QUAL OPERA��O VOC� DESEJA FAZER?");
  LEIA(A);
  MENU <- A;
FIM;
FUNCAO SOMA( J: CARACTER): REAL
VAR
  A,B: REAL;
INICIO
  EXIBA("DIGITE O PRIMEIRO NUMERO DA SOMA: ");
  LEIA(A);
  EXIBA("DIGITE O SEGUNDO NUMERO DA SOMA: ");
  LEIA(B);
  SOMA <- A+B;
FIM;
FUNCAO SUBTRACAO( J: CARACTER): REAL
VAR
  A,B: REAL;
INICIO
  EXIBA("DIGITE O PRIMEIRO NUMERO DA SUBTRACAO: ");
  LEIA(A);
  EXIBA("DIGITE O SEGUNDO NUMERO DA SUBTRACAO: ");
  LEIA(B);
  SUBTRACAO <- A-B;
FIM;
FUNCAO MULTIPLICACAO( J: CARACTER): REAL
VAR
  A,B: REAL;
INICIO
  EXIBA("DIGITE O PRIMEIRO NUMERO DA MULTIPLICA��O: ");
  LEIA(A);
  EXIBA("DIGITE O SEGUNDO NUMERO DA MULTIPLICA��O: ");
  LEIA(B);
  MULTIPLICACAO <- A*B;
FIM;
FUNCAO DIVISAO( A: CARACTER): REAL
VAR
  A,B: REAL;
INICIO
  EXIBA("DIGITE O PRIMEIRO NUMERO DA DIVISAO: ");
  LEIA(A);
  EXIBA("DIGITE O SEGUNDO NUMERO DA DIVISAO: ");
  LEIA(B);
  ENQUANTO( B = 0) FACA
    EXIBA("DIGITE UM NUMERO DIFERENTE DE 0!!");
    LEIA(B);
  FIMENQUANTO;
DIVISAO <- A/B;
FIM;

INICIO
  FUNCIONAMENTO <- "S";
  OPERACAO <- "S";
  ENQUANTO (FUNCIONAMENTO = "S") FACA
    CASO (MENU(OPERACAO)) DE
      "+": EXIBA(SOMA(OPERACAO));
      "-": EXIBA(SUBTRACAO(OPERACAO);
      "*": EXIBA(MULTIPLICACAO(OPERACAO);
      "/": EXIBA(DIVISAO(OPERACAO);
      SENAO
        EXIBA("VOC� N�O DIGITOU UMA OPERA��O V�LIDA!!");
  FIMCASO;
    EXIBA("DESEJA CONTINUAR USANDO A CALCULADORA?");
    EXIBA("DIGITE S PARA CONTINUAR E QUALQUER OUTRA TECLA PARA SAIR DA CALCULADORA");
    LEIA(FUNCIONAMENTO);
  FIMENQUANTO;
  EXIBA("At� logo!");
FIM.
}

// Solu��o em Pascal

Program Exercicio;
uses crt;
VAR
  FUNCIONAMENTO: char;
  OPERACAO: char;
Function MENU( A: char) : char;
Begin
  writeln('BEM VINDO A CALCULADORA DA FATEC-BTU!');
  writeln('QUAL OPERA��O VOC� DESEJA FAZER?');
  readln(A);
  MENU := A;
End;
Function SOMA( J: Char): Real;
VAR
  A,B: REAL;
Begin
  writeln('DIGITE O PRIMEIRO NUMERO DA SOMA: ');
  readln(A);
  writeln('DIGITE O SEGUNDO NUMERO DA SOMA: ');
  readln(B);
  SOMA := A+B;
End;
Function SUBTRACAO( J: char): real;
VAR
  A,B: REAL;
Begin
  writeln('DIGITE O PRIMEIRO NUMERO DA SUBTRACAO: ');
  readln(A);
  writeln('DIGITE O SEGUNDO NUMERO DA SUBTRACAO: ');
  writeln(B);
  SUBTRACAO := A-B;
End;
Function MULTIPLICACAO( J: char): real;
VAR
  A,B: REAL;
Begin
  writeln('DIGITE O PRIMEIRO NUMERO DA MULTIPLICA��O: ');
  readln(A);
  writeln('DIGITE O SEGUNDO NUMERO DA MULTIPLICA��O: ');
  readln(B);
  MULTIPLICACAO := A*B;
End;
Function DIVISAO( J: char): real;
VAR
  A,B: REAL;
Begin
  writeln('DIGITE O PRIMEIRO NUMERO DA DIVISAO: ');
  readln(A);
  writeln('DIGITE O SEGUNDO NUMERO DA DIVISAO: ');
  readln(B);
  while( B = 0) do
  Begin
    writeln('DIGITE UM NUMERO DIFERENTE DE 0!!');
    readln(B);
  End;
  DIVISAO := A/B;
End;

Begin
  FUNCIONAMENTO := 'S';
  OPERACAO := 'S';
  while (FUNCIONAMENTO = 'S') do
  Begin
    case (MENU(OPERACAO)) of
      '+': writeln(SOMA(OPERACAO):0:2);
      '-': writeln(SUBTRACAO(OPERACAO):0:2);
      '*': writeln(MULTIPLICACAO(OPERACAO):0:2);
      '/': writeln(DIVISAO(OPERACAO):0:2);
      else
        writeln('VOC� N�O DIGITOU UMA OPERA��O V�LIDA!!');
    End;
    writeln('DESEJA CONTINUAR USANDO A CALCULADORA?');
    writeln('DIGITE S PARA CONTINUAR E QUALQUER OUTRA TECLA PARA SAIR DA CALCULADORA');
    readln(FUNCIONAMENTO);
  end;
  writeln('At� logo!');
  repeat until keypressed;
end.