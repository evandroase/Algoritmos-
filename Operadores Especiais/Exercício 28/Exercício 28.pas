//Exercicio 28: Escreva um algoritmo que pe�a ao operador o nome de usu�rio e uma senha. Para ter acesso o nome de usu�rio
//deve ser "user" ou "USER" e a senha deve ser "adoroalgoritmos" ou "ADOROALGORITMOS". Ap�s a digita��o dos dados,
//exibir na tela: "Acesso Permitido!" ou "Acesso Negado!".
{		      Solu��o em Portugol
Algoritmo Exercicio ;                           //A = (usuario = "user") ou (usuario = "USER")
Var                                             //B = (senha = "adoroalgoritmos") ou (senha = "ADOROALGORITMOS")
  usuario, senha: caracter;                     /////////////////////////////////////
Inicio                                          //      A       B       A e B      //
  exiba("Tela de acesso.");                     //      V       F         F        //
  exiba("Digite o nome de usu�rio: ");          //      F       V         F        //
  leia(usuario);                                //      V       V         V        //
  exiba("Digite a senha: ");                    //      F       F         F        //
  leia(senha);                                  /////////////////////////////////////
  se(((usuario = "user") ou (usuario = "USER")) e ((senha = "adoroalgoritmos") ou (senha = "ADOROALGORITMOS")))
    ent�o exiba("Acesso Permitido!")
    sen�o exiba("Acesso Negado!");
  fimse;
Fim.
}

// Solu��o em Pascal

Program Exercicio;
uses crt;
var
  usuario, senha: string;
begin
  clrscr;
  writeln('Tela de acesso.');
  writeln('Digite o nome de usu�rio: ');
  readln(usuario);
  writeln('Digite a senha: ');
  readln(senha);
  if(((usuario = 'user') or (usuario = 'USER')) and ((senha = 'adoroalgoritmos') or (senha = 'ADOROALGORITMOS')))
    then writeln('Acesso Permitido!')
    else writeln('Acesso Negado!');
  repeat until keypressed;
end.