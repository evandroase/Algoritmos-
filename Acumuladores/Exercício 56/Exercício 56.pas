//Exercicio 56: Uma rainha requisitou os serviços de um monge e disse-lhe que pagaria qualquer preço. O monge,
//necessitando de alimentos, perguntou à rainha se o pagamento poderia ser feito com grãos de trigo dispostos em um
//tabuleiro de xadrez, de tal modo que o primeiro quadro contivesse apenas um grão e os quadros subseqüentes, o dobro
//do quadro anterior. A rainha considerou o pagamento barato e pediu que o serviço fosse executado, sem se dar conta de
//que seria impossível efetuar o pagamento. Faça um algoritmo para calcular o número de grãos que o monge deveria receber.

//OBS: Essa história remete a uma das lendas da criação do xadrez. Na lenda, o monge (que era o filósofo bramane Sissa)
//cobra os grãos de trigo como recompensa pela criação do jogo.

{         Solução em Portugol
Algoritmo Exercicio 56;
Var
  soma: real;
  contador: inteiro;  
Inicio
  exiba("Programa que calcula o número de grãos de trigo que a rainha deve pagar.");
  soma <- 0;
  para contador <- 0 até 63 faça
    soma <- soma + 2 ^ contador;
  fimpara;
  exiba("O número de grãos de trigo é : ", soma);
Fim.
}
																														    // Pedaço do tabuleiro
// Solução em Pascal                                 //////////////////////////////////////////////////
																										 // 2^0  //  2^1   //  2^2   //  2^3   //  2^4   // 
Program Exercicio56;                                 //1 grão//2 grãos //4 grãos //8 grãos //16 grãos//  ... e assim por diante.
uses crt;                                            //////////////////////////////////////////////////
var
  soma: real;
  contador: integer;
begin
  clrscr;
  writeln('Programa que calcula o número de grãos de trigo que a rainha deve pagar.');
  soma := 0;
  for contador := 1 to 63 do
  Begin
    soma := soma + exp(contador * ln(2));
  End;
  writeln('O número de grãos de trigo é : ', soma:1:0);
  repeat until keypressed;
end.