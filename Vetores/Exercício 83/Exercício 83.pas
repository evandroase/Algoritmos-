{
Exercicio 83: Fa�a um algoritmo que receba a idade, o peso e o sexo de 10 pessoas. Calcule e imprima:

a) total de homens;
b) total de mulheres;
c) m�dia da idade dos homens;
d) m�dia dos pesos das mulheres.

}

{         Solu��o em Portugol
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
  exiba("Programa que armazena a idade, sexo, peso de 10 pessoas e exibe um relat�rio desses dados.");
  para i <- 1 at� 10 fa�a
																										// Leitura dos dados. Sexo -> Idade -> Peso, com consist�ncia de dados.
    exiba("Digite o sexo da pessoa:");
    leia(sexo[i]);
    enquanto((sexo[i] <> 'M') e (sexo[i] <> 'F'))fa�a
      exiba("Digite F para feminino e M para masculino");
      leia(sexo[i]);
    fimenquanto;
		
    exiba("Digite a idade da pessoa:");
    leia(idade[i]);
    enquanto(idade < 0)fa�a
      exiba("Digite uma idade v�lida:");
      leia(idade[i]);
    fimenquanto;
		
    exiba("Digite o peso da pessoa:");
    leia(peso[i]);
    enquanto(peso[i] < 0)fa�a
      exiba("Digite um peso v�lido:");
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
  exiba("Quantidade de homens: ",homem);                             // Quest�o (a)
  exiba("Quantidade de mulheres: ",mulher);                          // Quest�o (b)
  se(homem > 0)                                                      // Quest�o (c)
    ent�o Inicio
            media_idade_homem := soma_idade_homem/homem;
            exiba("A m�dia de idade dos homens � de ", media_idade_homem:0:2," anos.");
          Fim
    sen�o exiba("Nenhum homem no grupo. N�o � poss�vel calcular a m�dia.");
  if(mulher > 0)
    ent�o Inicio                                                     // Quest�o (d)
            media_peso_mulher := soma_peso_mulher/mulher;
            exiba("A m�dia de peso das mulheres � de ", media_peso_mulher:0:2," kg.");
          Fim
    sen�o exiba("Nenhuma mulher no grupo. N�o � poss�vel calcular a m�dia.");
Fim.
}

// Solu��o em Pascal

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
  writeln('Programa que armazena a idade, sexo, peso de 10 pessoas e exibe um relat�rio desses dados.');
  for i := 1 to 10 do
  Begin																									// Leitura dos dados. Sexo -> Idade -> Peso, com consist�ncia de dados.
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
      writeln('Digite uma idade v�lida:');
      readln(idade[i]);
    End;

    writeln('Digite o peso da pessoa:');
    readln(peso[i]);
    while(peso[i] < 0)do
    Begin
      writeln('Digite um peso v�lido:');
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

  writeln('Quantidade de homens: ',homem);                             // Quest�o (a)
  writeln('Quantidade de mulheres: ',mulher);                          // Quest�o (b)
  if(homem > 0)                                                        // Quest�o (c) 
    then Begin
           media_idade_homem := soma_idade_homem/homem;
           writeln('A m�dia de idade dos homens � de ', media_idade_homem:0:2,' anos.');
         End
    else writeln('Nenhum homem no grupo. N�o � poss�vel calcular a m�dia.');
  if(mulher > 0)
    then Begin                                                         // Quest�o (d)
           media_peso_mulher := soma_peso_mulher/mulher;
           writeln('A m�dia de peso das mulheres � de ', media_peso_mulher:0:2,' kg.');
         End
    else writeln('Nenhuma mulher no grupo. N�o � poss�vel calcular a m�dia.');  
  repeat until keypressed;
end.