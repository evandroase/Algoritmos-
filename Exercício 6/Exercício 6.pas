//Exercício 6: Escreva um algoritmo que receba o nome de uma pessoa e o ano de seu nascimento. Calcule e exiba a idade
//e o nome.

{		      Solução em Portugol

Algoritmo Exercicio6;
Const
    ano = 2020; // Basta atualizar para o ano atual. Exemplificando o uso de constantes.
Var
    ano_nascimento, idade: inteiro;
		nome: caracter;
Inicio
    exiba("Programa que calcula a idade de uma pessoa.");
    exiba("Digite o ano de nascimento da pessoa: ");
    leia(ano_nascimento);
    exiba("Digite o nome da pessoa: ");
    leia(nome);
    idade <- ano - ano_nascimento;
    exiba(nome," tem ",idade, " anos.");
Fim.

}

// Solução em Pascal

Program Exercicio;
uses crt;
const
    ano = 2020;
var
    ano_nascimento, idade: integer;
    nome: string;
begin
    clrscr;
    writeln('Programa que calcula a idade de uma pessoa.');
    writeln('Digite o ano de nascimento da pessoa: ');
    readln(ano_nascimento);
    writeln('Digite o nome da pessoa: ');
    readln(nome);
    idade := ano - ano_nascimento;
    writeln(nome,' tem ',idade, ' anos.');
    repeat until keypressed;
end.

// OBS:Não se preocupe com idade negativa por enquanto.
// Mais para frente aprenderemos a lidar com consistência de dados.