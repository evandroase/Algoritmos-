//Exercicio 20: Fa�a um algoritmo que verifique a validade de uma senha fornecida pelo usu�rio para ter acesso a
//um terminal de consulta. A senha � um conjunto de caracteres que s�o: "fatecbt". O algoritmo deve imprimir
//mensagem de permiss�o ou nega��o de acesso.

{		      Solu��o em Portugol
Algoritmo Exercicio 20;
Var
  senha: caracter;
Inicio
  exiba("Tela de acesso.");
  exiba("Digite a senha:");
  leia(senha);
  se(senha = "fatecbt")
    ent�o exiba("Acesso permitido.")
    sen�o exiba("Acesso negado.");
  fimse;
Fim.
}

// Solu��o em Pascal

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