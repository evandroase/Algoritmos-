//Exercício 4: Escreva um algoritmo que receba as medidas de frente e fundo de um terreno. Calcule e
//exiba a área do terreno.

{		      Solução em Portugol

Algoritmo Exercicio;
Var
	frente,fundo,area: inteiro;
Inicio
	exiba("Programa que calcula a área de um terreno.");
	exiba("Digite a medida da frente do terreno: ");
	leia(frente);
	exiba("Digite a medida do fundo do terreno: ");
	leia(fundo);
	area <- frente * fundo;
	exiba("A área do terreno é de ", area,"unidades de área."); // Unidades de área podem ser, por exemplo, m².
Fim.

}

// Solução em Pascal

Program Exercicio;
uses crt;

var
    frente,fundo,area: integer;

begin
    clrscr;
    writeln('Programa que calcula a área de um terreno.');
    writeln('Digite a medida da frente do terreno: ');
    readln(frente);
    writeln('Digite a medida do fundo do terreno: ');
    readln(fundo);
    area := frente * fundo;
    writeln('A área do terreno é de ', area,' unidades de área.'); // Unidades de área podem ser, por exemplo, m².
    repeat until keypressed;
end.