//Exercicio 48: Escreva um algoritmo que receba do usu�rio a quantidade de n�meros que ele deseja somar.
//Depois receba os n�meros e calcule e exiba a soma dos mesmos.

{		      Solu��o em Portugol
Algoritmo Exercicio 48;
Var
  numero,soma: real;
  quantidade_numero,contador: inteiro;
Inicio
  exiba("Programa somat�rio.");
  exiba("Digite quantos n�meros voc� quer somar: ");
  leia(quantidade_numero);
  soma <- 0;
  enquanto(quantidade_numero < 0)fa�a
    exiba("Digite uma quantidade de n�meros maior que 0!!!");
    leia(quantidade_numero);
  fimenquanto;
  para contador <- 1 at� quantidade_numero faca
    exiba("Digite o ",contador,"� n�mero: ");
    leia(numero);
    soma <- soma + numero;
  fimpara;
  exiba("O valor da soma �: ",soma);
Fim.
}

// Solu��o em Pascal

Program Exercicio48;
uses crt;
var
  numero,soma: real;
  quantidade_numero,contador: integer;
begin
  clrscr;
  writeln('Programa somat�rio.');
  writeln('Digite quantos n�meros voc� quer somar: ');
  readln(quantidade_numero);
  soma := 0;
  while(quantidade_numero < 0)do
  Begin
    writeln('Digite uma quantidade de n�meros maior que 0!!!');
    readln(quantidade_numero);
  End;
  for contador := 1 to quantidade_numero do
  Begin
    writeln('Digite o ',contador,'� n�mero: ');
    readln(numero);
    soma := soma + numero;
  End;
  writeln('O valor da soma �: ',soma:0:2);
  repeat until keypressed;
end.