:- dynamic medicamento/10.

% Legenda: 
% Tratamento: Administração de analgésicos e anti-inflamatórios - 1
%             Administração de antibióticos - 2
%             Administração de antifúngico - 3
%             Efetuar testes - 4
%             Administração intravenosa - 5
%             Administração de antiviral - 6 - Apenas alivia os sintomas não trata a doença
%             Administracao de antihistaminicos - 7
%             Tratamentos de suporte - 8
              
            



% medicamento(nome, tratamento, tipomedicamento, medicamento, idadeTratamento, pesotratamento, prescricao, dose, VezesAoDIA, condicaoespecial)

medicamento(pneumonia, 1, xarope, 'paracetamolBen-u-ron' , mais3meses, entre3e6kg, entre0_4e0_8ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(pneumonia, 1, xarope, 'paracetamolBen-u-ron' , mais3meses, entre6e9kg, entre0_8e1_1ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(pneumonia, 1, xarope, 'paracetamolBen-u-ron' , mais3meses, entre9e12kg, entre1_1e1_5ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(pneumonia, 1, xarope, 'paracetamolBen-u-ron' , mais3meses, entre12e15kg, entre1_9e1_5ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(pneumonia, 1, xarope, 'paracetamolBen-u-ron' , mais3meses, entre15e20kg, entre1_9e2_5ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(pneumonia, 2 , comprimido , amoxicilina , null , mais40kg, entre250mga1g, null, '2a3vezes' , [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(pneumonia, 2 , xarope , amoxicilina , mais3anos, null, '5ml', '500mgpor5ml' , '8em8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(pneumonia, 2 , xarope , amoxicilina , menos3anos, null, '5ml', '250mgpor5ml' , '8em8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(pneumonia, 2 , xarope ,amoxicilina, null, menos6kg, '2.5ml', '250mgpor5ml', '8em8horas' , [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(pneumonia, 1 , comprimidoEferverescente, 'paracetamolBen-u-ron' , mais12anos , null, '500mg', null, '4a6horas', [doencasfigado]).
medicamento(pneumonia, 1 , comprimido, 'paracetamolBen-u-ron' , mais12anos , null, '750mg', null, '2a3vezes', [doencasfigado]).
medicamento(pneumonia, 1 , comprimido, brufenon , mais18anos , null, '700mg', null, '6em6horas', [gravidez, amamentacao]).
medicamento(candidiaseOral, 3, pomada, clotrimazol, null, null, null, null, '2a3vezesdia' , [hipersensibilidadeclotrimazol,gravidez, amamentacao]).
medicamento(candidiaseOral, 3, pomada, fluconazol, mais18anos, null, '400mginiciale200depois', null, '1vezdia' , [hipersensibilidadefluconazol]).

% IMPORTANTE - APENAS SE A CAUSA FOR BACTERIANA CONSOANTE TESTE (Amigdalite em baixo)- PODEMOS ADICIONAR UM ANTIINFLAMATORIO
medicamento(amigdalite, 2 , comprimido , amoxicilina , null , mais40kg, entre250mga1g, null, '2a3vezes' , [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina , mais3anos, null, '5ml', '500mgpor5ml' , '8em8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina , menos3anos, null, '5ml', '250mgpor5ml' , '8em8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina, null, menos6kg, '2.5ml', '250mgpor5ml', '8em8horas' , [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 2 , comprimido , amoxicilina , null , mais40kg, entre250mga1g, null, '2a3vezes' , [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 2 , xarope , amoxicilina , entre1a4nos, null, '5ml', '500mgpor5ml' , '8em8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 2 , xarope , amoxicilina , entre3a12meses, null, '5ml', '500mgpor5ml' , '8em8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 2 , xarope , amoxicilina , menos3meses, null, '5ml', '250mgpor5ml' , '8em8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 2, xarope , amoxicilina, null, menos6kg, '2.5ml', '250mgpor5ml', '8em8horas' , [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 5, injecao, cefuroxima, mais18anos, null, '750mg', null, '3vezesdia', [gravidez, amamentacao]).
medicamento(otite, 5, injecao, cefuroxima, entre14a17anos, null, '30a100mg/kg/dia', null, '3a4vezesdia', [gravidez, amamentacao]).
medicamento(otite, 5, injecao, cefuroxima, entre10a13anos, null, '30a100mg/kg/dia', null, '3a4vezesdia', [gravidez, amamentacao]).
medicamento(otite, 5, injecao, cefuroxima, entre5a9anos, null, '30a100mg/kg/dia', null, '3a4vezesdia', [gravidez, amamentacao]).
mmedicamento(zona, 6, comprimido, aciclovir, mais18anos, null, '800mg', null, '4a4horas', [alergiaAciclovir, gravidez, amamentacao, idosos, criancas, bebes]). % verificar com medico idosos criancas e bebes
medicamento(alergiaAlimentar, 7, comprimido, cetirizina_aurobindo, mais18anos, null, '10mg',null, '1vezdia', null).
medicamento(alergiaAlimentar, 7, comprimido, cetirizina_aurobindo, entre14a17anos, null, '10mg',null, '1vezdia', null).
medicamento(alergiaAlimentar, 7, xarope, cetirizina_aurobindo, entre10a13anos, null, '5a10ml' , '120ml', '1vezdia', null).
medicamento(alergiaAlimentar, 7, xarope, cetirizina_aurobindo, entre5a9anos, null, '5ml' , '120ml', '12em12horas', null).
medicamento(alergiaAlimentar, 7, xarope, cetirizina_aurobindo, entre1a4nos, null, '2.5ml' , '120ml', '12em12horas', null).
medicamento(alergiaRespiratoria, 7, comprimido, cetirizina_aurobindo, mais18anos, null, '10mg',null, '1vezdia', null).
medicamento(alergiaRespiratoria, 7, comprimido, cetirizina_aurobindo, entre14a17anos, null, '10mg',null, '1vezdia', null).
medicamento(alergiaRespiratoria, 7, xarope, cetirizina_aurobindo, entre10a13anos, null, '5a10ml' , '120ml', '1vezdia', null).
medicamento(alergiaRespiratoria, 7, xarope, cetirizina_aurobindo, entre5a9anos, null, '5ml' , '120ml', '12em12horas', null).
medicamento(alergiaRespiratoria, 7, xarope, cetirizina_aurobindo, entre1a4nos, null, '2.5ml' , '120ml', '12em12horas', null).
medicamento(bronquite, 8, repouso, null, null, null, null, null, null, null).
medicamento(bronquite, 8, ingestaoLiquidos, null, null, null, null, null, null, null).
medicamento(bronquite, 1, comprimidoEferverescente, aspirinaC, mais12anos, null, '640mg', null, '4a8h', [gravidez, amamentacao]).
medicamento(bronquite, 1, comprimidoEferverescente, aspirinaC, mais18anos, null, '2comprimidosde640mg', null, '4a8h', [gravidez, amamentacao]).
medicamento(bronquite, 1, saqueta, aspirinaComplex, mais16anos, null, saqueta530mg, null, '4a8h', [alergias,asma,insuficienciaHepatica, insuficienciaRenal, insuficienciaCardiacaGrave,hipertensaoGrave, doencaArterialCoronaria]).
medicamento(bronquite, 1, comprimidoEferverescente, paracetamolBen_u_ron, mais12anos, null,'500mg', null, '3a4vezesdia', [doencasfigado]).
medicamento(bronquite, 1, comprimido, paracetamolBen_u_ron, mais18anos, null, '750mg', null, '3a5vezesdia', [doencasfigado]).
medicamento(bronquite, 1, xarope, paracetamolBen-u-ron , mais3meses, entre3e11kg, entre0_4e0_8ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(bronquite, 1, xarope, paracetamolBen-u-ron , mais3meses, entre12e20kg, entre1_9e2_5ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(enxaqueca, 8, repouso, null, null, null, null, null, null, null).
medicamento(enxaqueca, 1, comprimido,ibuprofeno,mais18anos,null, '400mg', null, '8horas', [gravidez, amamentacao]).
medicamento(enxaqueca, 1, comprimidoEferverescente, paracetamolBen_u_ron, mais12anos, null, '500mg', null, '3a4vezesdia', [doencasfigado]).
medicamento(enxaqueca, 1, comprimido, paracetamolBen_u_ron, mais18anos, null, '750mg', null, '3a5vezesdia', [doencasfigado]).
medicamento(enxaqueca, 1, xarope, paracetamolBen-u-ron , mais3meses, entre3e11kg, entre0_4e0_8ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(enxaqueca, 1, xarope, paracetamolBen-u-ron , mais3meses, entre12e20kg, entre1_9e2_5ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(enxaqueca, 1, intravenosa, sumatriptano, mais18anos, null, '6mg', null, apenasUmaDose,[historicoDoencasCardiacas]).
medicamento(enxaqueca, 1, comprimido, sumatriptano, mais18anos, null, '50mg', null, apenasUmaDose,[historicoDoencasCardiacas]).
medicamento(gripe, 1, comprimidoEferverescente, paracetamolBen_u_ron, mais12anos, null, '500mg', null, '3a4vezesdia', [doencasfigado]).
medicamento(gripe, 1, comprimido, paracetamolBen_u_ron, mais18anos, null, '750mg', null, '3a5vezesdia', [doencasfigado]).
medicamento(gripe, 1, xarope, paracetamolBen-u-ron , mais3meses, entre3e11kg, entre0_4e0_8ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(gripe, 1, xarope, paracetamolBen-u-ron , mais3meses, entre12e20kg, entre1_9e2_5ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(gripe, 1, comprimido,ibuprofeno,mais18anos,null, '400mg', null, '8horas', [gravidez, amamentacao]).
medicamento(gripe, 1, comprimido,dipirona,mais15anos,null, '1g', null, '6em6horas', [doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(gripe, 1, comprimidoEferverescente , dipirona , mais15anos,null, '1g', null, '6em6horas', [doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(gripe, 1, xarope , dipirona , 3a12meses , null , '1.25a2.5ml' , '50mgporml', '4vezesaoDia', [doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(gripe, 1, xarope , dipirona , 1a4anos , null , '2.5a5ml' , '50mgporml', '4vezesaoDia', [doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(gripe, 1, xarope , dipirona , 5a9anos , null , '5a10ml' , '50mgporml', '4vezesaoDia', [doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(gripe, 1, xarope , dipirona , 10a13anos , null , '7.5a15ml' , '50mgporml', '4vezesaoDia', [doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(gripe, 1, xarope , dipirona , 14a17anos , null , '10a20ml' , '50mgporml', '4vezesaoDia', [doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(artrite,8, fisioterapia,null,null,null,null,null,null,null).
medicamento(artrite, 1, comprimidoEferverescente, paracetamolBen_u_ron, mais12anos, null, '500mg', null, '3a4vezesdia', [doencasfigado]).
medicamento(artrite, 1, comprimido, paracetamolBen_u_ron, mais18anos, null, '750mg', null, '3a5vezesdia', [doencasfigado]).
medicamento(artrite, 1, xarope, paracetamolBen-u-ron , mais3meses, entre3e11kg, entre0_4e0_8ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(artrite, 1, xarope, paracetamolBen-u-ron , mais3meses, entre12e20kg, entre1_9e2_5ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(artrite, 1, comprimido,ibuprofeno,mais18anos,null, '400mg', null, '8horas', [gravidez, amamentacao]).
medicamento(artrite, 1, pomada, cetoprofeno,mais12anos,null,null,'25mgporg','2a3vezesdia',[hipersensibilidadeCetoprofeno, sensibilidadeLuz, sensibilidadeProtetorSolar]).
medicamento(sinusite, 1, comprimidoEferverescente, paracetamolBen_u_ron, mais12anos, null, '500mg', null, '3a4vezesdia', [doencasfigado]).
medicamento(sinusite, 1, comprimido, paracetamolBen_u_ron, mais18anos, null, '750mg', null, '3a5vezesdia', [doencasfigado]).
medicamento(sinusite, 1, xarope, paracetamolBen-u-ron , mais3meses, entre3e11kg, entre0_4e0_8ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(sinusite, 1, xarope, paracetamolBen-u-ron , mais3meses, entre12e20kg, entre1_9e2_5ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(artrite, 1, comprimido,ibuprofeno,mais18anos,null, '400mg', null, '8horas', [gravidez, amamentacao]).
medicamento(conjuntiviteBacteriana, 2, gotas,'Tobramicina Colirio', mais2meses,null,null,null,'4em4horas', [gravidez, amamentacao, alergiaTobramicina]).
















% ---------------------------------------------------------------//---------------------------------------------------------------------------------



%doenca(asma, sintomas(pieira, falta de ar, sensacao de aperto no peito, tosse)).

%doenca(pneumonia, sintomas(febre, arrepios de frio, tosse com expetoração, dificuldade respiratória, dor tóracica, dor de cabeça, dor muscular)).

%doenca(bronquite, sintomas(tosse, falta de ar, dor no peito, febre, fadiga)).

%doenca(enfisema pulmunar, sintomas(dificuldade respiratória, pieira, unhas e lábios coloração azulada ou acinzentada, dificuldade de concentração, 
%aumento da frequência cardíaca, perda de peso)).

%doenca(anafilaxia, sintomas(comichão, urticária, edema dos lábios língua pálpebras, tosse, dificuldade respiratória, pieira, náuseas, vómitos, 
%cólicas abdominais, diarreia, inchaço, urticária, diminuição súbita da pressão arterial, falta de ar, dificuldade em engolir)).

%doenca(pneumotórax, sintomas(dor torácica, dificuldade respiratória)).

%doenca(fibrose pulmonar, sintomas(tosse seca e crónica, dificuldade respiratórias, desconforto torácico, extremidades frias e arroxeadas, 
%diminuição apetite, perda de peso, dores musculares e articulares)).



% tratamento(doenca, tratamento, idade, gravidez).

%tratamento(pneumonia, paracetamol ben-u-ron, -18, 0).
%tratamento(pneumonia, brufenon, +18, 0).
%tratamento(bronquite, repouso, 0, 0).
%tratamento(bronquite, ingestão de líquidos em abundância, 0, 0).
%tratamento(bronquite, aspirina c, +12, 1).
%tratamento(bronquite, aspirina complex, +16, 0).
%tratamento(bronquite, parecetamol, 0, 0).


