{
Exercicio 83: Faça um algoritmo que receba a idade, o peso e o sexo de 10 pessoas. Calcule e imprima:

a) total de homens;
b) total de mulheres;
c) média da idade dos homens;
d) média dos pesos das mulheres.

}

{         Solução em Portugol
Algoritmo Exercicio ;
Var
  peso: vetor[1..10] de real;
  idade: vetor[1..10] de inteiro;
  sexo: vetor[1..10] de caracter;
  media_peso_mulher,soma_peso_mulher,media_idade_homem: real;
  i,soma_idade_homem,homem,mulher: inteiro;
Inicio
  soma_peso_mulher <- 0;
  soma_idade_homem <- 0;
  homem <- 0;
  mulher <- 0; 
  exiba("Programa que armazena a idade, sexo, peso de 10 pessoas e exibe um relatório desses dados.");
  para i <- 1 até 10 faça
																										// Leitura dos dados. Sexo -> Idade -> Peso, com consistência de dados.
    exiba("Digite o sexo da pessoa:");
    leia(sexo[i]);
    enquanto((sexo[i] <> 'M') e (sexo[i] <> 'F'))faça
      exiba("Digite F para feminino e M para masculino");
      leia(sexo[i]);
    fimenquanto;
		
    exiba("Digite a idade da pessoa:");
    leia(idade[i]);
    enquanto(idade < 0)faça
      exiba("Digite uma idade válida:");
      leia(idade[i]);
    fimenquanto;
		
    exiba("Digite o peso da pessoa:");
    leia(peso[i]);
    enquanto(peso[i] < 0)faça
      exiba("Digite um peso válido:");
      leia(peso[i]);
    fimenquanto;
		
    caso(sexo[i])de                                               // Acumulando as quantidade de homens, mulheres,
      "F": Inicio                                                 // pesos das mulheres e idades dos homens.
             mulher <- mulher + 1;
             soma_peso_mulher <- soma_peso_mulher + peso[i];
           Fim;
      "M": Inicio
             homem <- homem + 1;
             soma_idade_homem <- soma_idade_homem + idade[i];
           Fim;
    fimcaso;		
  fimpara;
	
  media_idade_homem <- soma_idade_homem/homem;
  media_peso_mulher <- soma_peso_mulher/mulher;
  exiba("Quantidade de homens: ",homem);                             // Questão (a)
  exiba("Quantidade de mulheres: ",mulher);                          // Questão (b)
  se(homem > 0)                                                      // Questão (c)
    então Inicio
            media_idade_homem := soma_idade_homem/homem;
            exiba("A média de idade dos homens é de ", media_idade_homem:0:2," anos.");
          Fim
    senão exiba("Nenhum homem no grupo. Não é possível calcular a média.");
  if(mulher > 0)
    então Inicio                                                     // Questão (d)
            media_peso_mulher := soma_peso_mulher/mulher;
            exiba("A média de peso das mulheres é de ", media_peso_mulher:0:2," kg.");
          Fim
    senão exiba("Nenhuma mulher no grupo. Não é possível calcular a média.");
Fim.
}

// Solução em Pascal

Program Exercicio83;
uses crt;
Var
  peso: array[1..10] of real;
  idade: array[1..10] of integer;
  sexo: array[1..10] of char;
  media_peso_mulher,soma_peso_mulher,media_idade_homem: real;
  i,soma_idade_homem,homem,mulher: integer;
Begin
  soma_peso_mulher := 0;
  soma_idade_homem := 0;
  homem := 0;
  mulher := 0;
  writeln('Programa que armazena a idade, sexo, peso de 10 pessoas e exibe um relatório desses dados.');
  for i := 1 to 10 do
  Begin																									// Leitura dos dados. Sexo -> Idade -> Peso, com consistência de dados.
    writeln('Digite o sexo da pessoa:');
    readln(sexo[i]);
    while((sexo[i] <> 'M') and (sexo[i] <> 'F'))do
    Begin
      writeln('Digite F para feminino ou M para masculino:');
      readln(sexo[i]);
    End;

    writeln('Digite a idade da pessoa:');
    readln(idade[i]);
    while(idade[i] < 0)do
    Begin
      writeln('Digite uma idade válida:');
      readln(idade[i]);
    End;

    writeln('Digite o peso da pessoa:');
    readln(peso[i]);
    while(peso[i] < 0)do
    Begin
      writeln('Digite um peso válido:');
      readln(peso[i]);
    End;

    case(sexo[i])of                                               // Acumulando as quantidade de homens, mulheres,
      'F': Begin                                                 // pesos das mulheres e idades dos homens.
             mulher := mulher + 1;
             soma_peso_mulher := soma_peso_mulher + peso[i];
           End;
      'M': Begin
             homem := homem + 1;
             soma_idade_homem := soma_idade_homem + idade[i];
           End;
    End;
  End;

  writeln('Quantidade de homens: ',homem);                             // Questão (a)
  writeln('Quantidade de mulheres: ',mulher);                          // Questão (b)
  if(homem > 0)                                                        // Questão (c) 
    then Begin
           media_idade_homem := soma_idade_homem/homem;
           writeln('A média de idade dos homens é de ', media_idade_homem:0:2,' anos.');
         End
    else writeln('Nenhum homem no grupo. Não é possível calcular a média.');
  if(mulher > 0)
    then Begin                                                         // Questão (d)
           media_peso_mulher := soma_peso_mulher/mulher;
           writeln('A média de peso das mulheres é de ', media_peso_mulher:0:2,' kg.');
         End
    else writeln('Nenhuma mulher no grupo. Não é possível calcular a média.');  
  repeat until keypressed;
end.