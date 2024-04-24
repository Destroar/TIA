:- op( 800, fx, if).
:- op( 700, xfx, then).
:- op( 300, xfy, or).
:- op( 200, xfy, and).
:- dynamic medicamento/10.

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

if coceira_na_boca and (coceira_na_pele or dor_abdominal or diarreia or enjoos or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and entre1a4anos
then f1.
if coceira_na_boca and (coceira_na_pele or dor_abdominal or diarreia or enjoos or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and entre5a9anos
then f2.
if coceira_na_boca and (coceira_na_pele or dor_abdominal or diarreia or enjoos or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and entre10a13anos
then f3.
if coceira_na_boca and (coceira_na_pele or dor_abdominal or diarreia or enjoos or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and entre14a17anos
then f4.
if coceira_na_boca and (coceira_na_pele or dor_abdominal or diarreia or enjoos or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) and mais18anos
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


doenca(a1, X) :- medicamento(pneumonia, _, _, X, _, menos6kg, _, _, _, _).
doenca(a2, X) :- medicamento(pneumonia, _, _, X, entre3a12meses, _, _, _, _, _).
doenca(a3, X) :- medicamento(pneumonia, _, _, X, entre1a4anos, _, _, _, _, _).
doenca(a4, X) :- medicamento(pneumonia, _, _, X, entre5a9anos, _, _, _, _, _).
doenca(a5, X) :- medicamento(pneumonia, _, _, X, entre10a13anos, _, _, _, _, _).
doenca(a6, X) :- medicamento(pneumonia, _, _, X, entre14a17anos, _, _, _, _, _).
doenca(a7, X) :- medicamento(pneumonia, _, _, X, mais18anos, _, _, _, _, _).
doenca(a8, X) :- medicamento(pneumonia, _, _, X, _, mais40kg, _, _, _, _).

doenca(b1, X) :- medicamento(candidiaseOral, _, _, X, _, _, _, _, _, _).
doenca(b2, X) :- medicamento(candidiaseOral, _, _, X, mais18anos, _, _, _, _, _).

doenca(c1, X) :- medicamento(amigdalite, _, _, X, _, mais40kg, _, _, _, _).
doenca(c2, X) :- medicamento(amigdalite, _, _, X, _, menos6kg, _, _, _, _).
doenca(c3, X) :- medicamento(amigdalite, _, _, X, menos3meses, _, _, _, _, _).
doenca(c4, X) :- medicamento(amigdalite, _, _, X, entre3a12meses, _, _, _, _, _).
doenca(c5, X) :- medicamento(amigdalite, _, _, X, entre1a4anos, _, _, _, _, _).
doenca(c6, X) :- medicamento(amigdalite, _, _, X, entre5a9anos, _, _, _, _, _).
doenca(c7, X) :- medicamento(amigdalite, _, _, X, entre10a13anos, _, _, _, _, _).
doenca(c8, X) :- medicamento(amigdalite, _, _, X, entre14a17anos, _, _, _, _, _).
doenca(c9, X) :- medicamento(amigdalite, _, _, X, mais18anos, _, _, _, _, _).

doenca(d1, X) :- medicamento(otite, _, _, X, _, mais40kg, _, _, _, _).
doenca(d2, X) :- medicamento(otite, _, _, X, _, menos6kg, _, _, _, _).
doenca(d3, X) :- medicamento(otite, _, _, X, menos3meses, _, _, _, _, _).
doenca(d4, X) :- medicamento(otite, _, _, X, entre3a12meses, _, _, _, _, _).
doenca(d5, X) :- medicamento(otite, _, _, X, entre1a4anos, _, _, _, _, _).
doenca(d6, X) :- medicamento(otite, _, _, X, entre5a9anos, _, _, _, _, _).
doenca(d7, X) :- medicamento(otite, _, _, X, entre10a13anos, _, _, _, _, _).
doenca(d8, X) :- medicamento(otite, _, _, X, entre14a17anos, _, _, _, _, _).
doenca(d9, X) :- medicamento(otite, _, _, X, mais18anos, _, _, _, _, _).

doenca(e1, X) :- medicamento(zona, _, _, X, mais18anos, _, _, _, _, _).

doenca(f1, X) :- medicamento(alergiaAlimentar, _, _, X, entre1a4anos, _, _, _, _, _).
doenca(f2, X) :- medicamento(alergiaAlimentar, _, _, X, entre5a9anos, _, _, _, _, _).
doenca(f3, X) :- medicamento(alergiaAlimentar, _, _, X, entre10a13anos, _, _, _, _, _).
doenca(f4, X) :- medicamento(alergiaAlimentar, _, _, X, entre14a17anos, _, _, _, _, _).
doenca(f5, X) :- medicamento(alergiaAlimentar, _, _, X, mais18anos, _, _, _, _, _).

doenca(g1, X) :- medicamento(alergiaRespiratoria, _, _, X, entre1a4anos, _, _, _, _, _).
doenca(g2, X) :- medicamento(alergiaRespiratoria, _, _, X, entre5a9anos, _, _, _, _, _).
doenca(g3, X) :- medicamento(alergiaRespiratoria, _, _, X, entre10a13anos, _, _, _, _, _).
doenca(g4, X) :- medicamento(alergiaRespiratoria, _, _, X, entre14a17anos, _, _, _, _, _).
doenca(g5, X) :- medicamento(alergiaRespiratoria, _, _, X, mais18anos, _, _, _, _, _).

doenca(h1, X) :- medicamento(bronquite, _, _, X, _, _, _, _, _, _).
doenca(h2, X) :- medicamento(bronquite, _, _, X, entre3a12meses, _, _, _, _, _).
doenca(h3, X) :- medicamento(bronquite, _, _, X, entre1a4anos, _, _, _, _, _).
doenca(h4, X) :- medicamento(bronquite, _, _, X, entre5a9anos, _, _, _, _, _).
doenca(h5, X) :- medicamento(bronquite, _, _, X, entre10a13anos, _, _, _, _, _).
doenca(h6, X) :- medicamento(bronquite, _, _, X, entre14a17anos, _, _, _, _, _).
doenca(h7, X) :- medicamento(bronquite, _, _, X, mais18anos, _, _, _, _, _).

doenca(i1, X) :- medicamento(enxaqueca, _, _, X, _, _, _, _, _, _).
doenca(i2, X) :- medicamento(enxaqueca, _, _, X, entre5a9anos, _, _, _, _, _).
doenca(i3, X) :- medicamento(enxaqueca, _, _, X, entre10a13anos, _, _, _, _, _).
doenca(i4, X) :- medicamento(enxaqueca, _, _, X, entre14a17anos, _, _, _, _, _).
doenca(i5, X) :- medicamento(enxaqueca, _, _, X, entre3a12meses, _, _, _, _, _).
doenca(i6, X) :- medicamento(enxaqueca, _, _, X, entre1a4anos, _, _, _, _, _).
doenca(i7, X) :- medicamento(enxaqueca, _, _, X, mais18anos, _, _, _, _, _).

doenca(j1, X) :- medicamento(gripe, _, _, X, mais18anos, _, _, _, _, _).
doenca(j2, X) :- medicamento(gripe, _, _, X, entre3a12meses, _, _, _, _, _).
doenca(j3, X) :- medicamento(gripe, _, _, X, entre1a4anos, _, _, _, _, _).
doenca(j4, X) :- medicamento(gripe, _, _, X, entre5a9anos, _, _, _, _, _).
doenca(j5, X) :- medicamento(gripe, _, _, X, entre10a13anos, _, _, _, _, _).
doenca(j6, X) :- medicamento(gripe, _, _, X, entre14a17anos, _, _, _, _, _).

doenca(k1, X) :- medicamento(artrite, _, _, X, _, _, _, _, _, _).
doenca(k2, X) :- medicamento(artrite, _, _, X, entre14a17anos, _, _, _, _, _).
doenca(k3, X) :- medicamento(artrite, _, _, X, mais18anos, _, _, _, _, _).
doenca(k4, X) :- medicamento(artrite, _, _, X, entre3a12meses, _, _, _, _, _).
doenca(k5, X) :- medicamento(artrite, _, _, X, entre1a4anos, _, _, _, _, _).
doenca(k6, X) :- medicamento(artrite, _, _, X, entre5a9anos, _, _, _, _, _).
doenca(k7, X) :- medicamento(artrite, _, _, X, entre10a13anos, _, _, _, _, _).

doenca(l1, X) :- medicamento(sinusite, _, _, X, entre5a9anos, _, _, _, _, _).
doenca(l2, X) :- medicamento(sinusite, _, _, X, entre10a13anos, _, _, _, _, _).
doenca(l3, X) :- medicamento(sinusite, _, _, X, entre14a17anos, _, _, _, _, _).
doenca(l4, X) :- medicamento(sinusite, _, _, X, mais18anos, _, _, _, _, _).
doenca(l5, X) :- medicamento(sinusite, _, _, X, entre3a12meses, _, _, _, _, _).
doenca(l6, X) :- medicamento(sinusite, _, _, X, entre1a4anos, _, _, _, _, _).

doenca(m1, X) :- medicamento(conjuntiviteBacteriana, _, _, X, _, _, _, _, _, _).

doenca(n1, X) :- medicamento(infecaoUrinaria, _, _, X, _, mais40kg, _, _, _, _).
doenca(n2, X) :- medicamento(infecaoUrinaria, _, _, X, entre10a13anos, _, _, _, _, _).
doenca(n3, X) :- medicamento(infecaoUrinaria, _, _, X, entre5a9anos, _, _, _, _, _).
doenca(n4, X) :- medicamento(infecaoUrinaria, _, _, X, entre1a4nos, _, _, _, _, _).
doenca(n5, X) :- medicamento(infecaoUrinaria, _, _, X, entre3a12meses, _, _, _, _, _).
doenca(n6, X) :- medicamento(infecaoUrinaria, _, _, X, menos3meses, _, _, _, _, _).
doenca(n7, X) :- medicamento(infecaoUrinaria, _, _, X, _, menos6kg, _, _, _, _).
