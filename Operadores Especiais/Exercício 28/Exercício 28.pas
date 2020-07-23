//Exercicio 28: Escreva um algoritmo que peça ao operador o nome de usuário e uma senha. Para ter acesso o nome de usuário
//deve ser "user" ou "USER" e a senha deve ser "adoroalgoritmos" ou "ADOROALGORITMOS". Após a digitação dos dados,
//exibir na tela: "Acesso Permitido!" ou "Acesso Negado!".
{		      Solução em Portugol
Algoritmo Exercicio ;                           //A = (usuario = "user") ou (usuario = "USER")
Var                                             //B = (senha = "adoroalgoritmos") ou (senha = "ADOROALGORITMOS")
  usuario, senha: caracter;                     /////////////////////////////////////
Inicio                                          //      A       B       A e B      //
  exiba("Tela de acesso.");                     //      V       F         F        //
  exiba("Digite o nome de usuário: ");          //      F       V         F        //
  leia(usuario);                                //      V       V         V        //
  exiba("Digite a senha: ");                    //      F       F         F        //
  leia(senha);                                  /////////////////////////////////////
  se(((usuario = "user") ou (usuario = "USER")) e ((senha = "adoroalgoritmos") ou (senha = "ADOROALGORITMOS")))
    então exiba("Acesso Permitido!")
    senão exiba("Acesso Negado!");
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio;
uses crt;
var
  usuario, senha: string;
begin
  clrscr;
  writeln('Tela de acesso.');
  writeln('Digite o nome de usuário: ');
  readln(usuario);
  writeln('Digite a senha: ');
  readln(senha);
  if(((usuario = 'user') or (usuario = 'USER')) and ((senha = 'adoroalgoritmos') or (senha = 'ADOROALGORITMOS')))
    then writeln('Acesso Permitido!')
    else writeln('Acesso Negado!');
  repeat until keypressed;
end.