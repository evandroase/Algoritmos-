//Exercicio 31: Escreva um algoritmo que leia três números e exiba-os em ordem crescente.

{		      Solução em Portugol
Algoritmo Exercicio 31;
Var
  N1,N2,N3,maior: real;
Inicio
  exiba("Programa que coloca 3 números em ordem crescente.");
  exiba("Digite o primeiro número: ");
  leia(N1);
  exiba("Digite o segundo número: ");
  leia(N2);                                      //Existem 13 possibilidades, sendo que cada uma é avaliada por um
  exiba("Digite o terceiro número: ");           //condicional diferente.
  leia(N3);                                      //OBS: Eu não gosto dessa identação, só estou seguindo o padrão da matéria.
  se((N1 > N2) e (N2 > N3))                                                                                                                   //N3 < N2 < N1
    então exiba(N3,"-",N2,"-",N1);
    senão se((N2 > N1) e (N1 > N3))                                                                                                           //N3 < N1 < N2
            então exiba(N3,"-",N1,"-",N2);
            senão se((N3 > N1) e (N1 > N2))                                                                                                 //N2 < N1 < N3
                    então exiba(N2,"-",N1,"-",N3);
                    senão se((N1 > N3) e (N3 > N2))                                                                                         //N2 < N3 < N1
                            então exiba(N2,"-",N3,"-",N1);
                            senão se((N3 > N2) e (N2 > N1))                                                                                 //N1 < N2 < N3
                                    então exiba(N1,"-",N2,"-",N3);
                                    senão se((N2 > N3) e (N3> N1))                                                                          //N1 < N3 < N2
                                            então exiba(N1,"-",N3,"-",N2);
                                            senão se((N2 = N3) e (N3 = N1))                                                                 //N1 = N3 = N2
                                                    então exiba(N1,"-",N3,"-",N2);
                                                    senão se((N2 = N3) e (N1 > N2))                                                         //N2 = N3 < N1
                                                            então exiba(N2,"-",N3,"-",N1);
                                                            senão se((N2 = N3) e (N1 < N2))                                                 //N2 = N3 > N1
                                                                    então exiba(N1,"-",N3,"-",N2);
                                                                    senão se((N1 = N3) e (N1 > N2))                                         //N1 = N3 > N2
                                                                          então exiba(N2,"-",N3,"-",N1);
                                                                          senão se((N1 = N3) e (N1 < N2))                                 //N1 = N3 < N2
                                                                                  então exiba(N1,"-",N3,"-",N2);
                                                                                  senão se((N2 = N1) e (N2 < N3))                         //N1 = N2 < N3
                                                                                          então exiba(N2,"-",N1,"-",N3);
                                                                                          senão exiba(N3,"-"N2,"-",N1);                   //N1 = N2 > N3
                                                                                        fimse;
                                                                                fimse;
                                                                          fimse;
                                                                  fimse;
                                                          fimse;
                                                  fimse;
                                          fimse;                                                                              
                                  fimse;
                          fimse;
                  fimse;
          fimse;              																 
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio25;
uses crt;
var
  N1,N2,N3: integer;
begin
  clrscr;
  writeln('Programa que coloca 3 números em ordem crescente.');
  writeln('Digite o primeiro número: ');
  readln(N1);
  writeln('Digite o segundo número: ');           //Existem 13 possibilidades, sendo que cada uma é avaliada por um
  readln(N2);                                     //condicional diferente.
  writeln('Digite o terceiro número: ');
  readln(N3);
  if((N1 > N2) and (N2 > N3))                                                                                                                   //N3 < N2 < N1
    then writeln(N3,'-',N2,'-',N1)
    else if((N2 > N1) and (N1 > N3))                                                                                                           //N3 < N1 < N2
           then writeln(N3,'-',N1,'-',N2)
           else if((N3 > N1) and (N1 > N2))                                                                                                 //N2 < N1 < N3
                  then writeln(N2,'-',N1,'-',N3)
                  else if((N1 > N3) and (N3 > N2))                                                                                         //N2 < N3 < N1
                         then writeln(N2,'-',N3,'-',N1)
                         else if((N3 > N2) and (N2 > N1))                                                                                 //N1 < N2 < N3
                                then writeln(N1,'-',N2,'-',N3)
                                else if((N2 > N3) and (N3> N1))                                                                          //N1 < N3 < N2
                                       then writeln(N1,'-',N3,'-',N2)
                                       else if((N2 = N3) and (N3 = N1))                                                                 //N1 = N3 = N2
                                              then writeln(N1,'-',N3,'-',N2)
                                              else if((N2 = N3) and (N1 > N2))                                                         //N2 = N3 < N1
                                                     then writeln(N2,'-',N3,'-',N1)
                                                     else if((N2 = N3) and (N1 < N2))                                                 //N2 = N3 > N1
                                                            then writeln(N1,'-',N3,'-',N2)
                                                            else if((N1 = N3) and (N1 > N2))                                         //N1 = N3 > N2
                                                                   then writeln(N2,'-',N3,'-',N1)
                                                                   else if((N1 = N3) and (N1 < N2))                                 //N1 = N3 < N2
                                                                          then writeln(N1,'-',N3,'-',N2)
                                                                          else if((N2 = N1) and (N2 < N3))                         //N1 = N2 < N3
                                                                                 then writeln(N2,'-',N1,'-',N3)
                                                                                 else writeln(N3,'-',N2,'-',N1);
  repeat until keypressed;
end.