{
Exercicio 59: Um cinema possui capacidade de 100 lugares e está sempre com ocupação total. Certo dia, cada espectador
respondeu a um questionário, no qual constava: sua idade e sua opinião em relação ao filme, segundo as seguintes notas:

                  Nota        Significado
                   A             Ótimo
                   B              Bom
                   C            Regular
                   D             Ruim
                   E            Péssimo

Escreva um algoritmo que, lendo estes dados, calcule e exiba:

a) a quantidade de respostas: "ótimo";
b) a diferença percentual entre respostas "bom" e "regular";
c) a média de idade das pessoas que responderam: "ruim";
d) a porcentagem de respostas: "péssimo" e a maior idade que utilizou esta opção;
e) a diferença de idade entre a maior idade que respondeu: "ótimo" e a maior idade que respondeu: "ruim".

}
{         Solução em Portugol
Algoritmo Exercicio 59;
Const
  publico_cinema = 100;
Var
  otimo,bom,regular,ruim,pessimo,maior_idade_pessimo,maior_idade_otimo,maior_idade_ruim,contador,idade: inteiro;
  nota: caracter;
  soma_idade_ruim: real;
Inicio
  exiba("Programa de avaliação do cinema.");
  otimo <- 0;
  bom <- 0;                                   // Zerando os acumuladores.
  regular <- 0;
  ruim <- 0;
  pessimo <- 0;
  soma_idade_ruim <- 0;
  maior_idade_pessimo <- 0;
  maior_idade_otimo <- 0;
  maior_idade_ruim <- 0;
  para contador <- 1 até publico_cinema faça 
    exiba("Digite uma nota para o filme: ");
    leia(nota);
    enquanto((nota <> 'A') e (nota <> 'B') e (nota <> 'C') e (nota <> 'D') e (nota <> 'E'))faça
      exiba('Digite uma nota entre A-E');
      leia(nota);
    fimenquanto;
    exiba("Digite a sua idade: ");
    leia(idade);
    enquanto(idade <= 3)faça
      exiba('Digite uma idade válida: ');
      leia(idade);
    fimenquanto;
    caso(nota)de
      "A": Inicio
             otimo <- otimo + 1;
             se(idade > maior_idade_otimo)
               então maior_idade_otimo <- idade;	
             fimse; 
           Fim; 
      "B": bom <- bom + 1;
      "C": regular <- regular + 1;
      "D": Inicio
             ruim <- ruim + 1;
             soma_idade_ruim <- soma_idade_ruim + idade;
             se(idade > maior_idade_ruim)
               então maior_idade_ruim <- idade;
             fimse;
           Fim;
      "E": Inicio
             pessimo <- pessimo + 1;
             se(idade > maior_idade_pessimo)
               então maior_idade_pessimo <- idade;
             fimse;
           Fim;
    fimcaso;
  fimpara;
  exiba("A quantidade de respostas Ótimo foi: ",otimo);                           // Questão (a)
  se(bom > regular)
    então exiba("A diferença de respostas Bom e Regular foi: ", bom - regular)    // Questão (b)
    senão exiba("A diferença de respostas Bom e Regular foi: ", regular - bom);
  fimse;
  se(ruim <> 0)
    então exiba("A média da idade de quem respondeu Ruim é: ",soma_idade_ruim)          // Questão (c)
    senão exiba("Ninguém respondeu ruim.");
  fimse;
  exiba("A porcentagem de respostas péssimo foi: ", pessimo, " e a pessoa mais velha que deu essa resposta foi: ",maior_idade_pessimo);  // Questão (d)
  se(maior_idade_ruim > maior_idade_otimo)  
    então exiba("A diferença de idade entre as pessoas mais velhas que responderam Ótimo e Ruim foi: ", maior_idade_ruim - maior_idade_otimo); // Questão (e)      
    senão exiba("A diferença de idade entre as pessoas mais velhas que responderam Ótimo e Ruim foi: ", maior_idade_otimo - maior_idade_ruim);
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio59;
uses crt;
Const
  publico_cinema = 100;
var
  otimo,bom,regular,ruim,pessimo,maior_idade_pessimo,maior_idade_otimo,maior_idade_ruim,contador,idade: integer;
  nota: char;
  soma_idade_ruim: real;
begin
  clrscr;
  writeln('Programa de avaliação do cinema.');
  otimo := 0;
  bom := 0;                                   // Zerando os acumuladores.
  regular := 0;
  ruim := 0;
  pessimo := 0;
  soma_idade_ruim := 0;
  maior_idade_pessimo := 0;
  maior_idade_otimo := 0;
  maior_idade_ruim := 0;
  for contador := 1 to publico_cinema do
  Begin
    writeln('Digite uma nota para o filme: ');
    readln(nota);
    while((nota <> 'A') and (nota <> 'B') and (nota <> 'C') and (nota <> 'D') and (nota <> 'E'))do
    Begin
      writeln('Digite uma nota entre A-E');
      readln(nota);
    End; 
    writeln('Digite a sua idade: ');
    readln(idade);
    while(idade <= 3)do
    Begin
      writeln('Digite uma idade válida: ');
      readln(idade);
    End;
    case(nota)of
      'A': Begin
             otimo := otimo + 1;
             if(idade > maior_idade_otimo)
               then maior_idade_otimo := idade;
           End;
      'B': bom := bom + 1;
      'C': regular := regular + 1;
      'D': Begin
             ruim := ruim + 1;
             soma_idade_ruim := soma_idade_ruim + idade;
             if(idade > maior_idade_ruim)
               then maior_idade_ruim := idade;
           End;
      'E': Begin
             pessimo := pessimo + 1;
             if(idade > maior_idade_pessimo)
               then maior_idade_pessimo := idade;
           End;
    End;
  End;
  writeln('A quantidade de respostas Ótimo foi: ',otimo);                           // Questão (a)
  if(bom > regular)
    then writeln('A diferença de respostas Bom e Regular foi: ', bom - regular)    // Questão (b)
    else writeln('A diferença de respostas Bom e Regular foi: ', regular - bom);
  if(ruim <> 0)
    then writeln('A média da idade de quem respondeu Ruim é: ',(soma_idade_ruim/ruim):0:2)           // Questão (c)
    else writeln('Ninguém respondeu ruim.');
  writeln('A porcentagem de respostas péssimo foi: ', pessimo, ' e a pessoa mais velha que deu essa resposta foi: ',maior_idade_pessimo);  // Questão (d)
  if(maior_idade_ruim > maior_idade_otimo)
    then writeln('A diferença de idade entre as pessoas mais velhas que responderam Ótimo e Ruim foi: ', maior_idade_ruim - maior_idade_otimo) // Questão (e)
    else writeln('A diferença de idade entre as pessoas mais velhas que responderam Ótimo e Ruim foi: ', maior_idade_otimo - maior_idade_ruim);
  repeat until keypressed;
end.