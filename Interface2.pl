:-dynamic(fact/1).
:-dynamic (imprimir_informacoes/1).
:-dynamic (imprimir_lista/1).
:- include('BD.pl').
:- include('BC.pl').
:- include('BI.pl').


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
    write('|Identifique o grupo de idade a que pertence                                                                |'),nl,
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
    write('|Confirma ter mais de 40kg                                                                                  |'),nl,
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
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPF),
        ((OPF == 1), assert(fact(febre)),continuacao1;
         (OPF == 2), continuacao1).

continuacao1:-
    nl,
    write('|Tem dor de cabeça?                                                                                        |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDC),
        ((OPDC == 1), assert(fact(dor_cabeca)),continuacao2;
         (OPDC == 2), continuacao2).



continuacao2:-
    nl,
    write('|Tem dificuldade em respirar?                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDR),
        ((OPDR == 1), assert(fact(dificuldade_respirar)),continuacao5;
         (OPDR == 2), continuacao5).


continuacao5:-
    nl,
    write('|Está a sofrer de mal estar geral?                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPMEG),
        ((OPMEG == 1), assert(fact(mal_estar_geral)),continuacao8;
         (OPMEG == 2), continuacao8).

continuacao8:-
    nl,
    write('|Tem dor de garganta?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDG),
        ((OPDG == 1), assert(fact(dor_garganta)),continuacao9;
         (OPDG == 2), continuacao9).





continuacao9:-
    nl,
    write('|Tem dor de ouvidos?                                                                                       |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDO),
        ((OPDO == 1), assert(fact(dor_ouvido)),continuacao13;
         (OPDO == 2), continuacao13).




continuacao13:-
    nl,
    write('|Tem falta de ar?                                                                                          |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPFA),
        ((OPFA == 1), assert(fact(falta_ar)),continuacao14;
         (OPFA == 2), continuacao14).

continuacao14:-
    nl,
    write('|Tem o nariz entupido?                                                                                     |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPNE),
        ((OPNE == 1), assert(fact(nariz_entupido)),continuacao19;
         (OPNE == 2), continuacao19).





continuacao19:-
    nl,
    write('|Sente placas de uma substância cremosa na boca?                                                           |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPPSCB),
        ((OPPSCB == 1), assert(fact(placas_de_uma_substancia_cremosa_na_boca)),continuacao28;
         (OPPSCB == 2), continuacao28).



continuacao28:-
    nl,
    write('|Tem erupções cutâneas?                                                                                    |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPEC),
        ((OPEC == 1), assert(fact(erupcoes_cutaneas)),continuacao31;
         (OPEC == 2), continuacao31).



continuacao31:-
    nl,
    write('|Sente ardor ou dor ao urinar?                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPADU),
        ((OPADU == 1), assert(fact(ardor_ou_dor_ao_urinar)),continuacao35;
         (OPADU == 2), continuacao35).




continuacao35:-
    nl,
    write('|Tem coceira na boca?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCB),
        ((OPCB == 1), assert(fact(coceira_na_boca)),continuacao49;
         (OPCB == 2), continuacao49).



continuacao49:-
    nl,
    write('|Tem dor nas articulações?                                                                                   |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDAO),
        ((OPDAO == 1), assert(fact(dor_articulacao)),continuacao54;
         (OPDAO == 2), continuacao54).




continuacao54:-
    nl,
    write('|Tem comichão nos olhos?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCAO),
        ((OPCAO == 1), assert(fact(comichao)),continuacao59;
         (OPCAO == 2), continuacao59).



continuacao59:-
    nl,
    write('|Tem congestão nasal?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCN),
        ((OPCN == 1), assert(fact(congestao_nasal)),resultado;
         (OPCN == 2), resultado).



resultado:-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                          RESULTADO OBTIDO                                                |'),nl,
    demo.


escreverResultado(P) :- imprimir_informacoes(P).


