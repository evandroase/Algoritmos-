{
Exercicio 58:Construa um algoritmo que calcule e mostre o Imposto de Renda de um grupo de 10 contribuintes,
considerando que os dados de cada contribuinte, n�mero do CPF, n�mero de dependentes e renda mensal s�o valores
fornecidos pelo usu�rio. Para cada contribuinte ser� feito um desconto de 5% do sal�rio m�nimo por dependente.
Os valores da al�quota para c�lculo do IR s�o:

Renda L�quida                       Al�quota
At� 2,0 sal�rios m�nimos             Isento
2,01 a 4,0 sal�rios m�nimos            5%
4,01 a 7,0 sal�rios m�nimos           10%
7,01 a 10,0 sal�rios m�nimos          15%
Acima de 10 sal�rios m�nimos          20%

}


{         Solu��o em Portugol
Algoritmo Exercicio 58;
Const
  salario_minimo = 1045;
Var
  cpf_contribuinte,dependentes,i: inteiro;
  renda_mensal: real;
Inicio
  exiba("Programa que calcula imposto de renda.");
  para i <- 1 at� 10 faca
    exiba("Digite o CPF do contribuinte: ");
    leia(cpf_contribuinte);
    enquanto(cpf_contribuinte < 10000000000 ou cpf_contribuinte > 99999999999)
      exiba("Digite um CPF v�lido: ");
      leia(cpf_contribuinte);
    fimenquanto;
    exiba("Digite a quantidade de dependentes do contribuinte: ");
    leia(dependentes);
    enquanto(contribuintes >= 20)fa�a
      exiba("Voc� n�o tem tantos dependentes. Digite o n�mero correto.");
      leia(contribuintes);
    fimenquanto;
    exiba("Digite a renda do contribuinte: ");
    leia(renda_mensal);
    se((renda_mensal <= 2 * salario_minimo) e (renda_mensal >= 0))
      ent�o exiba("O contribuinte est� isento.")
      sen�o se((renda_mensal > 2 * salario_minimo) e (renda_mensal <= 4 * salario_minimo))
              ent�o exiba("O seu imposto de renda �: ", 0,05 * renda_mensal - 0,05 * dependentes * salario_minimo)
              sen�o se((renda_mensal > 4 * salario_minimo) e (renda_mensal <= 7 * salario_minimo))
                      ent�o exiba("O seu imposto de renda �: ", 0,1 * renda_mensal - 0,05 * dependentes * salario_minimo)
                      sen�o se((renda_mensal > 7 * salario_minimo) e (renda_mensal <= 10 * salario_minimo))
                              ent�o exiba("O seu imposto de renda �: ", 0,15 * renda_mensal - 0,05 * dependentes * salario_minimo)
                              sen�o exiba("O seu imposto de renda �: ", 0,2 * renda_mensal - 0,05 * dependentes * salario_minimo);
                            fimse;
										fimse;
            fimse;
    fimse;
  fimpara;
  exiba("Fim do Programa.");
Fim.
}

// Solu��o em Pascal

Program Exercicio58;
uses crt;
const
  salario_minimo = 1045;
var
  cpf_contribuinte,dependentes,i: integer;
  renda_mensal: real;
begin
  clrscr;
  writeln('Programa que calcula imposto de renda.');
  for i := 1 to 10 do
  Begin
    writeln('Digite o CPF do contribuinte: ');
    readln(cpf_contribuinte);
    while((cpf_contribuinte < 100000000) or (cpf_contribuinte > 999999999))do
    Begin
      writeln('Digite um CPF v�lido: ');
      readln(cpf_contribuinte);
    End;
    writeln('Digite a quantidade de dependentes do contribuinte: ');
    readln(dependentes);
    while(dependentes >= 20)do
    Begin
      writeln('Voc� n�o tem tantos dependentes. Digite o n�mero correto.');
      readln(dependentes);
    End;
    writeln('Digite a renda do contribuinte: ');
    readln(renda_mensal);
    if((renda_mensal <= 2 * salario_minimo) and (renda_mensal >= 0))
      then writeln('O contribuinte est� isento.')
      else if((renda_mensal > 2 * salario_minimo) and (renda_mensal <= 4 * salario_minimo))
              then writeln('O seu imposto de renda �: ', (0.05 * renda_mensal - 0.05 * dependentes * salario_minimo):0:2)
              else if((renda_mensal > 4 * salario_minimo) and (renda_mensal <= 7 * salario_minimo))
                      then writeln('O seu imposto de renda �: ', (0.1 * renda_mensal - 0.05 * dependentes * salario_minimo):0:2)
                      else if((renda_mensal > 7 * salario_minimo) and (renda_mensal <= 10 * salario_minimo))
                              then writeln('O seu imposto de renda �: ', (0.15 * renda_mensal - 0.05 * dependentes * salario_minimo):0:2)
                              else writeln('O seu imposto de renda �: ', (0.2 * renda_mensal - 0.05 * dependentes * salario_minimo):0:2);
	End;
  writeln('Fim do Programa.');
  repeat until keypressed;
end.