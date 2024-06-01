if dificuldade_respirar and menos6kg
then a1:0.9.
if dificuldade_respirar and entre3a12meses
then a2:0.9.
if dificuldade_respirar and entre1a4anos
then a3:0.9.
if dificuldade_respirar and entre5a9anos
then a4:0.9.
if dificuldade_respirar and entre10a13anos
then a5:0.9.
if dificuldade_respirar and entre14a17anos
then a6:0.9.
if dificuldade_respirar and mais18anos
then a7:0.9.
if dificuldade_respirar and mais40kg
then a8:0.9.

if (mal_estar_geral or dor_garganta) and mais40kg
then c1:0.9.
if (mal_estar_geral or dor_garganta) and menos6kg
then c2:0.9.
if (mal_estar_geral or dor_garganta)  and menos3meses
then c3:0.9.
if (mal_estar_geral or dor_garganta)  and entre3a12meses
then c4:0.9.
if (mal_estar_geral or dor_garganta)  and entre1a4anos
then c5:0.9.
if (mal_estar_geral or dor_garganta)  and entre5a9anos
then c6:0.9.
if (mal_estar_geral or dor_garganta)  and entre10a13anos
then c7:0.9.
if (mal_estar_geral or dor_garganta)  and entre14a17anos
then c8:0.9.
if (mal_estar_geral or dor_garganta)  and mais18anos
then c9:0.9.

if dor_ouvido and mais40kg
then d1:0.9.
if dor_ouvido and menos6kg
then d2:0.9.
if dor_ouvido and menos3meses
then d3:0.9.
if dor_ouvido and entre3a12meses
then d4:0.9.
if dor_ouvido and entre1a4anos
then d5:0.9.
if dor_ouvido and entre5a9anos
then d6:0.9.
if dor_ouvido and entre10a13anos
then d7:0.9.
if dor_ouvido and entre14a17anos
then d8:0.9.
if dor_ouvido and mais18anos
then d9:0.9.

if dor_cabeca and febre and mais18anos
then e1:0.9.

if coceira_na_boca and entre1a4anos
then f1:0.9.
if coceira_na_boca and entre5a9anos
then f2:0.9.
if coceira_na_boca and entre10a13anos
then f3:0.9.
if coceira_na_boca and entre14a17anos
then f4:0.9.
if coceira_na_boca and mais18anos
then f5:0.9.

if espirros_constantes and entre1a4anos
then g1:0.9.
if espirros_constantes and entre5a9anos
then g2:0.9.
if espirros_constantes and entre10a13anos
then g3:0.9.
if espirros_constantes and entre14a17anos
then g4:0.9.
if espirros_constantes and mais18anos
then g5:0.9.

if dificuldade_respirar and (fadiga or tosse_seca)
then h1:0.9.
if dificuldade_respirar and (fadiga or tosse_seca) and entre3a12meses
then h2:0.9.
if dificuldade_respirar and (fadiga or tosse_seca) and entre1a4anos
then h3:0.9.
if dificuldade_respirar and (fadiga or tosse_seca) and entre5a9anos
then h4:0.9.
if dificuldade_respirar and (fadiga or tosse_seca) and entre10a13anos
then h5:0.9.
if dificuldade_respirar and (fadiga or tosse_seca) and entre14a17anos
then h6:0.9.
if dificuldade_respirar and (fadiga or tosse_seca) and mais18anos
then h7:0.9.

if dor_cabeca and mal_estar_geral then i1:0.9.
if dor_cabeca and mal_estar_geral and entre5a9anos
then i2:0.9.
if dor_cabeca and mal_estar_geral and entre10a13anos
then i3:0.9.
if dor_cabeca and mal_estar_geral and entre14a17anos
then i4:0.9.
if dor_cabeca and mal_estar_geral and entre3a12meses
then i5:0.9.
if dor_cabeca and mal_estar_geral and entre1a4anos
then i6:0.9.
if dor_cabeca and mal_estar_geral and mais18anos
then i7:0.9.

if febre and mal_estar_geral and dor_cabeca and mais18anos
then j1:0.9.
if febre and mal_estar_geral and dor_cabeca and entre3a12meses
then j2:0.9.
if febre and mal_estar_geral and dor_cabeca and entre1a4anos
then j3:0.9.
if febre and mal_estar_geral and dor_cabeca and entre5a9anos
then j4:0.9.
if febre and mal_estar_geral and dor_cabeca and entre10a13anos
then j5:0.9.
if febre and mal_estar_geral and dor_cabeca and entre14a17anos
then j6:0.9.

if corrimento_nasal and entre5a9anos
then l1:0.9.
if corrimento_nasal and entre10a13anos
then l2:0.9.
if corrimento_nasal and entre14a17anos
then l3:0.9.
if corrimento_nasal and mais18anos
then l4:0.9.
if corrimento_nasal and entre3a12meses
then l5:0.9.
if corrimento_nasal and entre1a4anos
then l6:0.9.

if inchaco_palpebra then m1:0.9.

if vontade_urgente_e_frequente_de_urinar and mais40kg
then n1:0.9.
if vontade_urgente_e_frequente_de_urinar and entre10a13anos
then n2:0.9.
if vontade_urgente_e_frequente_de_urinar and entre5a9anos
then n3:0.9.
if vontade_urgente_e_frequente_de_urinar and entre1a4nos
then n4:0.9.
if vontade_urgente_e_frequente_de_urinar and entre3a12meses
then n5:0.9.
if vontade_urgente_e_frequente_de_urinar and menos3meses
then n6:0.9.
if vontade_urgente_e_frequente_de_urinar and menos6kg
then n7:0.9.


% Predicado para imprimir uma lista com informações para uma determinada doença
imprimir_informacoes(a1, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(pneumonia, _, Tipo, Medicamento, _, menos6kg, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('a1 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,pneumonia).

imprimir_informacoes(a2, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(pneumonia, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('a2 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,pneumonia).

imprimir_informacoes(a3, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(pneumonia, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('a3 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,pneumonia).

imprimir_informacoes(a4, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(pneumonia, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('a4 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,pneumonia).

imprimir_informacoes(a5, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(pneumonia, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('a5 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,pneumonia).

imprimir_informacoes(a6, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(pneumonia, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('a6 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,pneumonia).

imprimir_informacoes(a7, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(pneumonia, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('a7 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,pneumonia).

imprimir_informacoes(a8, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(pneumonia, _, Tipo, Medicamento, _, mais40kg, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('a8 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,pneumonia).

imprimir_informacoes(c1, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(amigdalite, _, Tipo, Medicamento, _, mais40kg, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('c1 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,amigdalite).

imprimir_informacoes(c2, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(amigdalite, _, Tipo, Medicamento, _, menos6kg, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('c2 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,amigdalite).

imprimir_informacoes(c3, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(amigdalite, _, Tipo, Medicamento, menos3meses, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('c3 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,amigdalite).

imprimir_informacoes(c4, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(amigdalite, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('c4 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,amigdalite).

imprimir_informacoes(c5, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(amigdalite, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('c5 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,amigdalite).

imprimir_informacoes(c6, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(amigdalite, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('c6 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,amigdalite).

imprimir_informacoes(c7, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(amigdalite, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('c7 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,amigdalite).

imprimir_informacoes(c8, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(amigdalite, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('c8 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,amigdalite).

imprimir_informacoes(c9, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(amigdalite, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('c9 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,amigdalite).

imprimir_informacoes(d1, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(otite, _, Tipo, Medicamento, _, mais40kg, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('d1 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista, otite).

imprimir_informacoes(d2, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(otite, _, Tipo, Medicamento, _, menos6kg, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                        Lista), nl,
    write('Informacoes para o perfil '), write('d2 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,otite).

imprimir_informacoes(d3, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(otite, _, Tipo, Medicamento, menos3meses, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('d3 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,otite).

imprimir_informacoes(d4, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(otite, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('d4 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,otite).

imprimir_informacoes(d5, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(otite, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('d5 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,otite).

imprimir_informacoes(d6, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(otite, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('d6 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,otite).

imprimir_informacoes(d7, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(otite, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('d7 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,otite).

imprimir_informacoes(d8, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(otite, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('d8 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,otite).

imprimir_informacoes(d9, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(otite, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('d9 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,otite).

imprimir_informacoes(e1, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(zona, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('e1 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,zona).

imprimir_informacoes(f1, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(alergiaAlimentar, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('f1 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,alergiaAlimentar).

imprimir_informacoes(f2, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(alergiaAlimentar, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('f2 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,alergiaAlimentar).

imprimir_informacoes(f3, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(alergiaAlimentar, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('f3 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,alergiaAlimentar).

imprimir_informacoes(f4, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(alergiaAlimentar, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('f4 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,alergiaAlimentar).

imprimir_informacoes(f5, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(alergiaAlimentar, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),

            Lista), nl,
    write('Informacoes para o perfil '), write('f5 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,alergiaAlimentar).

imprimir_informacoes(g1, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(alergiaRespiratoria, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('g1 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,alergiaRespiratoria).

imprimir_informacoes(g2, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(alergiaRespiratoria, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('g2 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,alergiaRespiratoria).

imprimir_informacoes(g3, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(alergiaRespiratoria, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('g3 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,alergiaRespiratoria).

imprimir_informacoes(g4, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(alergiaRespiratoria, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('g4 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,alergiaRespiratoria).

imprimir_informacoes(g5, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(alergiaRespiratoria, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('g5 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,alergiaRespiratoria).

imprimir_informacoes(h1, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(bronquite, _, Tipo, Medicamento, paragem, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('h1 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,bronquite).

imprimir_informacoes(h2, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(bronquite, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('h2 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,bronquite).

imprimir_informacoes(h3, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(bronquite, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                       Lista), nl,
    write('Informacoes para o perfil '), write('h3 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,bronquite).

imprimir_informacoes(h4, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(bronquite, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('h4 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,bronquite).

imprimir_informacoes(h5, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(bronquite, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('h5 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,bronquite).

imprimir_informacoes(h6, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(bronquite, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                        Lista), nl,
    write('Informacoes para o perfil '), write('h6 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,bronquite).

imprimir_informacoes(h7, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(bronquite, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('h7 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,bronquite).

imprimir_informacoes(i1, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(enxaqueca, _, Tipo, Medicamento,paragem, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('i1 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,enxaqueca).

imprimir_informacoes(i2, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(enxaqueca, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('i2 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,enxaqueca).

imprimir_informacoes(i3, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(enxaqueca, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('i3 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,enxaqueca).

imprimir_informacoes(i4, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(enxaqueca, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),

            Lista), nl,
    write('Informacoes para o perfil '), write('i4 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,enxaqueca).

imprimir_informacoes(i5, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(enxaqueca, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                        Lista), nl,
    write('Informacoes para o perfil '), write('i5 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,enxaqueca).

imprimir_informacoes(i6, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(enxaqueca, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                        Lista), nl,
    write('Informacoes para o perfil '), write('i6 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,enxaqueca).

imprimir_informacoes(i7, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(enxaqueca, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('i7 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,enxaqueca).

imprimir_informacoes(j1, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(gripe, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('j1 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,gripe).

imprimir_informacoes(j2, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(gripe, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('j2 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,gripe).

imprimir_informacoes(j3, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(gripe, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('j3 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,gripe).

imprimir_informacoes(j4, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(gripe, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('j4 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,gripe).

imprimir_informacoes(j5, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(gripe, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                        Lista), nl,
    write('Informacoes para o perfil '), write('j5 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,gripe).

imprimir_informacoes(j6, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(gripe, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('j6 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,gripe).

imprimir_informacoes(l1, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(sinusite, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('l1 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,sinusite).

imprimir_informacoes(l2, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(sinusite, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('l2 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,sinusite).

imprimir_informacoes(l3, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(sinusite, _, Tipo, Medicamento, entre14a17anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('l3 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,sinusite).

imprimir_informacoes(l4, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(sinusite, _, Tipo, Medicamento, mais18anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('l4 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,sinusite).

imprimir_informacoes(l5, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(sinusite, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('l5 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,sinusite).

imprimir_informacoes(l6, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(sinusite, _, Tipo, Medicamento, entre1a4anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('l6 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,sinusite).

imprimir_informacoes(m1, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(conjuntiviteBacteriana, _, Tipo, Medicamento, X, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
             X \= menos3meses),
            Lista), nl,
    write('Informacoes para o perfil '), write('m1 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,conjuntiviteBacteriana).

imprimir_informacoes(n1, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(infecaoUrinaria, _, Tipo, Medicamento, _, mais40kg, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('n1 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,infecaoUrinaria).

imprimir_informacoes(n2, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(infecaoUrinaria, _, Tipo, Medicamento, entre10a13anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),

            Lista), nl,
    write('Informacoes para o perfil '), write('n2 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,infecaoUrinaria).

imprimir_informacoes(n3, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(infecaoUrinaria, _, Tipo, Medicamento, entre5a9anos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('n3 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,infecaoUrinaria).

imprimir_informacoes(n4, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(infecaoUrinaria, _, Tipo, Medicamento, entre1a4nos, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('n4 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,infecaoUrinaria).

imprimir_informacoes(n5, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(infecaoUrinaria, _, Tipo, Medicamento, entre3a12meses, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),

            Lista), nl,
    write('Informacoes para o perfil '), write('n5 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,infecaoUrinaria).

imprimir_informacoes(n6, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(infecaoUrinaria, _, Tipo, Medicamento, menos3meses, _, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                         Lista), nl,
    write('Informacoes para o perfil '), write('n6 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,infecaoUrinaria).

imprimir_informacoes(n7, Cert) :-
    findall((Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes),
            (medicamento(infecaoUrinaria, _, Tipo, Medicamento, _, menos6kg, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes)),
                        Lista), nl,
    write('Informacoes para o perfil '), write('n7 ('), Prob is Cert*100, write(Prob), write('%) :'), nl,
    imprimir_lista(Lista,infecaoUrinaria).


% Predicado para imprimir os elementos da lista
imprimir_lista([],_).
imprimir_lista([(Tipo, Medicamento, Prescricao, Dose, Vezes, Indicacoes, Contra_indicacoes) | Resto],Doenca) :-
    nl,
    write('--------------------------------'),nl,
    write('Doenca: '), write(Doenca),nl,
    write('--------------------------------'),nl,
    write('Tipo: '), write(Tipo),nl,
    write('Medicamento: '), write(Medicamento),nl,
    write('Prescricao: '), write(Prescricao),nl,
    write('Dose: '), write(Dose),nl,
    write('Vezes: '), write(Vezes),nl,
    write('Indicacoes: '), write(Indicacoes),nl,
    write('Contra Indicacoes: '), write(Contra_indicacoes), nl,
    imprimir_lista(Resto, Doenca).
