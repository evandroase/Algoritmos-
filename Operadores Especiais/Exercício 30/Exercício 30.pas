//Exercicio 30: Desenvolva um algoritmo que recebe do usuário o placar de um jogo de futebol (gols de cada time) e 
//informe se o resultado foi um empate, a vitória do primeiro ou do segundo time.
{		      Solução em Portugol
Algoritmo Exercicio ;
Var
  time1,time2: inteiro;
Inicio
  exiba("Programa que determina qual time venceu um jogo de futebol.");
  exiba("Digite quantos gols o time 1 fez: ");
  leia(time1);
  exiba("Digite quantos gols o time 2 fez: ");
  leia(time2);
  se(time1 > time2)
    então exiba("O time 1 venceu.");
  fimse;
  se(time1 < time2)
    então exiba("O time 2 venceu.");
  fimse;
  se(time1 = time2)
    então exiba("Os times empataram.");
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio30;
uses crt;
var
  time1,time2: integer;
begin
  clrscr;
  writeln('Programa que determina qual time venceu um jogo de futebol.');
  writeln('Digite quantos gols o time 1 fez: ');
  readln(time1);
  writeln('Digite quantos gols o time 2 fez: ');
  readln(time2);
  if(time1 > time2)
    then writeln('O time 1 venceu.');
  if(time1 < time2)
    then writeln('O time 2 venceu.');
  if(time1 = time2)
    then writeln('Os times empataram.');
  repeat until keypressed;
end.