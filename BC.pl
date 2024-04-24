:- op( 800, fx, if).
:- op( 700, xfx, then).
:- op( 300, xfy, or).
:- op( 200, xfy, and).
:- dynamic medicamento/10.
:- dynamic doente/2.
:- dynamic doenca/7.


if tosse_expetoracao and dificuldade_respirar and 
(febre or arrepios_de_frio or dor_toracica or dor_cabeca or dor_muscular) and menos6kg
then a1.
if tosse_expetoracao and dificuldade_respirar and 
(febre or arrepios_de_frio or dor_toracica or dor_cabeca or dor_muscular) and entre3a12meses
then a2.
if tosse_expetoracao and dificuldade_respirar and 
(febre or arrepios_de_frio or dor_toracica or dor_cabeca or dor_muscular) and entre1a4anos
then a3.
if tosse_expetoracao and dificuldade_respirar and 
(febre or arrepios_de_frio or dor_toracica or dor_cabeca or dor_muscular) and entre5a9anos
then a4.
if tosse_expetoracao and dificuldade_respirar and 
(febre or arrepios_de_frio or dor_toracica or dor_cabeca or dor_muscular) and entre10a13anos
then a5.
if tosse_expetoracao and dificuldade_respirar and 
(febre or arrepios_de_frio or dor_toracica or dor_cabeca or dor_muscular) and entre14a17anos
then a6.
if tosse_expetoracao and dificuldade_respirar and 
(febre or arrepios_de_frio or dor_toracica or dor_cabeca or dor_muscular) and mais18anos
then a7.
if tosse_expetoracao and dificuldade_respirar and 
(febre or arrepios_de_frio or dor_toracica or dor_cabeca or dor_muscular) and mais40kg
then a8.

if placas_de_uma_substancia_cremosa_na_boca and aparecimento_aftas_lingua_ou_bochecha and 
(sensacao_algodao_boca or camada_esbranquicada_na_boca) 
then b1.
if placas_de_uma_substancia_cremosa_na_boca and aparecimento_aftas_lingua_ou_bochecha and 
(sensacao_algodao_boca or camada_esbranquicada_na_boca) and mais18anos
then b2.

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

if dor_ouvido and (dificuldade_em_dormir or choro_superior_ao_normal or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and mais40kg
then d1.
if dor_ouvido and (dificuldade_em_dormir or choro_superior_ao_normal or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and menos6kg
then d2.
if dor_ouvido and (dificuldade_em_dormir or choro_superior_ao_normal or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and menos3meses
then d3.
if dor_ouvido and (dificuldade_em_dormir or choro_superior_ao_normal or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and entre3a12meses
then d4.
if dor_ouvido and (dificuldade_em_dormir or choro_superior_ao_normal or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and entre1a4anos
then d5.
if dor_ouvido and (dificuldade_em_dormir or choro_superior_ao_normal or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and entre5a9anos
then d6.
if dor_ouvido and (dificuldade_em_dormir or choro_superior_ao_normal or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and entre10a13anos
then d7.
if dor_ouvido and (dificuldade_em_dormir or choro_superior_ao_normal or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and entre14a17anos
then d8.
if dor_ouvido and (dificuldade_em_dormir or choro_superior_ao_normal or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) and mais18anos
then d9.

if dor_cabeca and febre and (erupcoes_cutaneas or calafrios or nauseas or diarreia or dificuldade_em_urinar or dores_formigueiros_picadas_pele) and mais18anos
then e1.

if coceira_na_boca and (coceira_na_pele or dor_abdominal or diarreia or nauseas or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and entre1a4anos
then f1.
if coceira_na_boca and (coceira_na_pele or dor_abdominal or diarreia or nauseas or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and entre5a9anos
then f2.
if coceira_na_boca and (coceira_na_pele or dor_abdominal or diarreia or nauseas or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and entre10a13anos
then f3.
if coceira_na_boca and (coceira_na_pele or dor_abdominal or diarreia or nauseas or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and entre14a17anos
then f4.
if coceira_na_boca and (coceira_na_pele or dor_abdominal or diarreia or nauseas or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and mais18anos
then f5.

if nariz_entupido and espirros_constantes and (coceira_nariz_olhos_garganta or nariz_vermelho or tosse_seca or dificuldade_respirar or olhos_vermelhos or dor_cabeca) and entre1a4anos
then g1.
if nariz_entupido and espirros_constantes and (coceira_nariz_olhos_garganta or nariz_vermelho or tosse_seca or dificuldade_respirar or olhos_vermelhos or dor_cabeca) and entre5a9anos
then g2.
if nariz_entupido and espirros_constantes and (coceira_nariz_olhos_garganta or nariz_vermelho or tosse_seca or dificuldade_respirar or olhos_vermelhos or dor_cabeca) and entre10a13anos
then g3.
if nariz_entupido and espirros_constantes and (coceira_nariz_olhos_garganta or nariz_vermelho or tosse_seca or dificuldade_respirar or olhos_vermelhos or dor_cabeca) and entre14a17anos
then g4.
if nariz_entupido and espirros_constantes and (coceira_nariz_olhos_garganta or nariz_vermelho or tosse_seca or dificuldade_respirar or olhos_vermelhos or dor_cabeca) and mais18anos
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

if dor_cabeca and (sensibilidade_ruido or sensibilidade_luz) and mal_estar_geral and nauseas and (vomitos or tonturas or formigamento_corpo) 
then i1.
if dor_cabeca and (sensibilidade_ruido or sensibilidade_luz) and mal_estar_geral and nauseas and (vomitos or tonturas or formigamento_corpo) and entre5a9anos
then i2.
if dor_cabeca and (sensibilidade_ruido or sensibilidade_luz) and mal_estar_geral and nauseas and (vomitos or tonturas or formigamento_corpo) and entre10a13anos
then i3.
if dor_cabeca and (sensibilidade_ruido or sensibilidade_luz) and mal_estar_geral and nauseas and (vomitos or tonturas or formigamento_corpo) and entre14a17anos
then i4.
if dor_cabeca and (sensibilidade_ruido or sensibilidade_luz) and mal_estar_geral and nauseas and (vomitos or tonturas or formigamento_corpo) and entre3a12meses
then i5.
if dor_cabeca and (sensibilidade_ruido or sensibilidade_luz) and mal_estar_geral and nauseas and (vomitos or tonturas or formigamento_corpo) and entre1a4anos
then i6.
if dor_cabeca and (sensibilidade_ruido or sensibilidade_luz) and mal_estar_geral and nauseas and (vomitos or tonturas or formigamento_corpo) and mais18anos
then i7.

if febre and mal_estar_geral and dor_cabeca and (espirros or tosse_seca or nariz_entupido or dor_muscular or dor_garganta) and mais18anos
then j1.
if febre and mal_estar_geral and dor_cabeca and (espirros or tosse_seca or nariz_entupido or dor_muscular or dor_garganta) and entre3a12meses
then j2.
if febre and mal_estar_geral and dor_cabeca and (espirros or tosse_seca or nariz_entupido or dor_muscular or dor_garganta) and entre1a4anos
then j3.
if febre and mal_estar_geral and dor_cabeca and (espirros or tosse_seca or nariz_entupido or dor_muscular or dor_garganta) and entre5a9anos
then j4.
if febre and mal_estar_geral and dor_cabeca and (espirros or tosse_seca or nariz_entupido or dor_muscular or dor_garganta) and entre10a13anos
then j5.
if febre and mal_estar_geral and dor_cabeca and (espirros or tosse_seca or nariz_entupido or dor_muscular or dor_garganta) and entre14a17anos
then j6.

if dor_articulacao and atrofia_muscular and vermelhidao_articulacao and (inchaco_articulacao or deformacao_articulacao) 
then k1.
if dor_articulacao and atrofia_muscular and vermelhidao_articulacao and (inchaco_articulacao or deformacao_articulacao) and entre14a17anos
then k2.
if dor_articulacao and atrofia_muscular and vermelhidao_articulacao and (inchaco_articulacao or deformacao_articulacao) and mais18anos
then k3.
if dor_articulacao and atrofia_muscular and vermelhidao_articulacao and (inchaco_articulacao or deformacao_articulacao) and entre3a12meses
then k4.
if dor_articulacao and atrofia_muscular and vermelhidao_articulacao and (inchaco_articulacao or deformacao_articulacao) and entre1a4anos
then k5.
if dor_articulacao and atrofia_muscular and vermelhidao_articulacao and (inchaco_articulacao or deformacao_articulacao) and entre5a9anos
then k6.
if dor_articulacao and atrofia_muscular and vermelhidao_articulacao and (inchaco_articulacao or deformacao_articulacao) and entre10a13anos
then k7.

if congestao_nasal and corrimento_nasal and (pressao_facial or perda_olfato or febre or tosse_expetoracao or tosse_seca or fadiga) and entre5a9anos
then l1.
if congestao_nasal and corrimento_nasal and (pressao_facial or perda_olfato or febre or tosse_expetoracao or tosse_seca or fadiga) and entre10a13anos
then l2.
if congestao_nasal and corrimento_nasal and (pressao_facial or perda_olfato or febre or tosse_expetoracao or tosse_seca or fadiga) and entre14a17anos
then l3.
if congestao_nasal and corrimento_nasal and (pressao_facial or perda_olfato or febre or tosse_expetoracao or tosse_seca or fadiga) and mais18anos
then l4.
if congestao_nasal and corrimento_nasal and (pressao_facial or perda_olfato or febre or tosse_expetoracao or tosse_seca or fadiga) and entre3a12meses
then l5.
if congestao_nasal and corrimento_nasal and (pressao_facial or perda_olfato or febre or tosse_expetoracao or tosse_seca or fadiga) and entre1a4anos
then l6.

if olhos_vermelhos and comichao and (laqueacao or sensacao_areia or sensacao_corpo_estranho or inchaco_palpebra or sensibilidade_luz) and not(menos3meses)
then m1.

if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas and vomitos) and mais40kg
then n1.
if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas and vomitos) and entre10a13anos
then n2.
if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas and vomitos) and entre5a9anos
then n3.
if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas and vomitos) and entre1a4nos
then n4.
if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas and vomitos) and entre3a12meses
then n5.
if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas and vomitos) and menos3meses
then n6.
if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas and vomitos) and menos6kg
then n7.


doenca(a1, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(pneumonia, _, T, M, _, menos6kg, P, D, V, C), doente(pneumonia, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(a2, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(pneumonia, _, T, M, entre3a12meses, _, P, D, V, C), doente(pneumonia, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(a3, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(pneumonia, _, T, M, entre1a4anos, _, P, D, V, C), doente(pneumonia, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(a4, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(pneumonia, _, T, M, entre5a9anos, _, P, D, V, C), doente(pneumonia, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(a5, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(pneumonia, _, T, M, entre10a13anos, _, P, D, V, C), doente(pneumonia, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(a6, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(pneumonia, _, T, M, entre14a17anos, _, P, D, V, C), doente(pneumonia, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(a7, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(pneumonia, _, T, M, mais18anos, _, P, D, V, C), doente(pneumonia, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(a8, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(pneumonia, _, T, M, _, mais40kg, P, D, V, C), doente(pneumonia, Doenca), append([Doenca, T, M, P, D, V, C], X).

doenca(b1, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(candidiaseOral, _, T, M, _, _, P, D, V, C), doente(candidiaseOral, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(b2, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(candidiaseOral, _, T, M, mais18anos, _, P, D, V, C), doente(candidiaseOral, Doenca), append([Doenca, T, M, P, D, V, C], X).   

doenca(c1, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(amigdalite, _, T, M, _, mais40kg, P, D, V, C), doente(amigdalite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(c2, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(amigdalite, _, T, M, _, menos6kg, P, D, V, C), doente(amigdalite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(c3, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(amigdalite, _, T, M, menos3meses, _, P, D, V, C), doente(amigdalite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(c4, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(amigdalite, _, T, M, entre3a12meses, _, P, D, V, C), doente(amigdalite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(c5, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(amigdalite, _, T, M, entre1a4anos, _, P, D, V, C), doente(amigdalite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(c6, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(amigdalite, _, T, M, entre5a9anos, _, P, D, V, C), doente(amigdalite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(c7, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(amigdalite, _, T, M, entre10a13anos, _, P, D, V, C), doente(amigdalite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(c8, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(amigdalite, _, T, M, entre14a17anos, _, P, D, V, C), doente(amigdalite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(c9, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(amigdalite, _, T, M, mais18anos, _, P, D, V, C), doente(amigdalite, Doenca), append([Doenca, T, M, P, D, V, C], X).

doenca(d1, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(otite, _, T, M, _, mais40kg, P, D, V, C), doente(otite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(d2, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(otite, _, T, M, _, menos6kg, P, D, V, C), doente(otite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(d3, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(otite, _, T, M, menos3meses, _, P, D, V, C), doente(otite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(d4, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(otite, _, T, M, entre3a12meses, _, P, D, V, C), doente(otite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(d5, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(otite, _, T, M, entre1a4anos, _, P, D, V, C), doente(otite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(d6, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(otite, _, T, M, entre5a9anos, _, P, D, V, C), doente(otite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(d7, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(otite, _, T, M, entre10a13anos, _, P, D, V, C), doente(otite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(d8, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(otite, _, T, M, entre14a17anos, _, P, D, V, C), doente(otite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(d9, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(otite, _, T, M, mais18anos, _, P, D, V, C), doente(otite, Doenca), append([Doenca, T, M, P, D, V, C], X).

doenca(e1, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(zona, _, T, M, mais18anos, _, P, D, V, C), doente(zona, Doenca), append([Doenca, T, M, P, D, V, C], X).

doenca(f1, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(alergiaAlimentar, _, T, M, entre1a4anos, _, P, D, V, C), doente(alergiaAlimentar, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(f2, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(alergiaAlimentar, _, T, M, entre5a9anos, _, P, D, V, C), doente(alergiaAlimentar, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(f3, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(alergiaAlimentar, _, T, M, entre10a13anos, _, P, D, V, C), doente(alergiaAlimentar, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(f4, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(alergiaAlimentar, _, T, M, entre14a17anos, _, P, D, V, C), doente(alergiaAlimentar, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(f5, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(alergiaAlimentar, _, T, M, mais18anos, _, P, D, V, C), doente(alergiaAlimentar, Doenca), append([Doenca, T, M, P, D, V, C], X).

doenca(g1, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(alergiaRespiratoria, _, T, M, entre1a4anos, _, P, D, V, C), doente(alergiaRespiratoria, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(g2, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(alergiaRespiratoria, _, T, M, entre5a9anos, _, P, D, V, C), doente(alergiaRespiratoria, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(g3, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(alergiaRespiratoria, _, T, M, entre10a13anos, _, P, D, V, C), doente(alergiaRespiratoria, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(g4, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(alergiaRespiratoria, _, T, M, entre14a17anos, _, P, D, V, C), doente(alergiaRespiratoria, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(g5, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(alergiaRespiratoria, _, T, M, mais18anos, _, P, D, V, C), doente(alergiaRespiratoria, Doenca), append([Doenca, T, M, P, D, V, C], X).

doenca(h1, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(bronquite, _, T, M, _, _, P, D, V, C), doente(bronquite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(h2, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(bronquite, _, T, M, entre3a12meses, _, P, D, V, C), doente(bronquite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(h3, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(bronquite, _, T, M, entre1a4anos, _, P, D, V, C), doente(bronquite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(h4, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(bronquite, _, T, M, entre5a9anos, _, P, D, V, C), doente(bronquite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(h5, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(bronquite, _, T, M, entre10a13anos, _, P, D, V, C), doente(bronquite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(h6, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(bronquite, _, T, M, entre14a17anos, _, P, D, V, C), doente(bronquite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(h7, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(bronquite, _, T, M, mais18anos, _, P, D, V, C), doente(bronquite, Doenca), append([Doenca, T, M, P, D, V, C], X).

doenca(i1, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(enxaqueca, _, T, M, _, _, P, D, V, C), doente(enxaqueca, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(i2, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(enxaqueca, _, T, M, entre5a9anos, _, P, D, V, C), doente(enxaqueca, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(i3, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(enxaqueca, _, T, M, entre10a13anos, _, P, D, V, C), doente(enxaqueca, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(i4, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(enxaqueca, _, T, M, entre14a17anos, _, P, D, V, C), doente(enxaqueca, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(i5, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(enxaqueca, _, T, M, entre3a12meses, _, P, D, V, C), doente(enxaqueca, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(i6, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(enxaqueca, _, T, M, entre1a4anos, _, P, D, V, C), doente(enxaqueca, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(i7, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(enxaqueca, _, T, M, mais18anos, _, P, D, V, C), doente(enxaqueca, Doenca), append([Doenca, T, M, P, D, V, C], X).

doenca(j1, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(gripe, _, T, M, mais18anos, _, P, D, V, C), doente(gripe, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(j2, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(gripe, _, T, M, entre3a12meses, _, P, D, V, C), doente(gripe, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(j3, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(gripe, _, T, M, entre1a4anos, _, P, D, V, C), doente(gripe, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(j4, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(gripe, _, T, M, entre5a9anos, _, P, D, V, C), doente(gripe, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(j5, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(gripe, _, T, M, entre10a13anos, _, P, D, V, C), doente(gripe, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(j6, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(gripe, _, T, M, entre14a17anos, _, P, D, V, C), doente(gripe, Doenca), append([Doenca, T, M, P, D, V, C], X).

doenca(k1, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(artrite, _, T, M, _, _, P, D, V, C), doente(artrite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(k2, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(artrite, _, T, M, entre14a17anos, _, P, D, V, C), doente(artrite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(k3, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(artrite, _, T, M, mais18anos, _, P, D, V, C), doente(artrite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(k4, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(artrite, _, T, M, entre3a12meses, _, P, D, V, C), doente(artrite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(k5, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(artrite, _, T, M, entre1a4anos, _, P, D, V, C), doente(artrite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(k6, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(artrite, _, T, M, entre5a9anos, _, P, D, V, C), doente(artrite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(k7, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(artrite, _, T, M, entre10a13anos, _, P, D, V, C), doente(artrite, Doenca), append([Doenca, T, M, P, D, V, C], X).

doenca(l1, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(sinusite, _, T, M, entre5a9anos, _, P, D, V, C), doente(sinusite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(l2, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(sinusite, _, T, M, entre10a13anos, _, P, D, V, C), doente(sinusite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(l3, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(sinusite, _, T, M, entre14a17anos, _, P, D, V, C), doente(sinusite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(l4, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(sinusite, _, T, M, mais18anos, _, P, D, V, C), doente(sinusite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(l5, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(sinusite, _, T, M, entre3a12meses, _, P, D, V, C), doente(sinusite, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(l6, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(sinusite, _, T, M, entre1a4anos, _, P, D, V, C), doente(sinusite, Doenca), append([Doenca, T, M, P, D, V, C], X).

doenca(m1, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(conjuntiviteBacteriana, _, T, M, _, _, P, D, V, C), doente(conjuntiviteBacteriana, Doenca), append([Doenca, T, M, P, D, V, C], X).

doenca(n1, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(infecaoUrinaria, _, T, M, _, mais40kg, P, D, V, C), doente(infecaoUrinaria, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(n2, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(infecaoUrinaria, _, T, M, entre10a13anos, _, P, D, V, C), doente(infecaoUrinaria, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(n3, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(infecaoUrinaria, _, T, M, entre5a9anos, _, P, D, V, C), doente(infecaoUrinaria, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(n4, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(infecaoUrinaria, _, T, M, entre1a4nos, _, P, D, V, C), doente(infecaoUrinaria, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(n5, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(infecaoUrinaria, _, T, M, entre3a12meses, _, P, D, V, C), doente(infecaoUrinaria, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(n6, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(infecaoUrinaria, _, T, M, menos3meses, _, P, D, V, C), doente(infecaoUrinaria, Doenca), append([Doenca, T, M, P, D, V, C], X).
doenca(n7, Doenca, Tipo, Medicamento, Prescricao, Dose, Vezes, Condicao) :- medicamento(infecaoUrinaria, _, T, M, _, menos6kg, P, D, V, C), doente(infecaoUrinaria, Doenca), append([Doenca, T, M, P, D, V, C], X).
