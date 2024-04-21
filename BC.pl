:- op( 800, fx, if).
:- op( 700, xfx, then).
:- op( 300, xfy, or).
:- op( 200, xfy, and).

if tosse_expetoracao and dificuldade_respirar and 
(febre or arrepios_de_frio or dor_toracica or dor_cabeca or dor_muscular) 
then pneumonia.

if placas_de_uma_substancia_cremosa_na_boca and aparecimento_aftas_lingua_ou_bochecha and 
(sensacao_algodao_boca or camada_esbranquicada_na_boca) 
then candidiase_oral.

if dor_garganta and (febre or dificuldade_engolir or dor_ouvido or mal_estar_geral) 
then amigdalite.

if dor_ouvido and (dificuldade_em_dormir or choro_superior_ao_normal or dificuldades_audicao or febre
or falta_apetite or dor_cabeca) 
then otite.

if dor_cabeca and febre and (erupcoes_cutaneas or calafrios or nauseas or diarreia or dificuldade_em_urinar or dores_formigueiros_picadas_pele) 
then zona.

if ardor_ou_dor_ao_urinar and vontade_urgente_e_frequente_de_urinar and (eliminacao_de_sangue_na_urina or
febre or calafrios or dor_lombar and nauseas and vomitos)
then infeccao_urinaria.

if coceira_na_boca and (coceira_na_pele or dor_abdominal or diarreia or enjoos or mal_estar_na_garganta or falta_ar or dificuldade_respirar or rouquidao) 
then alergiaAlimentar.

if nariz_entupido and espirros_constantes and (coceira_nariz_olhos_garganta or nariz_vermelho or tosse_seca or dificuldade_respirar or olhos_vermelhos or dor_cabeca)
then alergiaRespiratoria.

if (tosse_seca or tosse_expetoracao) and falta_ar and (dor_peito or febre or fadiga) 
then bronquite.

if dor_cabeca and sensibilidade_luz_ruidos and mal_estar_geral and nauseas and (vomitos or tonturas or formigamento_corpo) 
then enxaqueca.

if febre and mal_estar_geral and dor_cabeca and (espirros or tosse_seca or nariz_entupido or dor_muscular or dor_garganta) 
then gripe.

if dor_articulacao and atrofia_muscular and vermelhidao_articulacao and (inchaco_articulacao or deformacao_articulacao) 
then artrite.

if vermelhidao_olho and comichao and (laqueacao or sensacao_areia or sensacao_corpo_estranho or inchaco_palpebra or aumento_sensibilidade_luz) 
then conjutivite_bacteriana.

if congestao_nasal and corrimento_nasal and (pressao_facial or perda_olfato or febre or tosse_expetoracao or tosse_seca or fadiga) 
then sinusite.

