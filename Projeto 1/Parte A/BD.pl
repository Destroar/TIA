% Legenda: 
% Tratamento: Administração de analgésicos e anti-inflamatórios - 1
%             Administração de antibióticos - 2
%             Administração de antifúngico - 3
%             Efetuar testes - 4
%             Administração intravenosa - 5
%             Administração de antiviral - 6 - Apenas alivia os sintomas não trata a doença
%             Administracao de antihistaminicos - 7
%             Tratamentos de suporte - 8
              
            



% medicamento(nome, tratamento, tipomedicamento, medicamento, idadeTratamento, pesotratamento, prescricao, dose, VezesAoDIA, indicacoes, condicaoespecial)

medicamento(pneumonia, 1, xarope, paracetamolBen-u-ron , entre10a13anos, '  ', 'entre 1.9 e 2.5ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(pneumonia, 1, xarope, paracetamolBen-u-ron , entre5a9anos, '  ', 'entre 1.9 e 2.5ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(pneumonia, 1, xarope, paracetamolBen-u-ron , entre1a4anos, '  ', 'entre 1.9 e 2.5ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(pneumonia, 1, xarope, paracetamolBen-u-ron , entre3a12meses, '  ', 'entre 1.9 e 2.5ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(pneumonia, 2 , comprimido , amoxicilina , '  ' , mais40kg, 'entre 250mg a 1g', '  ', '2 a 3 vezes' , 'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(pneumonia, 2 , xarope ,amoxicilina, '  ', menos6kg, '2.5ml', '250mg por 5ml', '8 em 8 horas' , 'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(pneumonia, 1 , comprimido, paracetamolBen-u-ron , entre14a17anos , '  ', '750mg', '  ', '2 a 3 vezes','Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(pneumonia, 1 , comprimido, brufenon , mais18anos , '  ', '700mg', '  ', '6 em 6 horas', 'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [gravidez, amamentacao]).

% IMPORTANTE - APENAS SE A CAUSA FOR BACTERIANA CONSOANTE TESTE (Amigdalite em baixo)- PODEMOS ADICIONAR UM ANTIINFLAMATORIO
medicamento(amigdalite, 2 , comprimido , amoxicilina , '  ' , mais40kg, entre250mga1g, '  ', '2 a 3 vezes' , 'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2 , comprimido , amoxicilina , mais18anos , '  ', entre250mga1g, '  ', '2 a 3 vezes' ,'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina , entre14a17anos, '  ', '5ml', '500mg por 5ml' , '8 em 8 horas', 'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina , entre10a13anos, '  ', '5ml', '500mg por 5ml' , '8 em 8 horas',, 'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia' [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina , entre5a9anos, '  ', '5ml', '500mg por 5ml' , '8 em 8 horas', 'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina , entre1a4anos, '  ', '5ml', '500mg por 5ml' , '8 em 8 horas', 'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina , entre3a12meses, '  ', '5ml', '500mg por 5ml' , '8 em 8 horas','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina , menos3meses, '  ', '5ml', '250mg por 5ml' , '8 em 8 horas','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(amigdalite, 2e4 , xarope , amoxicilina, '  ', menos6kg, '2.5ml', '250mg por 5ml', '8 em 8 horas' ,'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).

medicamento(otite, 2 , comprimido , amoxicilina , '  ' , mais40kg, entre250mga1g, '  ', '2 a 3 vezes' ,'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 2 , xarope , amoxicilina , entre1a4anos, '  ', '5ml', '500mg por 5ml' , '8 em 8 horas','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 2 , xarope , amoxicilina , entre3a12meses, '  ', '5ml', '500mg por 5ml' , '8 em 8 horas','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 2 , xarope , amoxicilina , menos3meses, '  ', '5ml', '250mg por 5ml' , '8 em 8 horas','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 2, xarope , amoxicilina, '  ', menos6kg, '2.5ml', '250mg por 5ml', '8 em 8 horas' ,'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(otite, 5, injecao, cefuroxima, mais18anos, '  ', '750mg', '  ', '3 vezes ao dia','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [gravidez, amamentacao]).
medicamento(otite, 5, injecao, cefuroxima, entre14a17anos, '  ', '30 a 100mg/kg/dia', ' ', '3 a 4 vezes ao dia','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [gravidez, amamentacao]).
medicamento(otite, 5, injecao, cefuroxima, entre10a13anos, '  ', '30 a 100mg/kg/dia', '  ', '3 a 4 vezes ao dia','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [gravidez, amamentacao]).
medicamento(otite, 5, injecao, cefuroxima, entre5a9anos, '  ', '30 a 100mg/kg/dia', '  ', '3 a 4vezes ao dia','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [gravidez, amamentacao]).

medicamento(zona, 6, comprimido, aciclovir, mais18anos, '  ', '800mg', '  ', '4 a 4 horas','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [alergiaAciclovir, gravidez, amamentacao, idosos]). % verificar com medico idosos criancas e bebes

medicamento(alergiaAlimentar, 7, comprimido, cetirizina_aurobindo, mais18anos, '  ', '10mg','  ', '1 vez ao dia','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', '  ').
medicamento(alergiaAlimentar, 7, comprimido, cetirizina_aurobindo, entre14a17anos, '  ', '10mg','  ', '1 vez ao dia','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', '  ').
medicamento(alergiaAlimentar, 7, xarope, cetirizina_aurobindo, entre10a13anos, '  ', '5 a 10ml' , '120ml', '1 vez ao dia','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', '  ').
medicamento(alergiaAlimentar, 7, xarope, cetirizina_aurobindo, entre5a9anos, '  ', '5ml' , '120ml', '12 em 12 horas', 'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia','  ').
medicamento(alergiaAlimentar, 7, xarope, cetirizina_aurobindo, entre1a4anos, '  ', '2.5ml' , '120ml', '12 em 12 horas', 'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia','  ').

medicamento(alergiaRespiratoria, 7, comprimido, cetirizina_aurobindo, mais18anos, '  ', '10mg','  ', '1 vez ao dia','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', '  ').
medicamento(alergiaRespiratoria, 7, comprimido, cetirizina_aurobindo, entre14a17anos, '  ', '10mg','  ', '1 vez ao dia','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', '  ').
medicamento(alergiaRespiratoria, 7, xarope, cetirizina_aurobindo, entre10a13anos, '  ', '5 a 10ml' , '120ml', '1 vez ao dia','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', '  ').
medicamento(alergiaRespiratoria, 7, xarope, cetirizina_aurobindo, entre5a9anos, '  ', '5ml' , '120ml', '12 em 12 horas', 'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia','  ').
medicamento(alergiaRespiratoria, 7, xarope, cetirizina_aurobindo, entre1a4anos, '  ', '2.5ml' , '120ml', '12 em 12 horas','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', '  ').

medicamento(bronquite, 8, repouso, '  ', paragem, '  ', '  ', '  ', '  ', '  ').
medicamento(bronquite, 8, ingestaoLiquidos, '  ', paragem, '  ', '  ', '  ', '  ', '  ').
medicamento(bronquite, 1, comprimidoEferverescente, aspirinaC, entre10a13anos, '  ', '640mg', '  ', '4 a 8 horas', 'Pode ser tomado a qualquer hora',[gravidez, amamentacao]).
medicamento(bronquite, 1, comprimidoEferverescente, aspirinaC, mais18anos, '  ', '2 comprimidos de 640mg', '  ', '4 a 8 horas',  'Pode ser tomado a qualquer hora', [gravidez, amamentacao]).
medicamento(bronquite, 1, saqueta, aspirinaComplex, entre14a17anos, '  ', 'saqueta de 530mg', '  ', '4 a 8 horas',  'Pode ser tomado a qualquer hora',[alergias,asma,insuficienciaHepatica, insuficienciaRenal, insuficienciaCardiacaGrave,hipertensaoGrave, doencaArterialCoronaria]).
medicamento(bronquite, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre10a13anos, '  ','500mg', '  ', '3 a 4 vezes ao dia', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(bronquite, 1, comprimido, paracetamolBen_u_ron, mais18anos, '  ', '750mg', '  ', '3 a 5 vezes dia','Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(bronquite, 1, xarope, paracetamolBen-u-ron , entre3a12meses, '  ', 'entre 0.4 e 0.8ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(bronquite, 1, xarope, paracetamolBen-u-ron , entre1a4anos, '  ', 'entre 1.9 e 2.5ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(bronquite, 1, xarope, paracetamolBen-u-ron , entre5a9anos, '  ', 'entre 1.9 e 2.5ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).

medicamento(enxaqueca, 8, repouso, '  ', paragem, '  ', '  ', '  ', '  ', '  ').
medicamento(enxaqueca, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre5a9anos, '  ', '500mg', '  ', '3 a 4 vezes ao dia', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(enxaqueca, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre10a13anos, '  ', '500mg', '  ', '3a4vezes ao dia', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(enxaqueca, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre14a17anos, '  ', '500mg', '  ', '3a4vezes ao dia', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(enxaqueca, 1, xarope, paracetamolBen-u-ron , entre3a12meses, '  ', 'entre0_4e0_8ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(enxaqueca, 1, xarope, paracetamolBen-u-ron , entre1a4anos, '  ', 'entre 1.9 e 2.5ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(enxaqueca, 1, comprimido, sumatriptano, mais18anos, '  ', '50mg', '  ', 'apenas  uma Dose', 'Pode ser tomado a qualquer hora',[historicoDoencasCardiacas]).

medicamento(gripe, 1, comprimido, paracetamolBen_u_ron, mais18anos, '  ', '750mg', '  ', '3 a 5 vezes ao dia', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(gripe, 1, xarope, paracetamolBen-u-ron , entre3a12meses, '  ', 'entre 0.4 e 0.8ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(gripe, 1, xarope, paracetamolBen-u-ron , entre1a4anos, '  ', 'entre 1.9 e 2.5ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(gripe, 1, xarope , dipirona , entre3a12meses , '  ' , '1.25 a 2.5ml' , '50mg por ml', '4 vezes ao dia', 'Pode ser tomado a qualquer hora', [doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(gripe, 1, xarope , dipirona , entre1a4anos , '  ' , '2.5 a 5ml' , '50mg por ml', '4 vezes ao dia',  'Pode ser tomado a qualquer hora',[doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(gripe, 1, xarope , dipirona , entre5a9anos , '  ' , '5 a 10ml' , '50mg por ml', '4 vezes ao dia',  'Pode ser tomado a qualquer hora',[doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(gripe, 1, xarope , dipirona , entre10a13anos , '  ' , '7.5 a 15ml' , '50mg por ml', '4 vezes ao dia',  'Pode ser tomado a qualquer hora',[doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).
medicamento(gripe, 1, xarope , dipirona , entre14a17anos , '  ' , '10 a 20ml' , '50mg por ml', '4 vezes ao dia',  'Pode ser tomado a qualquer hora',[doencasProducaoCelulasSanguineas, alergiasMedicamentosAnalgesicos, intoleranciaDipirona]).


medicamento(sinusite, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre5a9anos, '  ', '500mg', '  ', '3 a 4 vezes ao dia', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(sinusite, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre10a13anos, '  ', '500mg', '  ', '3 a 4 vezes ao dia', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(sinusite, 1, comprimidoEferverescente, paracetamolBen_u_ron, entre14a17anos, '  ', '500mg', '  ', '3 a 4 vezes ao dia', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(sinusite, 1, comprimido, paracetamolBen_u_ron, mais18anos, '  ', '750mg', '  ', '3 a 5 vezes ao dia', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(sinusite, 1, xarope, paracetamolBen-u-ron , entre3a12meses, '  ', 'entre 0.4 e 0.8ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(sinusite, 1, xarope, paracetamolBen-u-ron , entre1a4anos, '  ', 'entre 0.4 e 0.8ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).

medicamento(conjuntiviteBacteriana, 2, gotas,'Tobramicina Colirio', '  ','  ','  ','  ','4 em 4 horas',  'Pode ser tomado a qualquer hora' ,[gravidez, amamentacao, alergiaTobramicina]).

medicamento(infecaoUrinaria, 2 , comprimido , amoxicilina , '  ' , mais40kg, 'entre 250mg a 1g', '  ', '2 a 3 vezes ao dia' ,'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(infecaoUrinaria, 2e4 , xarope , amoxicilina , entre10a13anos, '  ', '5ml', '500mg por 5ml' , '8 em 8 horas','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(infecaoUrinaria, 2e4 , xarope , amoxicilina , entre5a9anos, '  ', '5ml', '500mg por 5ml' , '8 em 8 horas','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(infecaoUrinaria, 2e4 , xarope , amoxicilina , entre1a4nos, '  ', '5ml', '500mg por 5ml' , '8 em 8 horas','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(infecaoUrinaria, 2e4 , xarope , amoxicilina , entre3a12meses, '  ', '5ml', '500mg por 5ml' , '8 em 8 horas','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(infecaoUrinaria, 2e4 , xarope , amoxicilina , menos3meses, '  ', '5ml', '250mg por 5ml' , '8 em 8 horas','Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(infecaoUrinaria, 2e4 , xarope , amoxicilina, '  ', menos6kg, '2.5ml', '250mg por 5ml', '8 em 8 horas' ,'Tem de ser tomado depois de comer, nao deve ser tomado com a barriga vazia', [hipersensibilidadeAntibioticosBetaLactamicos]).
medicamento(infecaoUrinaria, 1, xarope, paracetamolBen-u-ron , entre10a13anos, '  ', 'entre 1.9 e 2.5ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(infecaoUrinaria, 1, xarope, paracetamolBen-u-ron , entre5a9anos, '  ', 'entre 1.9 e 2.5ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(infecaoUrinaria, 1, xarope, paracetamolBen-u-ron , entre1a4nos, '  ', 'entre 1.9 e 2.5ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
medicamento(infecaoUrinaria, 1, xarope, paracetamolBen-u-ron , entre3a12meses, '  ', 'entre 1.9 e 2.5ml', '100mg por ml', 'entre 4 e 6 horas', 'Pode tomar com ou sem o acompanhamento de comida', [doencasfigado]).
