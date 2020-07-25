//Exercicio 52: Faça um algoritmo para calcular a série Fibonacci até 0 N-ésimo termo.
//A série tem a seguinte forma: 1,1,2,3,5,8,13,21,34,…

{		      Solução em Portugol         // A série de Fibonacci tem os 2 primeiros termos iguais a 1 e, a partir do 
Algoritmo Exercicio 52;               // terceiro termo, o número é formado pela soma dos dois anteriores.
                                      // Exemplo: terceiro termo = segundo termo + primeiro termo = 1 + 1 = 2
Var
  termo, contador,penultimo,ultimo,atual: inteiro;
Inicio
  exiba("Programa que determina o valor do N-ésimo termo da série de Fibonacci.");
  exiba("Digite qual termo você quer conhecer: ");
  leia(termo);
  para contador <- 1 até termo faça
    se(contador = 1 ou contador = 2)
		  então inicio
              ultimo <- 1;
              penultimo <- 1;
              atual <- 1;
            fim
      senão inicio
              atual <- ultimo + penultimo;                //Calcula o valor atual e depois atualiza o valor do último e 
              penultimo <- ultimo;                        //penúltimo para a próxima iteração do loop.
              ultimo <- atual;
            fim;
    fimse;
  fimpara;
  exiba("O valor do termo é: ", atual);
Fim.
}

// Solução em Pascal

Program Exercicio52;
uses crt;
var
  termo, contador,penultimo,ultimo,atual: integer;
begin
  clrscr;
  writeln('Programa que determina o valor do N-ésimo termo da série de Fibonacci.');
  writeln('Digite qual termo você quer conhecer: ');
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
  writeln('O valor do termo é: ', atual);
  repeat until keypressed;
end.