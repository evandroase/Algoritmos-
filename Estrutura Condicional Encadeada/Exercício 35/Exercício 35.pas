{
Exercicio 35:Construa um algoritmo que seja capaz de concluir qual dentre os seguintes animais foi escolhido,
através de perguntas e respostas. Animais possíveis: leão, cavalo, homem, macaco, morcego, baleia, avestruz, pingüim,
pato, águia, tartaruga, crocodilo e cobra.

Exemplo:
É mamífero? Sim.
É quadrúpede? Sim.
É carnívoro? Não.
É herbívoro? Sim.
Resp: Então o animal escolhido foi o cavalo!

OBS: Olhar na apostila o esquema.
}


{		      Solução em Portugol
Algoritmo Exercicio 35;
Var
  mamifero,quadrupedes,bipedes,voadores,aquaticos,carnivoro,onivoro,nadadoras,de_rapina,tropical: caracter;
Inicio
  exiba("Programa identificador de animais.");
  exiba("O animal é mamífero?");
  leia(mamifero);
  se(mamifero = "Sim")                     
    então Inicio                                                     //mamifero
           exiba("O animal é quadrupede?");
           leia(quadrupedes);
           se(quadrupedes = "Sim")                                    //quadrupedes  
             então Inicio
                     exiba("O animal é carnívoro?");
                     leia(carnivoro);
                     se(carnivoro = "Sim")                            //carnivoro
                       então exiba("O animal é o Leão.");
                       senão exiba("O animal é o Cavalo.");
                   Fim
             senão Inicio
                     exiba("O animal é bípede?");                     
                     leia(bipedes);                                   //bipede
                     se(bipedes = "Sim")
                       então Inicio
                               exiba("O animal é onivoro?");          //onivoro
                               leia(onivoro);
                               se(onivoro = "Sim")
                                 então exiba("O animal é o Homem.")
                                 senão exiba("O animal é o Macaco.");
                               fimse;
                             Fim
                       senão Inicio
                               exiba("O animal é voador?");
                               leia(voadores);
                               se(voadores = "Sim")                   //voadores  
                                 então exiba("O animal é o Morcego.")
                                 senão exiba("O animal é a Baleia.");
                               fimse; 
                             Fim; 
                     fimse;
                   Fim;
           fimse;     
          Fim
    senão Inicio                                                     //ave
            exiba("O animal é de rapina?")
            leia(de_rapina);
            se(de_rapina = "Sim")                                    //rapina
              então exiba("O animal é a Águia.)
              senão Inicio
                      exiba("O animal é nadador?");                 
                      leia(nadadoras);
                      se(nadadoras = "Sim")                          //nadador
                        então exiba("O animal é o Pato.")
                        senão Inicio
                                exiba("O animal é tropical?");
                                leia(tropical);
                                se(tropical = "Sim")                 //tropical
                                  então exiba("O animal é o Avestruz.")
                                  senão exiba("O animal é o Pinguim.");
                                fimse;
                              Fim;
                      fimse;
                    Fim;
            fimse;
          Fim;
  fimse;
Fim.
}

// Solução em Pascal

Program Exercicio35;
uses crt;
var
  mamifero,quadrupedes,bipedes,voadores,aquaticos,carnivoro,onivoro,nadadoras,de_rapina,tropical: string;
begin
  clrscr;
  writeln('Programa identificador de animais.');
  writeln('O animal é mamífero?');
  readln(mamifero);
  if(mamifero = 'Sim')                     
    then begin                                                     //mamifero
           writeln('O animal é quadrupede?');
           readln(quadrupedes);
           if(quadrupedes = 'Sim')                                    //quadrupedes  
             then begin
                     writeln('O animal é carnívoro?');
                     readln(carnivoro);
                     if(carnivoro = 'Sim')                            //carnivoro
                       then writeln('O animal é o Leão.')
                       else writeln('O animal é o Cavalo.');
                  end
             else begin
                     writeln('O animal é bípede?');                     
                     readln(bipedes);                                   //bipede
                     if(bipedes = 'Sim')
                       then begin
                               writeln('O animal é onivoro?');          //onivoro
                               readln(onivoro);
                               if(onivoro = 'Sim')
                                 then writeln('O animal é o Homem.')
                                 else writeln('O animal é o Macaco.');
                             end
                       else begin
                               writeln('O animal é voador?');
                               readln(voadores);
                               if(voadores = 'Sim')                   //voadores  
                                 then writeln('O animal é o Morcego.')
                                 else writeln('O animal é a Baleia.');
                             end; 
                   end;     
          end
    else begin                                                     //ave
            writeln('O animal é de rapina?');
            readln(de_rapina);
            if(de_rapina = 'Sim')                                    //rapina
              then writeln('O animal é a Águia.')
              else begin
                      writeln('O animal é nadador?');                 
                      readln(nadadoras);
                      if(nadadoras = 'Sim')                          //nadador
                        then writeln('O animal é o Pato.')
                        else begin
                                writeln('O animal é tropical?');
                                readln(tropical);
                                if(tropical = 'Sim')                 //tropical
                                  then writeln('O animal é o Avestruz.')
                                  else writeln('O animal é o Pinguim.');
                              end;
                    end;
          end;
  repeat until keypressed;
end.