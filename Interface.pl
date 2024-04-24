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
    write('|   1- [-3 meses]                          5- [5-9 anos]                                                   |'),nl,
    write('|   2- [+3 meses]                          6- [10-13 anos]                                                 |'),nl,
    write('|   3- [3-12 meses]                        7- [14-17 anos]                                                 |'),nl,
    write('|   4- [1-4 anos]                          8- [+18 anos]                                                   |'),nl,
    read(I),
        ((I == 1), assert(fact(menos3meses));
        (I == 2), assert(fact(mais3meses));
        (I == 3), assert(fact(entre3a12meses));
        (I == 4), assert(fact(entre1a4anos));
        (I == 5), assert(fact(entre5a9anos));
        (I == 6), assert(fact(entre10a13anos));
        (I == 7), assert(fact(entre14a17anos));
        (I == 8), assert(fact(mais18anos))),
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                                                                                          |'),nl,
    write('|Nome: '),write(N),write('?'),nl,
    write('|Opção da idade: '),write(I),write('?'),nl,
    write('|                                                                                                          |'),nl,
    write('|                   Porfavor confirme os dados fornecidos para podermos iniciar o teste                    |'),nl,
    write('|----------------------------------------------------------------------------------------------------------|'),nl,confirmacao.
    

confirmacao:-
    write('|                                                                                                          |'),nl,
    write('|1-Cofirmado                                                                                               |'),nl,
    write('|2-Reintroduzir dados                                                                                      |'),nl,
    read(C),
    opcao(C).

opcao(1):- questoesSintomas.
opcao(2):- questoesIniciais.
opcao(_):-
    write('|Introduza uma opção válida.                                                                               |'),nl,confirmacao.

questoesSintomas:-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
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
    write('|Tem tosse com expetoração?                                                                                           |'),nl,
    read(E),
    write('|                                                                                                          |'),nl,
    write('|Tem dificuldade a respirar?                                                                                           |'),nl,
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
    write('|Tem dor de ouvidos?                                                                                           |'),nl,
    read(O),
    write('|                                                                                                          |'),nl,
    write('|Tem dores musculares?                                                                                     |'),nl,
    read(S),
    write('|                                                                                                          |'),nl,
    write('|Tem nariz entupido?                                                                                           |'),nl,
    read(Et),
    write('|                                                                                                          |'),nl,
    write('|Tem falta de ar?                                                                                           |'),nl,
    read(Ar),
    write('|                                                                                                          |'),nl,
    write('|Tem vermelhidão nos olhos?                                                                                           |'),nl,
    read(S),
    write('|                                                                                                          |'),nl,
    write('|Tem tosse seca?                                                                                           |'),nl,
    read(S).
