//Exerc�cio 4: Escreva um algoritmo que receba as medidas de frente e fundo de um terreno. Calcule e
//exiba a �rea do terreno.

{		      Solu��o em Portugol

Algoritmo Exercicio;
Var
	frente,fundo,area: inteiro;
Inicio
	exiba("Programa que calcula a �rea de um terreno.");
	exiba("Digite a medida da frente do terreno: ");
	leia(frente);
	exiba("Digite a medida do fundo do terreno: ");
	leia(fundo);
	area <- frente * fundo;
	exiba("A �rea do terreno � de ", area,"unidades de �rea."); // Unidades de �rea podem ser, por exemplo, m�.
Fim.

}

// Solu��o em Pascal

Program Exercicio;
uses crt;

var
    frente,fundo,area: integer;

begin
    clrscr;
    writeln('Programa que calcula a �rea de um terreno.');
    writeln('Digite a medida da frente do terreno: ');
    readln(frente);
    writeln('Digite a medida do fundo do terreno: ');
    readln(fundo);
    area := frente * fundo;
    writeln('A �rea do terreno � de ', area,' unidades de �rea.'); // Unidades de �rea podem ser, por exemplo, m�.
    repeat until keypressed;
end.