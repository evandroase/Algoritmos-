//Exercicio 34: Escreva um algoritmo que receba os três coeficientes de uma Equação do //2º Grau e calcule e exiba a(s) raiz(es) da equação, se existir(em). Se não existir, ///informar ao usuário. Caso o coeficiente “a” for igual à zero, informar que não se /////trata de uma equação do segundo grau e encerre o algoritmo.

{		      Solu��o em Portugol
Algoritmo Exercicio 34;
Var
  a,b,c,delta: real;
Inicio
  exiba("Programa que resolve equações do segundo grau.");
  exiba("Digite o valor do coeficiente a: ");
  leia(a);
  exiba("Digite o valor do coeficiente b: ");
  leia(b);
  exiba("Digite o valor do coeficiente c: ");
  leia(c);
  delta <- b*b - 4*a*c;
  se(a = 0)
    então exiba("A equação não é do segundo grau.")
    senão se(delta < 0)
            então exiba("A equação não tem raízes reais.")
            senão se(delta = 0)
                    então exiba("Raízes iguais e que valem: ", -b/(2*a))
                    senão exiba("Raiz 1: ", (-b + (delta)^0.5)/(2*a),"Raiz 2: ", (-b - (delta)^0.5)/(2*a));
                  fimse;     
          fimse;
  fimse;  
Fim.
}

// Solu��o em Pascal

Program Exercicio34;
uses crt;
var
  a,b,c,delta: real;
begin
  writeln("Programa que resolve equações do segundo grau.");
  writeln("Digite o valor do coeficiente a: ");
  leia(a);
  writeln("Digite o valor do coeficiente b: ");
  leia(b);
  writeln("Digite o valor do coeficiente c: ");
  leia(c);
  delta <- b*b - 4*a*c;
  se(a = 0)
    then writeln("A equação não é do segundo grau.")
    else if(delta < 0)
            then writeln("A equação não tem raízes reais.")
            else if(delta = 0)
                    then writeln("Raízes iguais e que valem: ", -b/(2*a))
                    else writeln("Raiz 1: ", (-b + (delta)^0.5)/(2*a),"Raiz 2: ", (-b - (delta)^0.5)/(2*a));
  clrscr;
  writeln('');
  readln();
  repeat until keypressed;
end.