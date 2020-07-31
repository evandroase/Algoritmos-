//Exercicio 95: Faça rotina para calcular A elevado a um expoente B.

{         Solução em Portugol
Algoritmo Exercicio 95;
Var
  A,B: inteiro
  RESULTADO: real;
Procedimento(a: inteiro;b: inteiro,Var resultado: real);         
Var
i: inteiro;
Inicio
  resultado <- 1;
  se(b > 0)
    então para i <- 1 até b faça
            resultado <- resultado * a;
          fimpara
    senão se(b < 0)
            então para i <- 1 até -b faça
                    resultado <- resultado *(1/a);
                  fimpara;
          fimse;
  fimse;
Fim;
Inicio
  exiba("Programa que calcula A elevado a B");
  exiba("Digite um valor para A:");
  leia(A);
  exiba("Digite um valor para B:");
  leia(B);
  Expoente(A,B,RESULTADO);
  exiba("A ^ B = ", RESULTADO); 
Fim.
}

Program Exercicio95;
uses crt;
Var
  A,B: integer;
  RESULTADO: real;
	
Procedure Expoente(a: integer;b:integer;Var resultado: real);
Var
i: integer;
Begin
  resultado := 1;
  if(b > 0)
    then for i := 1 to b do
           resultado := resultado * a
    else if(b < 0)
           then for i := 1 to -b do
                  resultado := resultado *(1/a)
End;

Begin
  writeln('Programa que calcula A elevado a B');
  writeln('Digite um valor para A:');
  readln(A);
  writeln('Digite um valor para B:');
  readln(B);
  Expoente(A,B,RESULTADO);
  writeln('A ^ B = ',RESULTADO:0:2);
  repeat until keypressed;
end.