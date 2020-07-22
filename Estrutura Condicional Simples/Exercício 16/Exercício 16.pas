//Exercicio 16: Faça um algoritmo que verifique a validade de uma senha fornecida pelo usuário para ter acesso a um
//terminal de consulta.A senha é um conjunto de caracteres que são: "fatecbt". O algoritmo deve imprimir mensagem de
//permissão ou negação de acesso.

{		      Solução em Portugol
Algoritmo Exercicio 16 ;
Var
    senha: caracter;
Inicio
    exiba("Digite a senha: ");
    leia(senha);
    se(senha = "fatecbt");
        então exiba("Senha correta. Acesso liberado.");
    fimse;
    se(senha <> "fatecbt");
        então exiba("Senha incorreta. Acesso negado.");
    fimse;
Fim.
}

// Solução em Pascal

Program Exercicio;
uses crt;
var
    senha: string;
begin
    clrscr;
    writeln('Digite a senha: ');
    readln(senha);
    if(senha = 'fatecbt')
        then writeln('Senha correta. Acesso liberado.');
    if(senha <> 'fatecbt')
        then writeln('Senha incorreta. Acesso negado.');
    repeat until keypressed;
end.