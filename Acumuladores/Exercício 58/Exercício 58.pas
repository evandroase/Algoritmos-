{
Exercicio 58:Construa um algoritmo que calcule e mostre o Imposto de Renda de um grupo de 10 contribuintes,
considerando que os dados de cada contribuinte, número do CPF, número de dependentes e renda mensal são valores
fornecidos pelo usuário. Para cada contribuinte será feito um desconto de 5% do salário mínimo por dependente.
Os valores da alíquota para cálculo do IR são:

Renda Líquida                       Alíquota
Até 2,0 salários mínimos             Isento
2,01 a 4,0 salários mínimos            5%
4,01 a 7,0 salários mínimos           10%
7,01 a 10,0 salários mínimos          15%
Acima de 10 salários mínimos          20%

}


{         Solução em Portugol
Algoritmo Exercicio 58;
Const
  salario_minimo = 1045;
Var
  cpf_contribuinte,dependentes,i: inteiro;
  renda_mensal: real;
Inicio
  exiba("Programa que calcula imposto de renda.");
  para i <- 1 até 10 faca
    exiba("Digite o CPF do contribuinte: ");
    leia(cpf_contribuinte);
    enquanto(cpf_contribuinte < 10000000000 ou cpf_contribuinte > 99999999999)
      exiba("Digite um CPF válido: ");
      leia(cpf_contribuinte);
    fimenquanto;
    exiba("Digite a quantidade de dependentes do contribuinte: ");
    leia(dependentes);
    enquanto(contribuintes >= 20)faça
      exiba("Você não tem tantos dependentes. Digite o número correto.");
      leia(contribuintes);
    fimenquanto;
    exiba("Digite a renda do contribuinte: ");
    leia(renda_mensal);
    se((renda_mensal <= 2 * salario_minimo) e (renda_mensal >= 0))
      então exiba("O contribuinte está isento.")
      senão se((renda_mensal > 2 * salario_minimo) e (renda_mensal <= 4 * salario_minimo))
              então exiba("O seu imposto de renda é: ", 0,05 * renda_mensal - 0,05 * dependentes * salario_minimo)
              senão se((renda_mensal > 4 * salario_minimo) e (renda_mensal <= 7 * salario_minimo))
                      então exiba("O seu imposto de renda é: ", 0,1 * renda_mensal - 0,05 * dependentes * salario_minimo)
                      senão se((renda_mensal > 7 * salario_minimo) e (renda_mensal <= 10 * salario_minimo))
                              então exiba("O seu imposto de renda é: ", 0,15 * renda_mensal - 0,05 * dependentes * salario_minimo)
                              senão exiba("O seu imposto de renda é: ", 0,2 * renda_mensal - 0,05 * dependentes * salario_minimo);
                            fimse;
										fimse;
            fimse;
    fimse;
  fimpara;
  exiba("Fim do Programa.");
Fim.
}

// Solução em Pascal

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
      writeln('Digite um CPF válido: ');
      readln(cpf_contribuinte);
    End;
    writeln('Digite a quantidade de dependentes do contribuinte: ');
    readln(dependentes);
    while(dependentes >= 20)do
    Begin
      writeln('Você não tem tantos dependentes. Digite o número correto.');
      readln(dependentes);
    End;
    writeln('Digite a renda do contribuinte: ');
    readln(renda_mensal);
    if((renda_mensal <= 2 * salario_minimo) and (renda_mensal >= 0))
      then writeln('O contribuinte está isento.')
      else if((renda_mensal > 2 * salario_minimo) and (renda_mensal <= 4 * salario_minimo))
              then writeln('O seu imposto de renda é: ', (0.05 * renda_mensal - 0.05 * dependentes * salario_minimo):0:2)
              else if((renda_mensal > 4 * salario_minimo) and (renda_mensal <= 7 * salario_minimo))
                      then writeln('O seu imposto de renda é: ', (0.1 * renda_mensal - 0.05 * dependentes * salario_minimo):0:2)
                      else if((renda_mensal > 7 * salario_minimo) and (renda_mensal <= 10 * salario_minimo))
                              then writeln('O seu imposto de renda é: ', (0.15 * renda_mensal - 0.05 * dependentes * salario_minimo):0:2)
                              else writeln('O seu imposto de renda é: ', (0.2 * renda_mensal - 0.05 * dependentes * salario_minimo):0:2);
	End;
  writeln('Fim do Programa.');
  repeat until keypressed;
end.