//Escreva um algoritmo que receba um número qualquer e exiba o dobro desse número.

Program Exercicio1;
uses crt;

var
numero,dobro: integer;

begin
    writeln('Programa que dobra um número.');
    writeln('Digite um número: ');
    readln(numero);
    dobro := numero * 2;
    writeln('O dobro de ',numero,'é: ', dobro);
    repeat until keypressed;    
end.