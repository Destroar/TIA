menu:-
    write(' ----------------------------------------------------------------------------------------------------------'),nl,
    write('|                               Seja Bem-Vindo Ao Teste De Sintomas                                        |'),nl,
    write('|                                                                                                          |'),nl,
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|Descubra possíveis doenças e tratamentos através deste teste.                                             |'),nl,menu2.

menu2:-
    write('|                                                                                                          |'),nl,
    write('|1-Iniciar o teste                                                                                         |'),nl,
    write('|2-Sair                                                                                                    |'),nl,
    read(X),
    opcoes(X).

opcoes(1):- questoesIniciais.
opcoes(2):-
    write('|Obrigada.                                                                                                 |'),halt.
opcoes(_):-
    write('|Introduza uma opção válida.                                                                               |'),nl,menu2.


questoesIniciais:-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                                                                                          |'),nl,
    write('|Qual o seu nome? (Por favor coloque entre aspas, ex:"Inês")                                               |'),nl,
    read(N),
    write('|                                                                                                          |'),nl,
    write('|Identifique  grupo de idade a que pertence                                                                |'),nl,
    write('|                                                                                                          |'),nl,
    write('|   1- [-3 meses]                          5- [10-13 anos]                                                 |'),nl,
    write('|   2- [3-12 meses]                        6- [14-17 anos]                                                 |'),nl,
    write('|   3- [1-4 anos]                          7- [+18 anos]                                                   |'),nl,
    write('|   4- [5-9 anos]                                                                                          |'),nl,
    read(I),
        ((I == 1), assert(fact(menos3meses)), confirmacaoPeso1;
        (I == 2), assert(fact(entre3a12meses)), confirmacaoPeso1;
        (I == 3), assert(fact(entre1a4anos)), questoesSintomas;
        (I == 4), assert(fact(entre5a9anos)), questoesSintomas;
        (I == 5), assert(fact(entre10a13anos)), questoesSintomas;
        (I == 6), assert(fact(entre14a17anos)), confirmacaoPeso2;
        (I == 7), assert(fact(mais18anos)), confirmacaoPeso2).
    
confirmacaoPeso1:-
    nl, 
    write('|Confirma ter menos de 6kg                                                                                 |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(O6),
        ((O6 == 1), assert(fact(menos6kg)), questoesSintomas;
        (O6 == 2), questoesSintomas).

confirmacaoPeso2:-
    nl, 
    write('|Confirma ter mis de 40kg                                                                                  |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(O6),
        ((O6 == 1), assert(fact(mais40kg)), questoesSintomas;
        (O6 == 2), questoesSintomas).
 
questoesSintomas:-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                               SINTOMAS                                                   |'),nl,
    write('|                                                                                                          |'),nl,
    write('|Tem febre?                                                                                                |'),nl,
    write('|                                                                                                          |'),nl,
    read(F),
    write('|Tem dor de cabeca?                                                                                                          |'),nl,
    write('|                                                                                                          |'),nl,
    read(Ca),
    write('|Tem tosse seca?                                                                                           |'),nl,
    read(S),
    write('|                                                                                                          |'),nl,
    write('|Tem tosse com expetoração?                                                                                |'),nl,
    read(E),
    write('|                                                                                                          |'),nl,
    write('|Tem dificuldade a respirar?                                                                               |'),nl,
    read(R),
    write('|                                                                                                          |'),nl,
    write('|Tem mal-estar geral?                                                                                      |'),nl,
    read(S),
    write('|                                                                                                          |'),nl,
    write('|Tem náuseas?                                                                                              |'),nl,
    read(N),
    write('|                                                                                                          |'),nl,
    write('|Tem vómitos?                                                                                              |'),nl,
    read(V),
    write('|                                                                                                          |'),nl,
    write('|Tem fadiga?                                                                                               |'),nl,
    read(F),
    write('|                                                                                                          |'),nl,
    write('|Tem calafrios ?                                                                                           |'),nl,
    read(Cf),
    write('|                                                                                                          |'),nl,
    write('|Tem diarreia?                                                                                             |'),nl,
    read(Di),
    write('|                                                                                                          |'),nl,
    write('|Tem dor de garganta?                                                                                      |'),nl,
    read(G),
    write('|                                                                                                          |'),nl,
    write('|Tem dor de ouvidos?                                                                                       |'),nl,
    read(O),
    write('|                                                                                                          |'),nl,
    write('|Tem dores musculares?                                                                                     |'),nl,
    read(S),
    write('|                                                                                                          |'),nl,
    write('|Tem nariz entupido?                                                                                       |'),nl,
    read(Et),
    write('|                                                                                                          |'),nl,
    write('|Tem falta de ar?                                                                                          |'),nl,
    read(Ar),
    write('|                                                                                                          |'),nl,
    write('|Tem vermelhidão nos olhos?                                                                                |'),nl,
    read(S),
    write('|                                                                                                          |'),nl,
    write('|Tem tosse seca?                                                                                           |'),nl,
    read(S).
