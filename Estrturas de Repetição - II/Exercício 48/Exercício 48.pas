//Exercicio 48: Escreva um algoritmo que receba do usuário a quantidade de números que ele deseja somar.
//Depois receba os números e calcule e exiba a soma dos mesmos.

{		      Solução em Portugol
Algoritmo Exercicio 48;
Var
  numero,soma: real;
  quantidade_numero,contador: inteiro;
Inicio
  exiba("Programa somatório.");
  exiba("Digite quantos números você quer somar: ");
  leia(quantidade_numero);
  soma <- 0;
  enquanto(quantidade_numero < 0)faça
    exiba("Digite uma quantidade de números maior que 0!!!");
    leia(quantidade_numero);
  fimenquanto;
  para contador <- 1 até quantidade_numero faca
    exiba("Digite o ",contador,"º número: ");
    leia(numero);
    soma <- soma + numero;
  fimpara;
  exiba("O valor da soma é: ",soma);
Fim.
}

// Solução em Pascal

Program Exercicio48;
uses crt;
var
  numero,soma: real;
  quantidade_numero,contador: integer;
begin
  clrscr;
  writeln('Programa somatório.');
  writeln('Digite quantos números você quer somar: ');
  readln(quantidade_numero);
  soma := 0;
  while(quantidade_numero < 0)do
  Begin
    writeln('Digite uma quantidade de números maior que 0!!!');
    readln(quantidade_numero);
  End;
  for contador := 1 to quantidade_numero do
  Begin
    writeln('Digite o ',contador,'º número: ');
    readln(numero);
    soma := soma + numero;
  End;
  writeln('O valor da soma é: ',soma:0:2);
  repeat until keypressed;
end.