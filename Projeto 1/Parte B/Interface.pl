:- op( 800, fx, if).
:- op( 700, xfx, then).
:- op( 300, xfy, or).
:- op( 200, xfy, and).
:- dynamic(fact/1).
:- dynamic (medicamento/10).
:- dynamic (imprimir_informacoes/1).
:- dynamic (imprimir_lista/2).
:- dynamic (escreverResultado/1).
:- include('BD.pl').
:- include('BC2.pl').
:- include('BI.pl').


menu:-
    write(' ----------------------------------------------------------------------------------------------------------'),nl,
    write('|                               Seja Bem-Vindo Ao Teste De Sintomas                                        |'),nl,
    write('|                                                                                                          |'),nl,
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|Descubra possiveis doencas e tratamentos atraves deste teste.                                             |'),nl,menu2.

menu2:-
    write('|                                                                                                          |'),nl,
    write('|1-Iniciar o teste                                                                                         |'),nl,
    write('|2-Sair                                                                                                    |'),nl,
    read(X),
    opcoes(X).

opcoes(1):- questoesIniciais.
opcoes(2):-
    write('|Obrigada.                                                                                                 |').
opcoes(_):-
    write('|Introduza uma opcao valida.                                                                               |'),nl,menu2.


questoesIniciais:-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                                                                                          |'),nl,
    write('|Identifique o grupo de idade a que pertence                                                               |'),nl,
    write('|                                                                                                          |'),nl,
    write('|   1- [-3 meses]                          5- [10-13 anos]                                                 |'),nl,
    write('|   2- [3-12 meses]                        6- [14-17 anos]                                                 |'),nl,
    write('|   3- [1-4 anos]                          7- [+18 anos]                                                   |'),nl,
    write('|   4- [5-9 anos]                                                                                          |'),nl,
    read(I),
        ((I == 1), assert(fact(menos3meses:1)), confirmacaoPeso1;
        (I == 2), assert(fact(entre3a12meses:1)), confirmacaoPeso1;
        (I == 3), assert(fact(entre1a4anos:1)), questoesSintomas;
        (I == 4), assert(fact(entre5a9anos:1)), questoesSintomas;
        (I == 5), assert(fact(entre10a13anos:1)), questoesSintomas;
        (I == 6), assert(fact(entre14a17anos:1)), confirmacaoPeso2;
        (I == 7), assert(fact(mais18anos:1)), confirmacaoPeso2).

confirmacaoPeso1:-
    write('|                                                                                                          |'),nl,
    write('|Confirma ter menos de 6kg                                                                                 |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(O6),
        ((O6 == 1), assert(fact(menos6kg:1)), questoesSintomas;
        (O6 == 2), questoesSintomas).

confirmacaoPeso2:-
    write('|                                                                                                          |'),nl,
    write('|Confirma ter mais de 40kg                                                                                 |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(O6),
        ((O6 == 1),assert(fact(mais40kg:1)), questoesSintomas;
        (O6 == 2), questoesSintomas).

questoesSintomas:-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                               SINTOMAS                                                   |'),nl,
    write('|                                                                                                          |'),nl,
    write('|Tem febre?                                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPF),
        ((OPF == 1), assert(fact(febre:0.5)),continuacao1;
         (OPF == 2), continuacao1).

continuacao1:-
    write('|                                                                                                          |'),nl,
    write('|Tem dor de cabeca?                                                                                        |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPDC),
        ((OPDC == 1), assert(fact(dor_cabeca:0.5)),continuacao2;
         (OPDC == 2), continuacao2).


continuacao2:-
    write('|                                                                                                          |'),nl,
    write('|Tem dificuldade em respirar?                                                                              |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPDR),
        ((OPDR == 1), assert(fact(dificuldade_respirar:0.7)),continuacao3;
         (OPDR == 2), continuacao3).

continuacao3:-
    write('|                                                                                                          |'),nl,
    write('|Tem tosse seca?                                                                                                |'),nl,
    write('|1-Sim                                                                                                    |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPTE),
        ((OPTE == 1), assert(fact(tosse_seca:0.6)),continuacao5;
         (OPTE == 2),continuacao5).


continuacao5:-
    write('|                                                                                                          |'),nl,
    write('|Esta a sofrer de mal estar geral?                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPMEG),
        ((OPMEG == 1), assert(fact(mal_estar_geral:0.7)),continuacao35;
         (OPMEG == 2), continuacao35).



continuacao35:-
    write('|                                                                                                          |'),nl,
    write('|Sente coceira na boca?                                                                                    |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPCB),
        ((OPCB == 1), assert(fact(coceira_na_boca:0.7)),continuacao8;
         (OPCB == 2), continuacao8).


continuacao8:-
    write('|                                                                                                          |'),nl,
    write('|Tem dor de garganta?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPDG),
        ((OPDG == 1), assert(fact(dor_garganta:0.4)),continuacao9;
         (OPDG == 2), continuacao9).

continuacao9:-
    write('|                                                                                                          |'),nl,
    write('|Tem dor de ouvidos?                                                                                       |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPDO),
        ((OPDO == 1), assert(fact(dor_ouvido:0.5)),continuacao15;
         (OPDO == 2), continuacao15).


continuacao15:-
    write('|                                                                                                          |'),nl,
    write('|Sente fadiga?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPFDG),
        ((OPFDG == 1), assert(fact(fadiga:0.7)),continuacao32;
         (OPFDG == 2), continuacao32).



continuacao32:-
    write('|                                                                                                          |'),nl,
    write('|Tem vontade urgente e frequente de urinar?                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPVUFU),
        ((OPVUFU == 1), assert(fact(vontade_urgente_e_frequente_de_urinar:0.8)),continuacao41;
         (OPVUFU == 2), continuacao41).


continuacao41:-
    write('|                                                                                                          |'),nl,
    write('|Tem espirros contantes?                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPECC),
        ((OPECC == 1), assert(fact(espirros_constantes:0.5)),continuacao60;
         (OPECC == 2), continuacao60).


continuacao60:-
    write('|                                                                                                          |'),nl,
    write('|Tem corrimento nasal?                                                                                     |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPCRN),
        ((OPCRN == 1), assert(fact(corrimento_nasal:0.3)),continuacao58;
         (OPCRN == 2), continuacao58).

continuacao58:-
    write('|                                                                                                          |'),nl,
    write('|Tem inchaco nas palpebras?                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPIP),
        ((OPIP == 1), assert(fact(inchaco_palpebra:0.8)),resultado;
         (OPIP == 2), resultado).



resultado:-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                          RESULTADO OBTIDO                                                |'),nl,
    demo.


escreverResultado(P, Cert) :- imprimir_informacoes(P, Cert).












































