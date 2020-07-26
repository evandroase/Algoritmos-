//Exercicio 56: Uma rainha requisitou os servi�os de um monge e disse-lhe que pagaria qualquer pre�o. O monge,
//necessitando de alimentos, perguntou � rainha se o pagamento poderia ser feito com gr�os de trigo dispostos em um
//tabuleiro de xadrez, de tal modo que o primeiro quadro contivesse apenas um gr�o e os quadros subseq�entes, o dobro
//do quadro anterior. A rainha considerou o pagamento barato e pediu que o servi�o fosse executado, sem se dar conta de
//que seria imposs�vel efetuar o pagamento. Fa�a um algoritmo para calcular o n�mero de gr�os que o monge deveria receber.

//OBS: Essa hist�ria remete a uma das lendas da cria��o do xadrez. Na lenda, o monge (que era o fil�sofo bramane Sissa)
//cobra os gr�os de trigo como recompensa pela cria��o do jogo.

{         Solu��o em Portugol
Algoritmo Exercicio 56;
Var
  soma: real;
  contador: inteiro;  
Inicio
  exiba("Programa que calcula o n�mero de gr�os de trigo que a rainha deve pagar.");
  soma <- 0;
  para contador <- 0 at� 63 fa�a
    soma <- soma + 2 ^ contador;
  fimpara;
  exiba("O n�mero de gr�os de trigo � : ", soma);
Fim.
}
																														    // Peda�o do tabuleiro
// Solu��o em Pascal                                 //////////////////////////////////////////////////
																										 // 2^0  //  2^1   //  2^2   //  2^3   //  2^4   // 
Program Exercicio56;                                 //1 gr�o//2 gr�os //4 gr�os //8 gr�os //16 gr�os//  ... e assim por diante.
uses crt;                                            //////////////////////////////////////////////////
var
  soma: real;
  contador: integer;
begin
  clrscr;
  writeln('Programa que calcula o n�mero de gr�os de trigo que a rainha deve pagar.');
  soma := 0;
  for contador := 1 to 63 do
  Begin
    soma := soma + exp(contador * ln(2));
  End;
  writeln('O n�mero de gr�os de trigo � : ', soma:1:0);
  repeat until keypressed;
end.