{
Exercicio 59: Um cinema possui capacidade de 100 lugares e est� sempre com ocupa��o total. Certo dia, cada espectador
respondeu a um question�rio, no qual constava: sua idade e sua opini�o em rela��o ao filme, segundo as seguintes notas:

                  Nota        Significado
                   A             �timo
                   B              Bom
                   C            Regular
                   D             Ruim
                   E            P�ssimo

Escreva um algoritmo que, lendo estes dados, calcule e exiba:

a) a quantidade de respostas: "�timo";
b) a diferen�a percentual entre respostas "bom" e "regular";
c) a m�dia de idade das pessoas que responderam: "ruim";
d) a porcentagem de respostas: "p�ssimo" e a maior idade que utilizou esta op��o;
e) a diferen�a de idade entre a maior idade que respondeu: "�timo" e a maior idade que respondeu: "ruim".

}
{         Solu��o em Portugol
Algoritmo Exercicio 59;
Const
  publico_cinema = 100;
Var
  otimo,bom,regular,ruim,pessimo,maior_idade_pessimo,maior_idade_otimo,maior_idade_ruim,contador,idade: inteiro;
  nota: caracter;
  soma_idade_ruim: real;
Inicio
  exiba("Programa de avalia��o do cinema.");
  otimo <- 0;
  bom <- 0;                                   // Zerando os acumuladores.
  regular <- 0;
  ruim <- 0;
  pessimo <- 0;
  soma_idade_ruim <- 0;
  maior_idade_pessimo <- 0;
  maior_idade_otimo <- 0;
  maior_idade_ruim <- 0;
  para contador <- 1 at� publico_cinema fa�a 
    exiba("Digite uma nota para o filme: ");
    leia(nota);
    enquanto((nota <> 'A') e (nota <> 'B') e (nota <> 'C') e (nota <> 'D') e (nota <> 'E'))fa�a
      exiba('Digite uma nota entre A-E');
      leia(nota);
    fimenquanto;
    exiba("Digite a sua idade: ");
    leia(idade);
    enquanto(idade <= 3)fa�a
      exiba('Digite uma idade v�lida: ');
      leia(idade);
    fimenquanto;
    caso(nota)de
      "A": Inicio
             otimo <- otimo + 1;
             se(idade > maior_idade_otimo)
               ent�o maior_idade_otimo <- idade;	
             fimse; 
           Fim; 
      "B": bom <- bom + 1;
      "C": regular <- regular + 1;
      "D": Inicio
             ruim <- ruim + 1;
             soma_idade_ruim <- soma_idade_ruim + idade;
             se(idade > maior_idade_ruim)
               ent�o maior_idade_ruim <- idade;
             fimse;
           Fim;
      "E": Inicio
             pessimo <- pessimo + 1;
             se(idade > maior_idade_pessimo)
               ent�o maior_idade_pessimo <- idade;
             fimse;
           Fim;
    fimcaso;
  fimpara;
  exiba("A quantidade de respostas �timo foi: ",otimo);                           // Quest�o (a)
  se(bom > regular)
    ent�o exiba("A diferen�a de respostas Bom e Regular foi: ", bom - regular)    // Quest�o (b)
    sen�o exiba("A diferen�a de respostas Bom e Regular foi: ", regular - bom);
  fimse;
  se(ruim <> 0)
    ent�o exiba("A m�dia da idade de quem respondeu Ruim �: ",soma_idade_ruim)          // Quest�o (c)
    sen�o exiba("Ningu�m respondeu ruim.");
  fimse;
  exiba("A porcentagem de respostas p�ssimo foi: ", pessimo, " e a pessoa mais velha que deu essa resposta foi: ",maior_idade_pessimo);  // Quest�o (d)
  se(maior_idade_ruim > maior_idade_otimo)  
    ent�o exiba("A diferen�a de idade entre as pessoas mais velhas que responderam �timo e Ruim foi: ", maior_idade_ruim - maior_idade_otimo); // Quest�o (e)      
    sen�o exiba("A diferen�a de idade entre as pessoas mais velhas que responderam �timo e Ruim foi: ", maior_idade_otimo - maior_idade_ruim);
  fimse;
Fim.
}

// Solu��o em Pascal

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
  writeln('Programa de avalia��o do cinema.');
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
      writeln('Digite uma idade v�lida: ');
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
  writeln('A quantidade de respostas �timo foi: ',otimo);                           // Quest�o (a)
  if(bom > regular)
    then writeln('A diferen�a de respostas Bom e Regular foi: ', bom - regular)    // Quest�o (b)
    else writeln('A diferen�a de respostas Bom e Regular foi: ', regular - bom);
  if(ruim <> 0)
    then writeln('A m�dia da idade de quem respondeu Ruim �: ',(soma_idade_ruim/ruim):0:2)           // Quest�o (c)
    else writeln('Ningu�m respondeu ruim.');
  writeln('A porcentagem de respostas p�ssimo foi: ', pessimo, ' e a pessoa mais velha que deu essa resposta foi: ',maior_idade_pessimo);  // Quest�o (d)
  if(maior_idade_ruim > maior_idade_otimo)
    then writeln('A diferen�a de idade entre as pessoas mais velhas que responderam �timo e Ruim foi: ', maior_idade_ruim - maior_idade_otimo) // Quest�o (e)
    else writeln('A diferen�a de idade entre as pessoas mais velhas que responderam �timo e Ruim foi: ', maior_idade_otimo - maior_idade_ruim);
  repeat until keypressed;
end.