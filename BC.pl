:- op( 800, fx, if).
:- op( 700, xfx, then).
:- op( 300, xfy, or).
:- op( 200, xfy, and).
:- dynamic (medicamento/10).
:- dynamic (imprimir_informacoes/1).
:- dynamic (imprimir_lista/1).
:- dynamic (doente/2).


if tosse_expetoracao and dificuldade_respirar and
(febre or calafrios or dor_peito or dor_cabeca or dor_muscular) and menos6kg
then a1.
if tosse_expetoracao and dificuldade_respirar and
(febre or calafrios or dor_peito or dor_cabeca or dor_muscular) and entre3a12meses
then a2.
if tosse_expetoracao and dificuldade_respirar and
(febre or calafrios or dor_peito or dor_cabeca or dor_muscular) and entre1a4anos
then a3.
if tosse_expetoracao and dificuldade_respirar and
(febre or calafrios or dor_peito or dor_cabeca or dor_muscular) and entre5a9anos
then a4.
if tosse_expetoracao and dificuldade_respirar and
(febre or calafrios or dor_peito or dor_cabeca or dor_muscular) and entre10a13anos
then a5.
if tosse_expetoracao and dificuldade_respirar and
(febre or calafrios or dor_peito or dor_cabeca or dor_muscular) and entre14a17anos
then a6.
if tosse_expetoracao and dificuldade_respirar and
(febre or calafrios or dor_peito or dor_cabeca or dor_muscular) and mais18anos
then a7.
if tosse_expetoracao and dificuldade_respirar and
(febre or calafrios or dor_peito or dor_cabeca or dor_muscular) and mais40kg
then a8.

if dor_garganta and (febre or dificuldade_engolir or dor_ouvido or mal_estar_geral) and mais40kg
then c1.
if dor_garganta and (febre or dificuldade_engolir or dor_ouvido or mal_estar_geral) and menos6kg
then c2.
if dor_garganta and (febre or dificuldade_engolir or dor_ouvido or mal_estar_geral) and menos3meses
then c3.
if dor_garganta and (febre or dificuldade_engolir or dor_ouvido or mal_estar_geral) and entre3a12meses
then c4.
if dor_garganta and (febre or dificuldade_engolir or dor_ouvido or mal_estar_geral) and entre1a4anos
then c5.
if dor_garganta and (febre or dificuldade_engolir or dor_ouvido or mal_estar_geral) and entre5a9anos
then c6.
if dor_garganta and (febre or dificuldade_engolir or dor_ouvido or mal_estar_geral) and entre10a13anos
then c7.
if dor_garganta and (febre or dificuldade_engolir or dor_ouvido or mal_estar_geral) and entre14a17anos
then c8.
if dor_garganta and (febre or dificuldade_engolir or dor_ouvido or mal_estar_geral) and mais18anos
then c9.

if dor_ouvido and (dificuldade_em_dormir or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and mais40kg
then d1.
if dor_ouvido and (dificuldade_em_dormir or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and menos6kg
then d2.
if dor_ouvido and (dificuldade_em_dormir or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and menos3meses
then d3.
if dor_ouvido and (dificuldade_em_dormir or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and entre3a12meses
then d4.
if dor_ouvido and (dificuldade_em_dormir or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and entre1a4anos
then d5.
if dor_ouvido and (dificuldade_em_dormir or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and entre5a9anos
then d6.
if dor_ouvido and (dificuldade_em_dormir or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and entre10a13anos
then d7.
if dor_ouvido and (dificuldade_em_dormir or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and entre14a17anos
then d8.
if dor_ouvido and (dificuldade_em_dormir or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and mais18anos
then d9.

if dor_cabeca and febre and (erupcoes_cutaneas or calafrios or nauseas or diarreia or ardor_ou_dor_ao_urinar or formigamento_corpo) and mais18anos
then e1.

if coceira_na_boca and (comichao or dor_abdominal or diarreia or nauseas or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and entre1a4anos
then f1.
if coceira_na_boca and (comichao or dor_abdominal or diarreia or nauseas or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and entre5a9anos
then f2.
if coceira_na_boca and (comichao or dor_abdominal or diarreia or nauseas or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and entre10a13anos
then f3.
if coceira_na_boca and (comichao or dor_abdominal or diarreia or nauseas or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and entre14a17anos
then f4.
if coceira_na_boca and (comichao or dor_abdominal or diarreia or nauseas or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and mais18anos
then f5.

if congestao_nasal and espirros_constantes and (coceira_nariz_olhos_garganta or nariz_vermelho or tosse_seca or dificuldade_respirar or olhos_vermelhos or dor_cabeca) and entre1a4anos
then g1.
if congestao_nasal and espirros_constantes and (coceira_nariz_olhos_garganta or nariz_vermelho or tosse_seca or dificuldade_respirar or olhos_vermelhos or dor_cabeca) and entre5a9anos
then g2.
if congestao_nasal and espirros_constantes and (coceira_nariz_olhos_garganta or nariz_vermelho or tosse_seca or dificuldade_respirar or olhos_vermelhos or dor_cabeca) and entre10a13anos
then g3.
if congestao_nasal and espirros_constantes and (coceira_nariz_olhos_garganta or nariz_vermelho or tosse_seca or dificuldade_respirar or olhos_vermelhos or dor_cabeca) and entre14a17anos
then g4.
if congestao_nasal and espirros_constantes and (coceira_nariz_olhos_garganta or nariz_vermelho or tosse_seca or dificuldade_respirar or olhos_vermelhos or dor_cabeca) and mais18anos
then g5.

if (tosse_seca or tosse_expetoracao) and falta_ar and (dor_peito or febre or fadiga)
then h1.
if (tosse_seca or tosse_expetoracao) and falta_ar and (dor_peito or febre or fadiga) and entre3a12meses
then h2.
if (tosse_seca or tosse_expetoracao) and falta_ar and (dor_peito or febre or fadiga) and entre1a4anos
then h3.
if (tosse_seca or tosse_expetoracao) and falta_ar and (dor_peito or febre or fadiga) and entre5a9anos
then h4.
if (tosse_seca or tosse_expetoracao) and falta_ar and (dor_peito or febre or fadiga) and entre10a13anos
then h5.
if (tosse_seca or tosse_expetoracao) and falta_ar and (dor_peito or febre or fadiga) and entre14a17anos
then h6.
if (tosse_seca or tosse_expetoracao) and falta_ar and (dor_peito or febre or fadiga) and mais18anos
then h7.

if dor_cabeca and (sensibilidade_ruido or sensibilidade_luz) and mal_estar_geral and nauseas and (tonturas or formigamento_corpo)
then i1.
if dor_cabeca and (sensibilidade_ruido or sensibilidade_luz) and mal_estar_geral and nauseas and (tonturas or formigamento_corpo) and entre5a9anos
then i2.
if dor_cabeca and (sensibilidade_ruido or sensibilidade_luz) and mal_estar_geral and nauseas and (tonturas or formigamento_corpo) and entre10a13anos
then i3.
if dor_cabeca and (sensibilidade_ruido or sensibilidade_luz) and mal_estar_geral and nauseas and (tonturas or formigamento_corpo) and entre14a17anos
then i4.
if dor_cabeca and (sensibilidade_ruido or sensibilidade_luz) and mal_estar_geral and nauseas and (tonturas or formigamento_corpo) and entre3a12meses
then i5.
if dor_cabeca and (sensibilidade_ruido or sensibilidade_luz) and mal_estar_geral and nauseas and (tonturas or formigamento_corpo) and entre1a4anos
then i6.
if dor_cabeca and (sensibilidade_ruido or sensibilidade_luz) and mal_estar_geral and nauseas and (tonturas or formigamento_corpo) and mais18anos
then i7.

if febre and mal_estar_geral and dor_cabeca and (espirros or tosse_seca or congestao_nasal or dor_muscular or dor_garganta) and mais18anos
then j1.
if febre and mal_estar_geral and dor_cabeca and (espirros or tosse_seca or congestao_nasal or dor_muscular or dor_garganta) and entre3a12meses
then j2.
if febre and mal_estar_geral and dor_cabeca and (espirros or tosse_seca or congestao_nasal or dor_muscular or dor_garganta) and entre1a4anos
then j3.
if febre and mal_estar_geral and dor_cabeca and (espirros or tosse_seca or congestao_nasal or dor_muscular or dor_garganta) and entre5a9anos
then j4.
if febre and mal_estar_geral and dor_cabeca and (espirros or tosse_seca or congestao_nasal or dor_muscular or dor_garganta) and entre10a13anos
then j5.
if febre and mal_estar_geral and dor_cabeca and (espirros or tosse_seca or congestao_nasal or dor_muscular or dor_garganta) and entre14a17anos
then j6.

if congestao_nasal and corrimento_nasal and fadiga and (pressao_facial or perda_olfato or febre or tosse_expetoracao or tosse_seca) and entre5a9anos
then l1.
if congestao_nasal and corrimento_nasal and fadiga and (pressao_facial or perda_olfato or febre or tosse_expetoracao or tosse_seca) and entre10a13anos
then l2.
if congestao_nasal and corrimento_nasal and fadiga and (pressao_facial or perda_olfato or febre or tosse_expetoracao or tosse_seca) and entre14a17anos
then l3.
if congestao_nasal and corrimento_nasal and fadiga and (pressao_facial or perda_olfato or febre or tosse_expetoracao or tosse_seca) and mais18anos
then l4.
if congestao_nasal and corrimento_nasal and fadiga and (pressao_facial or perda_olfato or febre or tosse_expetoracao or tosse_seca) and entre3a12meses
then l5.
if congestao_nasal and corrimento_nasal and fadiga and (pressao_facial or perda_olfato or febre or tosse_expetoracao or tosse_seca) and entre1a4anos
then l6.

if olhos_vermelhos and inchaco_palpebra and (sensacao_areia or coceira_nariz_olhos_garganta or sensibilidade_luz)
then m1.

if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas) and mais40kg
then n1.
if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas) and entre10a13anos
then n2.
if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas) and entre5a9anos
then n3.
if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas) and entre1a4nos
then n4.
if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas) and entre3a12meses
then n5.
if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas) and menos3meses
then n6.
if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas) and menos6kg
then n7.


% Predicado para imprimir uma lista com informações para uma determinada doença
imprimir_informacoes(a1) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, _, menos6kg, Prescricao, Dose, Vezes, Condicao),
             doente(pneumonia, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('a1'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(a2) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Condicao),
             doente(pneumonia, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('a2'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(a3) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(pneumonia, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('a3'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(a4) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(pneumonia, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('a4'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(a5) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(pneumonia, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('a5'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(a6) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(pneumonia, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('a6'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(a7) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(pneumonia, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('a7'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(a8) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, _, mais40kg, Prescricao, Dose, Vezes, Condicao),
             doente(pneumonia, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('a8'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(c1) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, _, mais40kg, Prescricao, Dose, Vezes, Condicao),
             doente(amigdalite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('c1'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(c2) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, _, menos6kg, Prescricao, Dose, Vezes, Condicao),
             doente(amigdalite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('c2'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(c3) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, menos3meses, _, Prescricao, Dose, Vezes, Condicao),
             doente(amigdalite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('c3'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(c4) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Condicao),
             doente(amigdalite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('c4'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(c5) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(amigdalite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('c5'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(c6) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(amigdalite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('c6'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(c7) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(amigdalite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('c7'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(c8) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(amigdalite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('c8'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(c9) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(amigdalite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('c9'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(d1) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, _, mais40kg, Prescricao, Dose, Vezes, Condicao),
             doente(otite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('d1'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(d2) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, _, menos6kg, Prescricao, Dose, Vezes, Condicao),
             doente(otite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('d2'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(d3) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, menos3meses, _, Prescricao, Dose, Vezes, Condicao),
             doente(otite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('d3'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(d4) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Condicao),
             doente(otite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('d4'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(d5) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(otite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('d5'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(d6) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(otite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('d6'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(d7) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(otite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('d7'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(d8) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(otite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('d8'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(d9) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(otite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('d9'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(e1) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(zona, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('e1'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(f1) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(alergiaAlimentar, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('f1'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(f2) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(alergiaAlimentar, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('f2'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(f3) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(alergiaAlimentar, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('f3'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(f4) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(alergiaAlimentar, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('f4'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(f5) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(alergiaAlimentar, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('f5'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(g1) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(alergiaRespiratoria, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('g1'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(g2) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(alergiaRespiratoria, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('g2'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(g3) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(alergiaRespiratoria, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('g3'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(g4) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(alergiaRespiratoria, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('g4'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(g5) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(alergiaRespiratoria, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('g5'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(h1) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, paragem, _, Prescricao, Dose, Vezes, Condicao),
             doente(bronquite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('h1'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(h2) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Condicao),
             doente(bronquite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('h2'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(h3) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(bronquite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('h3'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(h4) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(bronquite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('h4'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(h5) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(bronquite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('h5'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(h6) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(bronquite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('h6'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(h7) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(bronquite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('h7'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(i1) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, paragem, _, Prescricao, Dose, Vezes, Condicao),
             doente(enxaqueca, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('i1'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(i2) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(enxaqueca, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('i2'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(i3) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(enxaqueca, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('i3'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(i4) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(enxaqueca, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('i4'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(i5) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Condicao),
             doente(enxaqueca, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('i5'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(i6) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(enxaqueca, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('i6'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(i7) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(enxaqueca, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('i7'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(j1) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(gripe, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('j1'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(j2) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Condicao),
             doente(gripe, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('j2'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(j3) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(gripe, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('j3'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(j4) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(gripe, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('j4'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(j5) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Condicao),
            doente(gripe, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('j5'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(j6) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(gripe, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('j6'), write(':'), nl,
    imprimir_lista(Lista).  

imprimir_informacoes(l1) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(sinusite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('l1'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(l2) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(sinusite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('l2'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(l3) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(sinusite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('l3'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(l4) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(sinusite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('l4'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(l5) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Condicao),
             doente(sinusite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('l5'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(l6) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(sinusite, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('l6'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(m1) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, X, _, Prescricao, Dose, Vezes, Condicao),
             doente(conjuntiviteBacteriana, Doenca), X \= menos3meses),
            Lista), nl,
    write('Informacoes para o perfil '), write('m1'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(n1) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, _, mais40kg, Prescricao, Dose, Vezes, Condicao),
             doente(infecaoUrinaria, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('n1'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(n2) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(infecaoUrinaria, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('n2'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(n3) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Condicao),
             doente(infecaoUrinaria, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('n3'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(n4) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre1a4nos, _, Prescricao, Dose, Vezes, Condicao),
             doente(infecaoUrinaria, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('n4'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(n5) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Condicao),
             doente(infecaoUrinaria, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('n5'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(n6) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, menos3meses, _, Prescricao, Dose, Vezes, Condicao),
             doente(infecaoUrinaria, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('n6'), write(':'), nl,
    imprimir_lista(Lista).

imprimir_informacoes(n7) :-
    findall((Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao),
            (medicamento(Doenca, _, Tipo, Medicamento, _, menos6kg, Prescricao, Dose, Vezes, Condicao),
             doente(infecaoUrinaria, Doenca)),
            Lista), nl,
    write('Informacoes para o perfil '), write('n7'), write(':'), nl,
    imprimir_lista(Lista).


% Predicado para imprimir os elementos da lista
imprimir_lista([]).
imprimir_lista([(Doenca,Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) | Resto]) :-
    nl,
    write('Doenca: '), write(Doenca),nl,
    write('Tipo: '), write(Tipo),nl,
    write('Medicamento: '), write(Medicamento),nl,
    write('Prescricao: '), write(Prescricao),nl,
    write('Dose: '), write(Dose),nl,
    write('Vezes: '), write(Vezes),nl,
    write('Condicao: '), write(Condicao), nl,
    imprimir_lista(Resto).
