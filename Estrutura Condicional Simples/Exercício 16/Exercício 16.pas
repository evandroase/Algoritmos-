//Exercicio 16: Fa�a um algoritmo que verifique a validade de uma senha fornecida pelo usu�rio para ter acesso a um
//terminal de consulta.A senha � um conjunto de caracteres que s�o: "fatecbt". O algoritmo deve imprimir mensagem de
//permiss�o ou nega��o de acesso.

{		      Solu��o em Portugol
Algoritmo Exercicio 16 ;
Var
    senha: caracter;
Inicio
    exiba("Digite a senha: ");
    leia(senha);
    se(senha = "fatecbt");
        ent�o exiba("Senha correta. Acesso liberado.");
    fimse;
    se(senha <> "fatecbt");
        ent�o exiba("Senha incorreta. Acesso negado.");
    fimse;
Fim.
}

// Solu��o em Pascal

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