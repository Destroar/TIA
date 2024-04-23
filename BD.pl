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

medicamento(pneumonia, 1, xarope, paracetamolBen-u-ron , entre10a13anos, null, entre1_9e2_5ml, '100mg por ml', entre4e6horas, [doencasfigado]).
medicamento(pneumonia, 1, xarope, paracetamolBen-u-ron , entre5a9anos, null, entre1_9e2_5ml, '100mg por ml', entre4e6horas, [doencasfigado]).
medicamento(pneumonia, 1, xarope, paracetamolBen-u-ron , entre1a4anos, null, entre1_9e2_5ml, '100mg por ml', entre4e6horas, [doencasfigado]).
medicamento(pneumonia, 1, xarope, paracetamolBen-u-ron , entre3a12meses, null, entre1_9e2_5ml, '100mg por ml', entre4e6horas, [doencasfigado]).
medicamento(pneumonia, 2 , comprimido , amoxicilina , null , mais40kg, entre250mga1g, null, '2a3vezes' , [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(pneumonia, 2 , xarope ,amoxicilina, null, menos6kg, '2.5ml', '250mgpor5ml', '8 em 8horas' , [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(pneumonia, 1 , comprimido, paracetamolBen-u-ron , entre14a17anos , null, '750mg', null, '2 a 3vezes', [doencasfigado]).
medicamento(pneumonia, 1 , comprimido, brufenon , mais18anos , null, '700mg', null, '6 em 6 horas', [gravidez, amamentacao]).

medicamento(candidiaseOral, 3, pomada, clotrimazol, null, null, null, null, '2 a 3 vezes dia' , [hipersensibilidadeclotrimazol,gravidez, amamentacao]).
medicamento(candidiaseOral, 3, pomada, fluconazol, mais18anos, null, '400mg inicial e 200 depois', null, '1 vez por dia' , [hipersensibilidadefluconazol]).

% IMPORTANTE - APENAS SE A CAUSA FOR BACTERIANA CONSOANTE TESTE (Amigdalite em baixo)- PODEMOS ADICIONAR UM ANTIINFLAMATORIO
medicamento(amigdalite, 2 , comprimido , amoxicilina , null , mais40kg, entre250mga1g, null, '2a3vezes' , [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2 , comprimido , amoxicilina , mais18anos , null, entre250mga1g, null, '2a3vezes' , [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina , entre14a17anos, null, '5ml', '500mgpor5ml' , '8 em 8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina , entre10a13anos, null, '5ml', '500mgpor5ml' , '8 em 8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina , entre5a9anos, null, '5ml', '500mgpor5ml' , '8 em 8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina , entre1a4anos, null, '5ml', '500mgpor5ml' , '8 em 8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina , entre3a12meses, null, '5ml', '500mgpor5ml' , '8 em 8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina , menos3meses, null, '5ml', '250mgpor5ml' , '8 em 8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina, null, menos6kg, '2.5ml', '250mgpor5ml', '8 em 8horas' , [hipersensibilidadeAntibioticosBetaLactamicos]).

medicamento(otite, 2 , comprimido , amoxicilina , null , mais40kg, entre250mga1g, null, '2a3vezes' , [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 2 , xarope , amoxicilina , entre1a4anos, null, '5ml', '500mgpor5ml' , '8 em 8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 2 , xarope , amoxicilina , entre3a12meses, null, '5ml', '500mgpor5ml' , '8 em 8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 2 , xarope , amoxicilina , menos3meses, null, '5ml', '250mgpor5ml' , '8 em 8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 2, xarope , amoxicilina, null, menos6kg, '2.5ml', '250mgpor5ml', '8 em 8horas' , [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 5, injecao, cefuroxima, mais18anos, null, '750mg', null, '3vezesdia', [gravidez, amamentacao]).
medicamento(otite, 5, injecao, cefuroxima, entre14a17anos, null, '30a100mg/kg/dia', null, '3a4vezesdia', [gravidez, amamentacao]).
medicamento(otite, 5, injecao, cefuroxima, entre10a13anos, null, '30a100mg/kg/dia', null, '3a4vezesdia', [gravidez, amamentacao]).
medicamento(otite, 5, injecao, cefuroxima, entre5a9anos, null, '30a100mg/kg/dia', null, '3a4vezesdia', [gravidez, amamentacao]).

medicamento(zona, 6, comprimido, aciclovir, mais18anos, null, '800mg', null, '4a4horas', [alergiaAciclovir, gravidez, amamentacao, idosos, criancas, bebes]). % verificar com medico idosos criancas e bebes

medicamento(alergiaAlimentar, 7, comprimido, cetirizina_aurobindo, mais18anos, null, '10mg',null, '1vezdia', null).
medicamento(alergiaAlimentar, 7, comprimido, cetirizina_aurobindo, entre14a17anos, null, '10mg',null, '1vezdia', null).
medicamento(alergiaAlimentar, 7, xarope, cetirizina_aurobindo, entre10a13anos, null, '5a10ml' , '120ml', '1vezdia', null).
medicamento(alergiaAlimentar, 7, xarope, cetirizina_aurobindo, entre5a9anos, null, '5ml' , '120ml', '12em12horas', null).
medicamento(alergiaAlimentar, 7, xarope, cetirizina_aurobindo, entre1a4anos, null, '2.5ml' , '120ml', '12em12horas', null).

medicamento(alergiaRespiratoria, 7, comprimido, cetirizina_aurobindo, mais18anos, null, '10mg',null, '1vezdia', null).
medicamento(alergiaRespiratoria, 7, comprimido, cetirizina_aurobindo, entre14a17anos, null, '10mg',null, '1vezdia', null).
medicamento(alergiaRespiratoria, 7, xarope, cetirizina_aurobindo, entre10a13anos, null, '5a10ml' , '120ml', '1vezdia', null).
medicamento(alergiaRespiratoria, 7, xarope, cetirizina_aurobindo, entre5a9anos, null, '5ml' , '120ml', '12em12horas', null).
medicamento(alergiaRespiratoria, 7, xarope, cetirizina_aurobindo, entre1a4anos, null, '2.5ml' , '120ml', '12em12horas', null).

medicamento(bronquite, 8, repouso, null, null, null, null, null, null, null).
medicamento(bronquite, 8, ingestaoLiquidos, null, null, null, null, null, null, null).
medicamento(bronquite, 1, comprimidoEferverescente, aspirinaC, entre10a13anos, null, '640mg', null, '4 a 8 horas', [gravidez, amamentacao]).
medicamento(bronquite, 1, comprimidoEferverescente, aspirinaC, mais18anos, null, '2comprimidosde640mg', null, '4 a 8 horas', [gravidez, amamentacao]).
medicamento(bronquite, 1, saqueta, aspirinaComplex, entre14a17anos, null, saqueta530mg, null, '4 a 8 horas', [alergias,asma,insuficienciaHepatica, insuficienciaRenal, insuficienciaCardiacaGrave,hipertensaoGrave, doencaArterialCoronaria]).
medicamento(bronquite, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre10a13anos, null,'500mg', null, '3a4vezesdia', [doencasfigado]).
medicamento(bronquite, 1, comprimido, paracetamolBen_u_ron, mais18anos, null, '750mg', null, '3a5vezesdia', [doencasfigado]).
medicamento(bronquite, 1, xarope, paracetamolBen-u-ron , entre3a12meses, null, entre0_4e0_8ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(bronquite, 1, xarope, paracetamolBen-u-ron , entre1a4anos, null, entre1_9e2_5ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(bronquite, 1, xarope, paracetamolBen-u-ron , entre5a9anos, null, entre1_9e2_5ml, '100mgporml', entre4e6horas, [doencasfigado]).

medicamento(enxaqueca, 8, repouso, null, null, null, null, null, null, null).
medicamento(enxaqueca, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre5a9anos, null, '500mg', null, '3a4vezesdia', [doencasfigado]).
medicamento(enxaqueca, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre10a13anos, null, '500mg', null, '3a4vezesdia', [doencasfigado]).
medicamento(enxaqueca, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre14a17anos, null, '500mg', null, '3a4vezesdia', [doencasfigado]).
medicamento(enxaqueca, 1, xarope, paracetamolBen-u-ron , entre3a12meses, null, entre0_4e0_8ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(enxaqueca, 1, xarope, paracetamolBen-u-ron , entre1a4anos, null, entre1_9e2_5ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(enxaqueca, 1, comprimido, sumatriptano, mais18anos, null, '50mg', null, apenasUmaDose,[historicoDoencasCardiacas]).

medicamento(gripe, 1, comprimido, paracetamolBen_u_ron, mais18anos, null, '750mg', null, '3a5vezesdia', [doencasfigado]).
medicamento(gripe, 1, xarope, paracetamolBen-u-ron , entre3a12meses, null, entre0_4e0_8ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(gripe, 1, xarope, paracetamolBen-u-ron , entre1a4anos, null, entre1_9e2_5ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(gripe, 1, xarope , dipirona , entre3a12meses , null , '1.25a2.5ml' , '50mgporml', '4vezesaoDia', [doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(gripe, 1, xarope , dipirona , entre1a4anos , null , '2.5a5ml' , '50mgporml', '4vezesaoDia', [doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(gripe, 1, xarope , dipirona , entre5a9anos , null , '5a10ml' , '50mgporml', '4vezesaoDia', [doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(gripe, 1, xarope , dipirona , entre10a13anos , null , '7.5a15ml' , '50mgporml', '4vezesaoDia', [doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(gripe, 1, xarope , dipirona , entre14a17anos , null , '10a20ml' , '50mgporml', '4vezesaoDia', [doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).

medicamento(artrite,8, fisioterapia,null,null,null,null,null,null,null).
medicamento(artrite, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre14a17anos, null, '500mg', null, '3a4vezesdia', [doencasfigado]).
medicamento(artrite, 1, comprimido, paracetamolBen_u_ron, mais18anos, null, '750mg', null, '3a5vezesdia', [doencasfigado]).
medicamento(artrite, 1, xarope, paracetamolBen-u-ron , entre3a12meses, null, entre0_4e0_8ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(artrite, 1, xarope, paracetamolBen-u-ron , entre1a4anos, null, entre1_9e2_5ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(artrite, 1, comprimido,ibuprofeno,mais18anos,null, '400mg', null, '8horas', [gravidez, amamentacao]).
medicamento(artrite, 1, pomada, cetoprofeno,entre5a9anos,null,null,'25mgporg','2a3vezesdia',[hipersensibilidadeCetoprofeno, sensibilidadeLuz, sensibilidadeProtetorSolar]).
medicamento(artrite, 1, pomada, cetoprofeno,entre10a13anos,null,null,'25mgporg','2a3vezesdia',[hipersensibilidadeCetoprofeno, sensibilidadeLuz, sensibilidadeProtetorSolar]).


medicamento(sinusite, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre5a9anos, null, '500mg', null, '3a4vezesdia', [doencasfigado]).
medicamento(sinusite, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre10a13anos, null, '500mg', null, '3a4vezesdia', [doencasfigado]).
medicamento(sinusite, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre14a17anos, null, '500mg', null, '3a4vezesdia', [doencasfigado]).
medicamento(sinusite, 1, comprimido, paracetamolBen_u_ron, mais18anos, null, '750mg', null, '3a5vezesdia', [doencasfigado]).
medicamento(sinusite, 1, xarope, paracetamolBen-u-ron , entre3a12meses, null, entre0_4e0_8ml, '100mgporml', entre4e6horas, [doencasfigado]).
medicamento(sinusite, 1, xarope, paracetamolBen-u-ron , entre1a4anos, null, entre0_4e0_8ml, '100mgporml', entre4e6horas, [doencasfigado]).

medicamento(conjuntiviteBacteriana, 2, gotas,'Tobramicina Colirio', null,null,null,null,'4em4horas', [gravidez, amamentacao, alergiaTobramicina]).

medicamento(infecaoUrinaria, 2 , comprimido , amoxicilina , null , mais40kg, entre250mga1g, null, '2a3vezes' , [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(infecaoUrinaria, 2e4 , xarope , amoxicilina , entre10a13anos, null, '5ml', '500mgpor5ml' , '8 em 8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(infecaoUrinaria, 2e4 , xarope , amoxicilina , entre5a9anos, null, '5ml', '500mgpor5ml' , '8 em 8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(infecaoUrinaria, 2e4 , xarope , amoxicilina , entre1a4nos, null, '5ml', '500mgpor5ml' , '8 em 8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(infecaoUrinaria, 2e4 , xarope , amoxicilina , entre3a12meses, null, '5ml', '500mgpor5ml' , '8 em 8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(infecaoUrinaria, 2e4 , xarope , amoxicilina , menos3meses, null, '5ml', '250mgpor5ml' , '8 em 8horas', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(infecaoUrinaria, 2e4 , xarope , amoxicilina, null, menos6kg, '2.5ml', '250mgpor5ml', '8 em 8horas' , [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(infecaoUrinaria, 1, xarope, paracetamolBen-u-ron , entre10a13anos, null, entre1_9e2_5ml, '100mg por ml', entre4e6horas, [doencasfigado]).
medicamento(infecaoUrinaria, 1, xarope, paracetamolBen-u-ron , entre5a9anos, null, entre1_9e2_5ml, '100mg por ml', entre4e6horas, [doencasfigado]).
medicamento(infecaoUrinaria, 1, xarope, paracetamolBen-u-ron , entre1a4nos, null, entre1_9e2_5ml, '100mg por ml', entre4e6horas, [doencasfigado]).
medicamento(infecaoUrinaria, 1, xarope, paracetamolBen-u-ron , entre3a12meses, null, entre1_9e2_5ml, '100mg por ml', entre4e6horas, [doencasfigado]).
