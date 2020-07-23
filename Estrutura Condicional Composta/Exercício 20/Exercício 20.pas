//Exercicio 20: Faça um algoritmo que verifique a validade de uma senha fornecida pelo usuário para ter acesso a
//um terminal de consulta. A senha é um conjunto de caracteres que são: "fatecbt". O algoritmo deve imprimir
//mensagem de permissão ou negação de acesso.

{		      Solução em Portugol
Algoritmo Exercicio 20;
Var
  senha: caracter;
Inicio
  exiba("Tela de acesso.");
  exiba("Digite a senha:");
  leia(senha);
  se(senha = "fatecbt")
    então exiba("Acesso permitido.")
    senão exiba("Acesso negado.");
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio20;
uses crt;
var
  senha: string;
begin
  clrscr;
  writeln('Tela de acesso');
  writeln('Digite a senha:');
  readln(senha);
  if(senha ='fatecbt')
    then writeln('Acesso permitido.')
    else writeln('Acesso negado.');
  repeat until keypressed;
end.