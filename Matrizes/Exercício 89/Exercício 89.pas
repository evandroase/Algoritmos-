{

Exercicio 89: Fazer um algoritmo que a partir da produção mensal de motores M1 e M2 e seus respectivos custos
 e lucros, calcule o custo e o lucro de cada um dos meses e o custo e lucro anuais.
 
   jan fev mar abr mai jun jul ago set out nov dez
M1 30   5   7  12   3   9  23  14   7   4   8  13
M2 20  10  15   5   6   18 24  13   26  11  7  18

       Custo (R$)    Lucro (R$)
M1       1000          300
M2       1500          200

}
{         Solução em Portugol
Algoritmo Exercicio 89;
Const
  custo_M1 = 1000;
  custo_M2 = 1500;
  lucro_M1 = 300;
  lucro_M2 = 200;
Tipo
  matriz = vetor[1..2,1..12] de inteiro; 
Var
  M,C,L: matriz;
  i,j,lucro_anualM1,custo_anualM1,lucro_anualM2,custo_anualM2: inteiro;
Inicio
  lucro_anualM2 <- 0; 
  custo_anualM2 <- 0;
  lucro_anualM1 <- 0;
  custo_anualM1 <- 0;
  para i <- 1 até 2 faça
    para j <- 1 até 12 faça
      exiba("M",i,"[",i,",",j,"]");
      leia(M[i,j]);
      se(i = 1)
        então Inicio
                 C[i,j] <- custo_M1 * M[i,j];
                 custo_anualM1 <- C[i,j] + custo_anualM1;
                 L[i,j] <- lucro_M1 * M[i,j];
                 lucro_anualM1 <- C[i,j] + lucro_anualM1;
              Fim
        senão Inicio
                 C[i,j] <- custo_M2 * M[i,j];
                 custo_anualM2 <- C[i,j] + custo_anualM2;
                 L[i,j] <- lucro_M2 * M[i,j];
                 lucro_anualM2 <- C[i,j] + lucro_anualM2;
              Fim;
      fimse;
    fimpara;
  fimpara;
  exiba("O custo anual de M1 foi:" custo_anualM1);                // 135000
  exiba("O lucro anual de M1 foi:" lucro_anualM1);                // 40500
  exiba("O custo anual de M2 foi:" custo_anualM2);                // 259500
  exiba("O lucro anual de M2 foi:" lucro_anualM2);                // 34600
Fim.
}

// Solução em Pascal

Program Exercicio89;
uses crt;
Const
  custo_M1 = 1000;
  custo_M2 = 1500;
  lucro_M1 = 300;
  lucro_M2 = 200;
Type
  matriz = array[1..2,1..12] of integer;
Var
  M,C,L: matriz;
  i,j,lucro_anualM1,custo_anualM1,lucro_anualM2,custo_anualM2: integer;
Begin
  lucro_anualM2 := 0;
  custo_anualM2 := 0;
  lucro_anualM1 := 0;
  custo_anualM1 := 0;
  for i := 1 to 2 do
    for j := 1 to 12 do
    Begin
      writeln('M',i,'[',i,',',j,']');
      readln(M[i,j]);
      if(i = 1)
        then Begin
               C[i,j] := custo_M1 * M[i,j];
               custo_anualM1 := C[i,j] + custo_anualM1;
               L[i,j] := lucro_M1 * M[i,j];
               lucro_anualM1 := L[i,j] + lucro_anualM1;
             End;
      if(i = 2)
        then Begin
               C[i,j] := custo_M2 * M[i,j];
               custo_anualM2 := C[i,j] + custo_anualM2;
               L[i,j] := lucro_M2 * M[i,j];
               lucro_anualM2 := L[i,j] + lucro_anualM2;
             End;
    End;
  writeln('O custo anual de M1 foi:', custo_anualM1);
  writeln('O lucro anual de M1 foi:', lucro_anualM1);
  writeln('O custo anual de M2 foi:', custo_anualM2);
  writeln('O lucro anual de M2 foi:', lucro_anualM2);
  repeat until keypressed;
end.