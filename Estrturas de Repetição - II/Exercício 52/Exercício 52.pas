//Exercicio 52: Fa�a um algoritmo para calcular a s�rie Fibonacci at� 0 N-�simo termo.
//A s�rie tem a seguinte forma: 1,1,2,3,5,8,13,21,34,�

{		      Solu��o em Portugol         // A s�rie de Fibonacci tem os 2 primeiros termos iguais a 1 e, a partir do 
Algoritmo Exercicio 52;               // terceiro termo, o n�mero � formado pela soma dos dois anteriores.
                                      // Exemplo: terceiro termo = segundo termo + primeiro termo = 1 + 1 = 2
Var
  termo, contador,penultimo,ultimo,atual: inteiro;
Inicio
  exiba("Programa que determina o valor do N-�simo termo da s�rie de Fibonacci.");
  exiba("Digite qual termo voc� quer conhecer: ");
  leia(termo);
  para contador <- 1 at� termo fa�a
    se(contador = 1 ou contador = 2)
		  ent�o inicio
              ultimo <- 1;
              penultimo <- 1;
              atual <- 1;
            fim
      sen�o inicio
              atual <- ultimo + penultimo;                //Calcula o valor atual e depois atualiza o valor do �ltimo e 
              penultimo <- ultimo;                        //pen�ltimo para a pr�xima itera��o do loop.
              ultimo <- atual;
            fim;
    fimse;
  fimpara;
  exiba("O valor do termo �: ", atual);
Fim.
}

// Solu��o em Pascal

Program Exercicio52;
uses crt;
var
  termo, contador,penultimo,ultimo,atual: integer;
begin
  clrscr;
  writeln('Programa que determina o valor do N-�simo termo da s�rie de Fibonacci.');
  writeln('Digite qual termo voc� quer conhecer: ');
  readln(termo);
  for contador := 1 to termo do
  Begin
		if((contador = 1) or (contador = 2))
		  then Begin
              ultimo := 1;
              penultimo := 1;
              atual := 1;
           End
      else Begin
              atual := ultimo + penultimo;
              penultimo := ultimo;
              ultimo := atual;
           End;
  End;
  writeln('O valor do termo �: ', atual);
  repeat until keypressed;
end.