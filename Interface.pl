:- op( 800, fx, if).
:- op( 700, xfx, then).
:- op( 300, xfy, or).
:- op( 200, xfy, and).
:- dynamic(fact/1).
:- dynamic (medicamento/10).
:- dynamic (imprimir_informacoes/1).
:- dynamic (imprimir_lista/1).
:- dynamic (doente/2).
:- dynamic (escreverResultado/1).
:- include('BD.pl').
:- include('BC.pl').
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
        ((OPDC == 1), assert(fact(dor_cabeca:0.5)),continuacao29;
         (OPDC == 2), continuacao2).

continuacao29:-
    write('|                                                                                                          |'),nl,
    write('|Tem dificuldade em urinar?                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPDU),
        ((OPDU == 1), assert(fact(dificuldade_em_urinar:0.8)),continuacao2;
         (OPDU == 2), continuacao2).


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
    write('|Tem tosse?                                                                                                |'),nl,
    write('|1-Com expetoracao                                                                                         |'),nl,
    write('|2-Seca                                                                                                    |'),nl,
    write('|3-Nao                                                                                                     |'),nl,
    read(OPTE),
        ((OPTE == 1), assert(fact(tosse_expetoracao:0.6)),continuacao47;
         (OPTE == 2), assert(fact(tosse_seca:0.6)),continuacao5;
         (OPTE == 3), continuacao5).


continuacao47:-
    write('|                                                                                                          |'),nl,
    write('|Tem dor no peito?                                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPDP),
        ((OPDP == 1), assert(fact(dor_peito:0.5)),continuacao5;
         (OPDP == 2),continuacao5).

continuacao5:-
    write('|                                                                                                          |'),nl,
    write('|Esta a sofrer de mal estar geral?                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPMEG),
        ((OPMEG == 1), assert(fact(mal_estar_geral:0.7)),continuacao54;
         (OPMEG == 2), continuacao54).

continuacao54:-
    write('|                                                                                                          |'),nl,
    write('|Sente comichao nalguma parte do corpo?                                                                    |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPCAO),
        ((OPCAO == 1), assert(fact(comichao:0.4)),continuacao35;
         (OPCAO == 2), continuacao6).


continuacao35:-
    write('|                                                                                                          |'),nl,
    write('|Sente coceira na boca?                                                                                    |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPCB),
        ((OPCB == 1), assert(fact(coceira_na_boca:0.7)),continuacao45;
         (OPCB == 2), continuacao45).

continuacao45:-
    write('|                                                                                                          |'),nl,
    write('|Sente coceira no nariz, olhos ou  garganta?                                                               |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPCNOG),
        ((OPCNOG == 1), assert(fact(coceira_nariz_olhos_garganta:0.7)),continuacao28;
         (OPCNOG == 2), continuacao28
        ).

continuacao28:-
    write('|                                                                                                          |'),nl,
    write('|A comichao provocou erupcoes cutaneas?                                                                    |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPEC),
        ((OPEC == 1), assert(fact(erupcoes_cutaneas:0.7)),continuacao6;
         (OPEC == 2), continuacao6).


continuacao6:-
    write('|                                                                                                          |'),nl,
    write('|Tem nauseas?                                                                                              |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPN),
        ((OPN == 1), assert(fact(nauseas:0.6)),continuacao7;
         (OPN == 2), continuacao7).

continuacao7:-
    write('|                                                                                                          |'),nl,
    write('|Tem dor muscular?                                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPM),
        ((OPM == 1), assert(fact(dor_muscular:0.5)),continuacao8;
         (OPM == 2), continuacao8).

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
        ((OPDO == 1), assert(fact(dor_ouvido:0.5)),continuacao24;
         (OPDO == 2), continuacao10).

continuacao24:-
    write('|                                                                                                          |'),nl,
    write('|Tem dificuldade em dormir?                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPDD),
        ((OPDD == 1), assert(fact(dificuldade_em_dormir:0.6)),continuacao26;
         (OPDD == 2), continuacao26).

continuacao26:-
    write('|                                                                                                          |'),nl,
    write('|Tem dificuldade de audicao?                                                                               |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPDA),
        ((OPDA == 1), assert(fact(dificuldades_audicao:0.7)),continuacao27;
         (OPDA == 2), continuacao27).

continuacao27:-
    write('|                                                                                                          |'),nl,
    write('|Tem falta de apetite?                                                                                     |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPFAT),
        ((OPFAT == 1), assert(fact(falta_apetite:0.7)),continuacao10;
         (OPFAT == 2), continuacao10).

continuacao10:-
    write('|                                                                                                          |'),nl,
    write('|Tem calafrios?                                                                                            |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPC),
        ((OPC == 1), assert(fact(calafrios:0.6)),continuacao11;
         (OPC == 2), continuacao11).

continuacao11:-
    write('|                                                                                                          |'),nl,
    write('|Tem diarreia?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPD),
        ((OPD == 1), assert(fact(diarreia:0.7)),continuacao12;
         (OPD == 2), continuacao12).

continuacao12:-
    write('|                                                                                                          |'),nl,
    write('|Tem sintomas de vomito?                                                                                   |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPV),
        ((OPV == 1), assert(fact(vomitos:0.8)),continuacao13;
         (OPV == 2), continuacao15).

continuacao15:-
    write('|                                                                                                          |'),nl,
    write('|Sente fadiga?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPFDG),
        ((OPFDG == 1), assert(fact(fadiga:0.7)),continuacao16;
         (OPFDG == 2), continuacao16).

continuacao16:-
    write('|                                                                                                          |'),nl,
    write('|Tem os olhos vermelhos?                                                                                   |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPOV),
        ((OPOV == 1), assert(fact(olhos_vermelhos:0.6)),continuacao23;
         (OPOV == 2), continuacao23).

continuacao23:-
    write('|                                                                                                          |'),nl,
    write('|Tem dificuldade de engolir?                                                                               |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPDE),
        ((OPDE == 1), assert(fact(dificuldade_engolir:0.8)),continuacao31;
         (OPDE == 2), continuacao31).


continuacao31:-
    write('|                                                                                                          |'),nl,
    write('|Sente ardor ou dor ao urinar?                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPADU),
        ((OPADU == 1), assert(fact(ardor_ou_dor_ao_urinar:0.9)),continuacao32;
         (OPADU == 2), continuacao37).

continuacao32:-
    write('|                                                                                                          |'),nl,
    write('|Tem vontade urgente e frequente de urinar?                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPVUFU),
        ((OPVUFU == 1), assert(fact(vontade_urgente_e_frequente_de_urinar:0.8)),continuacao33;
         (OPVUFU == 2), continuacao33).

continuacao33:-
    write('|                                                                                                          |'),nl,
    write('|Tem sangue na urina?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPSA),
        ((OPSA == 1), assert(fact(eliminacao_de_sangue_na_urina:0.9)),continuacao34;
         (OPSA == 2), continuacao34).

continuacao34:-
    write('|                                                                                                          |'),nl,
    write('|Tem dor lombar?                                                                                           |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPDL),
        ((OPDL == 1), assert(fact(dor_lombar:0.6)),continuacao37;
         (OPDL == 2), continuacao37).


continuacao37:-
    write('|                                                                                                          |'),nl,
    write('|Tem dor abdominal?                                                                                        |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPDAL),
        ((OPDAL == 1), assert(fact(dor_abdominal:0.6)),continuacao38;
         (OPDAL == 2), continuacao38).

continuacao38:-
    write('|                                                                                                          |'),nl,
    write('|Sente mal-estar na garganta?                                                                              |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPMEGG),
        ((OPMEGG == 1), assert(fact(mal_estar_na_garganta:0.7)),continuacao39;
         (OPMEGG == 2), continuacao39).

continuacao39:-
    write('|                                                                                                          |'),nl,
    write('|Tem rouquidao?                                                                                            |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPR),
        ((OPR == 1), assert(fact(rouquidao:0.6)),continuacao40;
         (OPR == 2), continuacao40).

continuacao40:-
    write('|                                                                                                          |'),nl,
    write('|Tem espirros?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPE),
        ((OPE == 1), assert(fact(espirros:0.3)),continuacao41;
         (OPE == 2), continuacao42).

continuacao41:-
    write('|                                                                                                          |'),nl,
    write('|Esses espirros sao contantes?                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPECC),
        ((OPECC == 1), assert(fact(espirros_constantes:0.5)),continuacao42;
         (OPECC == 2), continuacao42).

continuacao42:-
    write('|                                                                                                          |'),nl,
    write('|Tem sensibilidade a luz?                                                                                  |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPSL),
        ((OPSL == 1), assert(fact(sensibilidade_luz:0.8)),continuacao43;
         (OPSL == 2), continuacao43).

continuacao43:-
    write('|                                                                                                          |'),nl,
    write('|Tem sensibilidade a ruidos?                                                                               |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPSR),
        ((OPSR == 1), assert(fact(sensibilidade_ruido:0.8)),continuacao44;
         (OPSR == 2), continuacao44).

continuacao44:-
    write('|                                                                                                          |'),nl,
    write('|Tem tonturas?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPT),
        ((OPT == 1), assert(fact(tonturas:0.7)),continuacao48;
         (OPT == 2), continuacao48).


continuacao48:-
    write('|                                                                                                          |'),nl,
    write('|Sente formigamento em alguma parte do corpo?                                                              |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPFC),
        ((OPFC == 1), assert(fact(formigamento_corpo:0.6)),continuacao58;
         (OPFC == 2), continuacao58).




continuacao58:-
    write('|                                                                                                          |'),nl,
    write('|Tem inchaco nas palpebras?                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPIP),
        ((OPIP == 1), assert(fact(inchaco_palpebra:0.8)),continuacao56;
         (OPIP == 2), continuacao59).

continuacao56:-
    write('|                                                                                                          |'),nl,
    write('|Tem sensacao de areia nos olhos?                                                                          |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPSAO),
        ((OPSAO == 1), assert(fact(sensacao_areia:0.7)),continuacao59;
         (OPSAO == 2), continuacao59).


continuacao59:-
    write('|                                                                                                          |'),nl,
    write('|Tem congestao nasal?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPCN),
        ((OPCN == 1), assert(fact(congestao_nasal:0.3)),continuacao46;
         (OPCN == 2), continuacao60).

continuacao46:-
    write('|                                                                                                          |'),nl,
    write('|Tem o nariz vermelho?                                                                                     |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPNV),
        ((OPNV == 1), assert(fact(nariz_vermelho:0.2)),continuacao60;
         (OPNV == 2), continuacao60).

continuacao60:-
    write('|                                                                                                          |'),nl,
    write('|Tem corrimento nasal?                                                                                     |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPCRN),
        ((OPCRN == 1), assert(fact(corrimento_nasal:0.3)),continuacao61;
         (OPCRN == 2), continuacao61).

continuacao61:-
    nl,
    write('|Sente uma pressao facial?                                                                                 |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPPRF),
        ((OPPRF == 1), assert(fact(pressao_facial:0.6)),continuacao62;
         (OPPRF == 2), continuacao62).

continuacao62:-
    write('|                                                                                                          |'),nl,
    write('|Tem perda de olfato?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Nao                                                                                                     |'),nl,
    read(OPPO),
        ((OPPO == 1), assert(fact(perda_olfato:0.6)),resultado;
         (OPPO == 2), resultado).


resultado:-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                          RESULTADO OBTIDO                                                |'),nl,
    demo.


escreverResultado(P, Cert) :- imprimir_informacoes(P, Cert).


