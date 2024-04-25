:-dynamic(fact/1).
:-dynamic(doenca/8).
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
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPF),
        ((OPF == 1), assert(fact(febre))),
    nl,
    write('|Tem dor de cabeça?                                                                                        |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDC),
        ((OPDC == 1), assert(fact(dor_cabeca))),
    nl,
    write('|Tem dificuldade em resprirar?                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDR),
        ((OPDR == 1), assert(fact(dificuldade_respirar))),
    nl,
    write('|Tem tosse com expetoração?                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPTE),
        ((OPTE == 1), assert(fact(tosse_expetoracao))),
    nl,
    write('|Tem tosse seca?                                                                                           |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPTC),
        ((OPTC == 1), assert(fact(tosse_seca))),
    nl,
    write('|Está a sofrer de mal estar geral?                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPMEG),
        ((OPMEG == 1), assert(fact(mal_estar_geral))),
    nl,
    write('|Tem náuseas?                                                                                              |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPN),
        ((OPN == 1), assert(fact(nauseas))),
    nl,
    write('|Tem dor muscular?                                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPM),
        ((OPM == 1), assert(fact(dor_muscular))),
    nl,
    write('|Tem dor de garganta?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDG),
        ((OPDG == 1), assert(fact(dor_garganta))),
    nl,
    write('|Tem dor de ouvidos?                                                                                       |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDO),
        ((OPDO == 1), assert(fact(dor_ouvido))),
    nl,
    write('|Tem calafrios?                                                                                            |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPC),
        ((OPC == 1), assert(fact(calafrios))),
    nl,
    write('|Tem diarreia?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPD),
        ((OPD == 1), assert(fact(diarreia))),
    nl,
    write('|Tem vomitado?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPV),
        ((OPV == 1), assert(fact(vomitos))),
    nl,
    write('|Tem falta de ar?                                                                                          |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPFA),
        ((OPFA == 1), assert(fact(falta_ar))),
    nl,
    write('|Tem o nariz entupido?                                                                                     |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPNE),
        ((OPNE == 1), assert(fact(nariz_entupido))),
    nl,
    write('|Tem fadiga?                                                                                               |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPFDG),
        ((OPFDG == 1), assert(fact(fadiga))),
    nl,
    write('|Tem os olhos vermelhos?                                                                                   |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPOV),
        ((OPOV == 1), assert(fact(olhos_vermelhos))),
    nl,
    write('|Tem arrepios de frio?                                                                                     |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPAF),
        ((OPAF == 1), assert(fact(arrepios_de_frio))),
    nl,
    write('|Tem dor torácica?                                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDT),
        ((OPDT == 1), assert(fact(dor_toracica))),
    nl,
    write('|Sente placas de uma substância cremosa na boca?                                                           |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPPSCB),
        ((OPPSCB == 1), assert(fact(placas_de_uma_substancia_cremosa_na_boca))),
    nl,
    write('|Tem aftas na lingua ou na bochecha?                                                                       |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPALB),
        ((OPALB == 1), assert(fact(aparecimento_aftas_lingua_ou_bochecha))),
    nl,
    write('|Tem uma sensação de algodão dentro da boca?                                                               |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPSADB),
        ((OPSADB == 1), assert(fact(sensacao_algodao_boca))),
    nl,
    write('|Tem camada esbranquiçada na boca?                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCEB),
        ((OPCEB == 1), assert(fact(dificuldade_respirar))),
    nl,
    write('|Tem dificuldade de engolir?                                                                               |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDE),
        ((OPDE == 1), assert(fact(dificuldade_engolir))),
    nl,
    write('|Tem diciculdade em dormir?                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDD),
        ((OPDD == 1), assert(fact(dificuldade_em_dormir))),
    nl,
    write('|Tem choro superior ao normal?                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCSN),
        ((OPCSN == 1), assert(fact(choro_superior_ao_normal))),
    nl,
    write('|Tem dificuldade de audição?                                                                               |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDA),
        ((OPDA == 1), assert(fact(dificuldades_audicao))),
    nl,
    write('|Tem falta de apetite?                                                                                     |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPFAT),
        ((OPFAT == 1), assert(fact(falta_apetite))),
    nl,
    write('|Tem erupções cutâneas?                                                                                    |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPEC),
        ((OPEC == 1), assert(fact(erupcoes_cutaneas))),
    nl,
    write('|Tem dificuldade em urinar?                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDU),
        ((OPDU == 1), assert(fact(dificuldade_em_urinar))),
    nl,
    write('|Tem dores de formigueiros ou picadas na pele?                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDFPP),
        ((OPDFPP == 1), assert(fact(dores_formigueiros_picadas_pele))),
    nl,
    write('|Sente ardor ou dor ao urinar?                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPADU),
        ((OPADU == 1), assert(fact(ardor_ou_dor_ao_urinar))),
    nl,
    write('|Tem vontade urgente e frequente de urinar?                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPVUFU),
        ((OPVUFU == 1), assert(fact(vontade_urgente_e_frequente_de_urinar))),
    nl,
    write('|Tem sague na urina?                                                                                       |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPSA),
        ((OPSA == 1), assert(fact(eliminacao_de_sangue_na_urina))),
    nl,
    write('|Tem dor lombar?                                                                                           |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDL),
        ((OPDL == 1), assert(fact(dor_lombar))),
    nl,
    write('|Tem coceira na boca?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCB),
        ((OPCB == 1), assert(fact(coceira_na_boca))),
    nl,
    write('|Tem coceira na pele?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCP),
        ((OPCP == 1), assert(fact(coceira_na_pele))),
    nl,
    write('|Tem dor abdominal?                                                                                        |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDAL),
        ((OPDAL == 1), assert(fact(dor_abdominal))),
    nl,
    write('|Sente mal-estar na garganta?                                                                              |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPMEGG),
        ((OPMEGG == 1), assert(fact(mal_estar_na_garganta))),
    nl,
    write('|Tem rouquidão?                                                                                            |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPR),
        ((OPR == 1), assert(fact(rouquidao))),
    nl,
    write('|Tem espirros?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPE),
        ((OPE == 1), assert(fact(espirros))),
    nl,
    write('|Tem espirros contantes?                                                                                   |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPECC),
        ((OPECC == 1), assert(fact(espirros_constantes))),
    nl,
    write('|Tem sensibilidade á luz?                                                                                  |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPSL),
        ((OPSL == 1), assert(fact(sensibilidade_luz))),
    nl,
    write('|Tem sensibilidade a ruídos?                                                                               |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPSR),
        ((OPSR == 1), assert(fact(sensibilidade_ruido))),
    nl,
    write('|Tem tonturas?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPT),
        ((OPT == 1), assert(fact(tonturas))),
    nl,
    write('|Sente coceira no nariz ou nos olhos ou na garganta?                                                       |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCNOG),
        ((OPCNOG == 1), assert(fact(coceira_nariz_olhos_garganta))),
    nl,
    write('|Tem nariz vermelho?                                                                                       |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPNV),
        ((OPNV == 1), assert(fact(nariz_vermelho))),
    nl,
    write('|Tem dor no peito?                                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDP),
        ((OPDP == 1), assert(fact(dor_peito))),
    nl,
    write('|Tem formigamento no corpo?                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPFC),
        ((OPFC == 1), assert(fact(formigamento_corpo))),
    nl,
    write('|Tem dor de articulação?                                                                                   |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDAO),
        ((OPDAO == 1), assert(fact(dor_articulacao))),
    nl,
    write('|Tem vermilhidão nas articulações?                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPVAO),
        ((OPVAO == 1), assert(fact(vermelhidao_articulacao))),
    nl,
    write('|Tem inchaço nas articulações?                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPIAO),
        ((OPIAO == 1), assert(fact(inchaco_articulacao))),
    nl,
    write('|Tem atrofia muscular?                                                                                     |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPAM),
        ((OPAM == 1), assert(fact(atrofia_muscular))),
    nl,
    write('|Tem deformação nas articulações?                                                                          |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDFAO),
        ((OPDFAO == 1), assert(fact(deformacao_articulacao))),
    nl,
    write('|Tem comichão?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCAO),
        ((OPCAO == 1), assert(fact(comichao))),
    nl,
    write('|Tem laqueação?                                                                                            |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPLAO),
        ((OPLAO == 1), assert(fact(laqueacao))),
    nl,
    write('|Tem sensação de areia?                                                                                    |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPSAO),
        ((OPSAO == 1), assert(fact(sensacao_areia))),
    nl,
    write('|Tem sensação de corpo estranho no olho?                                                                   |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPSCEO),
        ((OPSCEO == 1), assert(fact(sensacao_corpo_estranho))),
    nl,
    write('|Tem inchaço nas pálpebras?                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPIP),
        ((OPIP == 1), assert(fact(inchaco_palpebra))),
    nl,
    write('|Tem congestão nasal?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCN),
        ((OPCN == 1), assert(fact(congestao_nasal))),
    nl,
    write('|Tem corrimento nasal?                                                                                     |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCRN),
        ((OPCRN == 1), assert(fact(corrimento_nasal))),
    nl,
    write('|Sente uma pressão facial?                                                                                 |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPPRF),
        ((OPPRF == 1), assert(fact(pressao_facial))),
    nl,
    write('|Tem perda de olfato?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPPO),
        ((OPPO == 1), assert(fact(perda_olfato)),resultado).
    

resultado:-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                          RESULTADO OBTIDO                                                |'),nl,
    demo.


escreverResultado(P) :- doenca(P, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao), write(P), retractall(fact(P)).

 