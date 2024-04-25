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
    write('|Tem dificuldade em resprirar?                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDR),
        ((OPDR == 1), assert(fact(dificuldade_respirar)),continuacao3;
         (OPDR == 2), continuacao3).

continuacao3:-
    nl,
    write('|Tem tosse com expetoração?                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPTE),
        ((OPTE == 1), assert(fact(tosse_expetoracao)),continuacao4;
         (OPTE == 2), continuacao4).

continuacao4:-
    nl,
    write('|Tem tosse seca?                                                                                           |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPTC),
        ((OPTC == 1), assert(fact(tosse_seca)),continuacao5;
         (OPTC == 2), continuacao5).

continuacao5:-
    nl,
    write('|Está a sofrer de mal estar geral?                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPMEG),
        ((OPMEG == 1), assert(fact(mal_estar_geral)),continuacao6;
         (OPMEG == 2), continuacao6).

continuacao6:-
    nl,
    write('|Tem náuseas?                                                                                              |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPN),
        ((OPN == 1), assert(fact(nauseas)),continuacao7;
         (OPN == 2), continuacao7).

continuacao7:-        
    nl,
    write('|Tem dor muscular?                                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPM),
        ((OPM == 1), assert(fact(dor_muscular)),continuacao8;
         (OPM == 2), continuacao8).

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
        ((OPDO == 1), assert(fact(dor_ouvido)),continuacao10;
         (OPDO == 2), continuacao10).

continuacao10:-
    nl,
    write('|Tem calafrios?                                                                                            |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPC),
        ((OPC == 1), assert(fact(calafrios)),continuacao11;
         (OPC == 2), continuacao11).

continuacao11:-        
    nl,
    write('|Tem diarreia?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPD),
        ((OPD == 1), assert(fact(diarreia)),continuacao12;
         (OPD == 2), continuacao12).

continuacao12:-
    nl,
    write('|Tem vomitado?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPV),
        ((OPV == 1), assert(fact(vomitos)),continuacao13;
         (OPV == 2), continuacao13).

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
        ((OPNE == 1), assert(fact(nariz_entupido)),continuacao15;
         (OPNE == 2), continuacao15).

continuacao15:-        
    nl,
    write('|Tem fadiga?                                                                                               |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPFDG),
        ((OPFDG == 1), assert(fact(fadiga)),continuacao16;
         (OPFDG == 2), continuacao16).

continuacao16:-        
    nl,
    write('|Tem os olhos vermelhos?                                                                                   |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPOV),
        ((OPOV == 1), assert(fact(olhos_vermelhos)),continuacao17;
         (OPOV == 2), continuacao17).

continuacao17:-
    nl,
    write('|Tem arrepios de frio?                                                                                     |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPAF),
        ((OPAF == 1), assert(fact(arrepios_de_frio)),continuacao18;
         (OPAF == 2), continuacao18).

continuacao18:-
    nl,
    write('|Tem dor torácica?                                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDT),
        ((OPDT == 1), assert(fact(dor_toracica)),continuacao19;
         (OPDT == 2), continuacao19).

continuacao19:-
    nl,
    write('|Sente placas de uma substância cremosa na boca?                                                           |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPPSCB),
        ((OPPSCB == 1), assert(fact(placas_de_uma_substancia_cremosa_na_boca)),continuacao20;
         (OPPSCB == 2), continuacao20).

continuacao20:-
    nl,
    write('|Tem aftas na lingua ou na bochecha?                                                                       |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPALB),
        ((OPALB == 1), assert(fact(aparecimento_aftas_lingua_ou_bochecha)),continuacao21;
         (OPALB == 2), continuacao21).

continuacao21:-
    nl,
    write('|Tem uma sensação de algodão dentro da boca?                                                               |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPSADB),
        ((OPSADB == 1), assert(fact(sensacao_algodao_boca)),continuacao22;
         (OPSADB == 2), continuacao22).

continuacao22:-
    nl,
    write('|Tem camada esbranquiçada na boca?                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCEB),
        ((OPCEB == 1), assert(fact(dificuldade_respirar)),continuacao23;
         (OPCEB == 2), continuacao23).

continuacao23:-
    nl,
    write('|Tem dificuldade de engolir?                                                                               |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDE),
        ((OPDE == 1), assert(fact(dificuldade_engolir)),continuacao24;
         (OPDE == 2), continuacao24).

continuacao24:-
    nl,
    write('|Tem diciculdade em dormir?                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDD),
        ((OPDD == 1), assert(fact(dificuldade_em_dormir)),continuacao25;
         (OPDD == 2), continuacao25).

continuacao25:-
    nl,
    write('|Tem choro superior ao normal?                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCSN),
        ((OPCSN == 1), assert(fact(choro_superior_ao_normal)),continuacao26;
         (OPCSN == 2), continuacao26).

continuacao26:-
    nl,
    write('|Tem dificuldade de audição?                                                                               |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDA),
        ((OPDA == 1), assert(fact(dificuldades_audicao)),continuacao27;
         (OPDA == 2), continuacao27).

continuacao27:-
    nl,
    write('|Tem falta de apetite?                                                                                     |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPFAT),
        ((OPFAT == 1), assert(fact(falta_apetite)),continuacao28;
         (OPFAT == 2), continuacao28).

continuacao28:-
    nl,
    write('|Tem erupções cutâneas?                                                                                    |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPEC),
        ((OPEC == 1), assert(fact(erupcoes_cutaneas)),continuacao29;
         (OPEC == 2), continuacao29).

continuacao29:-
    nl,
    write('|Tem dificuldade em urinar?                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDU),
        ((OPDU == 1), assert(fact(dificuldade_em_urinar)),continuacao30;
         (OPDU == 2), continuacao30).

continuacao30:-        
    nl,
    write('|Tem dores de formigueiros ou picadas na pele?                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDFPP),
        ((OPDFPP == 1), assert(fact(dores_formigueiros_picadas_pele)),continuacao31;
         (OPDFPP == 2), continuacao31).

continuacao31:-
    nl,
    write('|Sente ardor ou dor ao urinar?                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPADU),
        ((OPADU == 1), assert(fact(ardor_ou_dor_ao_urinar)),continuacao32;
         (OPADU == 2), continuacao32).

continuacao32:-
    nl,
    write('|Tem vontade urgente e frequente de urinar?                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPVUFU),
        ((OPVUFU == 1), assert(fact(vontade_urgente_e_frequente_de_urinar)),continuacao33;
         (OPVUFU == 2), continuacao33).

continuacao33:-
    nl,
    write('|Tem sague na urina?                                                                                       |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPSA),
        ((OPSA == 1), assert(fact(eliminacao_de_sangue_na_urina)),continuacao34;
         (OPSA == 2), continuacao34).

continuacao34:-
    nl,
    write('|Tem dor lombar?                                                                                           |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDL),
        ((OPDL == 1), assert(fact(dor_lombar)),continuacao35;
         (OPDL == 2), continuacao35).

continuacao35:-
    nl,
    write('|Tem coceira na boca?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCB),
        ((OPCB == 1), assert(fact(coceira_na_boca)),continuacao36;
         (OPCB == 2), continuacao36).

continuacao36:-
    nl,
    write('|Tem coceira na pele?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCP),
        ((OPCP == 1), assert(fact(coceira_na_pele)),continuacao37;
         (OPCP == 2), continuacao37).

continuacao37:-
    nl,
    write('|Tem dor abdominal?                                                                                        |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDAL),
        ((OPDAL == 1), assert(fact(dor_abdominal)),continuacao38;
         (OPDAL == 2), continuacao38).

continuacao38:-
    nl,
    write('|Sente mal-estar na garganta?                                                                              |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPMEGG),
        ((OPMEGG == 1), assert(fact(mal_estar_na_garganta)),continuacao39;
         (OPMEGG == 2), continuacao39).

continuacao39:-
    nl,
    write('|Tem rouquidão?                                                                                            |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPR),
        ((OPR == 1), assert(fact(rouquidao)),continuacao40;
         (OPR == 2), continuacao40).

continuacao40:-
    nl,
    write('|Tem espirros?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPE),
        ((OPE == 1), assert(fact(espirros)),continuacao41;
         (OPE == 2), continuacao41).

continuacao41:-
    nl,
    write('|Tem espirros contantes?                                                                                   |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPECC),
        ((OPECC == 1), assert(fact(espirros_constantes)),continuacao42;
         (OPECC == 2), continuacao42).

continuacao42:-
    nl,
    write('|Tem sensibilidade á luz?                                                                                  |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPSL),
        ((OPSL == 1), assert(fact(sensibilidade_luz)),continuacao43;
         (OPSL == 2), continuacao43).

continuacao43:-
    nl,
    write('|Tem sensibilidade a ruídos?                                                                               |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPSR),
        ((OPSR == 1), assert(fact(sensibilidade_ruido)),continuacao44;
         (OPSR == 2), continuacao44).

continuacao44:-
    nl,
    write('|Tem tonturas?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPT),
        ((OPT == 1), assert(fact(tonturas)),continuacao45;
         (OPT == 2), continuacao45).

continuacao45:-
    nl,
    write('|Sente coceira no nariz ou nos olhos ou na garganta?                                                       |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCNOG),
        ((OPCNOG == 1), assert(fact(coceira_nariz_olhos_garganta)),continuacao46;
         (OPCNOG == 2), continuacao46).

continuacao46:-
    nl,
    write('|Tem nariz vermelho?                                                                                       |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPNV),
        ((OPNV == 1), assert(fact(nariz_vermelho)),continuacao47;
         (OPNV == 2), continuacao47).

continuacao47:-
    nl,
    write('|Tem dor no peito?                                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDP),
        ((OPDP == 1), assert(fact(dor_peito)),continuacao48;
         (OPDP == 2), continuacao48).

continuacao48:-
    nl,
    write('|Tem formigamento no corpo?                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPFC),
        ((OPFC == 1), assert(fact(formigamento_corpo)),continuacao49;
         (OPFC == 2), continuacao49).

continuacao49:-
    nl,
    write('|Tem dor de articulação?                                                                                   |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDAO),
        ((OPDAO == 1), assert(fact(dor_articulacao)),continuacao50;
         (OPDAO == 2), continuacao50).

continuacao50:-
    nl,
    write('|Tem vermilhidão nas articulações?                                                                         |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPVAO),
        ((OPVAO == 1), assert(fact(vermelhidao_articulacao)),continuacao51;
         (OPVAO == 2), continuacao51).

continuacao51:-
    nl,
    write('|Tem inchaço nas articulações?                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPIAO),
        ((OPIAO == 1), assert(fact(inchaco_articulacao)),continuacao52;
         (OPIAO == 2), continuacao52).

continuacao52:-
    nl,
    write('|Tem atrofia muscular?                                                                                     |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPAM),
        ((OPAM == 1), assert(fact(atrofia_muscular)),continuacao53;
         (OPAM == 2), continuacao53).

continuacao53:-
    nl,
    write('|Tem deformação nas articulações?                                                                          |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPDFAO),
        ((OPDFAO == 1), assert(fact(deformacao_articulacao)),continuacao54;
         (OPDFAO == 2), continuacao54).

continuacao54:-
    nl,
    write('|Tem comichão?                                                                                             |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCAO),
        ((OPCAO == 1), assert(fact(comichao)),continuacao55;
         (OPCAO == 2), continuacao55).

continuacao55:-
    nl,
    write('|Tem laqueação?                                                                                            |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPLAO),
        ((OPLAO == 1), assert(fact(laqueacao)),continuacao56;
         (OPLAO == 2), continuacao56).

continuacao56:-
    nl,
    write('|Tem sensação de areia?                                                                                    |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPSAO),
        ((OPSAO == 1), assert(fact(sensacao_areia)),continuacao57;
         (OPSAO == 2), continuacao57).

continuacao57:-
    nl,
    write('|Tem sensação de corpo estranho no olho?                                                                   |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPSCEO),
        ((OPSCEO == 1), assert(fact(sensacao_corpo_estranho)),continuacao58;
         (OPSCEO == 2), continuacao58).

continuacao58:-
    nl,
    write('|Tem inchaço nas pálpebras?                                                                                |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPIP),
        ((OPIP == 1), assert(fact(inchaco_palpebra)),continuacao59;
         (OPIP == 2), continuacao59).

continuacao59:-
    nl,
    write('|Tem congestão nasal?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCN),
        ((OPCN == 1), assert(fact(congestao_nasal)),continuacao60;
         (OPCN == 2), continuacao60).

continuacao60:-
    nl,
    write('|Tem corrimento nasal?                                                                                     |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPCRN),
        ((OPCRN == 1), assert(fact(corrimento_nasal)),continuacao61;
         (OPCRN == 2), continuacao61).

continuacao61:-
    nl,
    write('|Sente uma pressão facial?                                                                                 |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPPRF),
        ((OPPRF == 1), assert(fact(pressao_facial)),continuacao62;
         (OPPRF == 2), continuacao62).

continuacao62:-
    nl,
    write('|Tem perda de olfato?                                                                                      |'),nl,
    write('|1-Sim                                                                                                     |'),nl,
    write('|2-Não                                                                                                     |'),nl,
    read(OPPO),
        ((OPPO == 1), assert(fact(perda_olfato)),resultado;
         (OPPO == 2), resultado).
    

resultado:-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                          RESULTADO OBTIDO                                                |'),nl,
    demo.


escreverResultado(P) :- imprimir_informacoes(P),retractall(fact(_)).

 