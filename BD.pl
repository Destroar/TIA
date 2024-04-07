:- dynamic doenca/2.
:- dynamic tratamento/4.

Legenda: 
Tratamento: Administração de analgésicos e anti-inflamatórios - 1
            Administração de antibióticos - 2
            Administração de antifúngico - 3
            Efetuar testes - 4
            Administração intravenosa - 5
            Administração de antiviral - 6 - Apenas alivia os sintomas não trata a doença
            Administracao de antihistaminicos - 7
            



%medicamento(nome, tratamento, tipomedicamento, medicamento, idadeTratamento, pesotratamento, prescricao, dose, VezesAoDIA, condicaoespecial)

medicamento(pneumonia, 1, Xarope, ParacetamolBen-u-ron , mais3meses, entre3e6kg, entre0.4e0.8ml, 100mgporml, entre4e6horas, [doencasfigado])
medicamento(pneumonia, 1, Xarope, ParacetamolBen-u-ron , mais3meses, entre6e9kg, entre0.8e1.1ml, 100mgporml, entre4e6horas, [doencasfigado])
medicamento(pneumonia, 1, Xarope, ParacetamolBen-u-ron , mais3meses, entre9e12kg, entre1.1e1.5ml, 100mgporml, entre4e6horas, [doencasfigado])
medicamento(pneumonia, 1, Xarope, ParacetamolBen-u-ron , mais3meses, entre12e15kg, entre1.9e1.5ml, 100mgporml, entre4e6horas, [doencasfigado])
medicamento(pneumonia, 1, Xarope, ParacetamolBen-u-ron , mais3meses, entre15e20kg, entre2.5e1.9ml, 100mgporml, entre4e6horas, [doencasfigado])
medicamento(pneumonia, 2 , Comprimido , Amoxicilina , null , mais40kg, entre250mga1g, null, 2a3vezes , [hipersensibilidadeAntibioticosBetaLactamicos])
medicamento(pneumonia, 2 , Xarope , Amoxicilina , mais3anos, null, 5ml, 500mgpor5ml , 8em8horas, [hipersensibilidadeAntibioticosBetaLactamicos])
medicamento(pneumonia, 2 , Xarope , Amoxicilina , menos3anos, null, 5ml, 250mgpor5ml , 8em8horas, [hipersensibilidadeAntibioticosBetaLactamicos])
medicamento(pneumonia, 2 , Xarope ,Amoxicilina, null, menos6kg, 2.5ml, 250mgpor5ml, 8em8horas , [hipersensibilidadeAntibioticosBetaLactamicos])
medicamento(pneumonia, 1 , ComprimidoEferverescente, ParacetamolBen-u-ron , mais12anos , null, 500mg, null, 4a6horas, [doencasfigado])
medicamento(pneumonia, 1 , Comprimido, ParacetamolBen-u-ron , mais12anos , null, 750mg, null, 2a3vezes, [doencasfigado])
medicamento(pneumonia, 1 , Comprimido, Brufenon , mais18anos , null, 700mg, null, 6em6horas, [Gravidez, Amamentacao])
medicamento(candidiaseOral, 3, Pomada, Clotrimazol, null, null, null, null, 2a3vezesdia , [hipersensibilidadeClotrimazol,Gravidez, Amamentacao])
medicamento(candidiaseOral, 3, Pomada, Fluconazol, mais18anos, null, 400mginiciale200depois, null, 1vezdia , [hipersensibilidadefluconazol])

IMPORTANTE - APENAS SE A CAUSA FOR BACTERIANA CONSOANTE TESTE (Amigdalite em baixo)- PODEMOS ADICIONAR UM ANTIINFLAMATORIO
medicamento(amigdalite, 2 , Comprimido , Amoxicilina , null , mais40kg, entre250mga1g, null, 2a3vezes , [hipersensibilidadeAntibioticosBetaLactamicos])
medicamento(amigdalite, 2e4 , Xarope , Amoxicilina , mais3anos, null, 5ml, 500mgpor5ml , 8em8horas, [hipersensibilidadeAntibioticosBetaLactamicos])
medicamento(amigdalite, 2e4 , Xarope , Amoxicilina , menos3anos, null, 5ml, 250mgpor5ml , 8em8horas, [hipersensibilidadeAntibioticosBetaLactamicos])
medicamento(amigdalite, 2e4 , Xarope , Amoxicilina, null, menos6kg, 2.5ml, 250mgpor5ml, 8em8horas , [hipersensibilidadeAntibioticosBetaLactamicos])
medicamento(otite, 2 , Comprimido , Amoxicilina , null , mais40kg, entre250mga1g, null, 2a3vezes , [hipersensibilidadeAntibioticosBetaLactamicos])
medicamento(otite, 2 , Xarope , Amoxicilina , mais3anos, null, 5ml, 500mgpor5ml , 8em8horas, [hipersensibilidadeAntibioticosBetaLactamicos])
medicamento(otite, 2 , Xarope , Amoxicilina , menos3anos, null, 5ml, 250mgpor5ml , 8em8horas, [hipersensibilidadeAntibioticosBetaLactamicos])
medicamento(otite, 2, Xarope , Amoxicilina, null, menos6kg, 2.5ml, 250mgpor5ml, 8em8horas , [hipersensibilidadeAntibioticosBetaLactamicos])
medicamento(otite, 5, Injecao, Cefuroxima, mais18anos, null, 750mg, null, 3vezesdia, [Gravidez, Amamentacao])
medicamento(otite, 5, Injecao, Cefuroxima, mais2meses, null, 30a100mg/kg/dia, null, 3a4vezesdia, [Gravidez, Amamentacao])
medicamento(otite, 5, Injecao, Cefuroxima, menos2meses, null, 30a100mg/kg/dia, null, 2a3vezesdia, [Gravidez, Amamentacao])
medicamento(zona, 6, Comprimido, Aciclovir, mais18anos, null, 800mg, null, 4a4horas, [AlergiaAciclovir, Gravidez, Amamentacao, Idosos, Criancas, Bebes]) verificar com medico idosos criancas e bebes  
medicamento(AlergiaAlimentar, 7, Comprimido, Cetirizina Aurobindo, mais12anos, null, 10mg,null, 1vezdia, null)
medicamento(AlergiaAlimentar, 7, Xarope, Cetirizina Aurobindo, mais12anos, null, 5a10ml , 120ml, 1vezdia, null)
medicamento(AlergiaAlimentar, 7, Xarope, Cetirizina Aurobindo, entre6e11anos, null, 5ml , 120ml, 12em12horas, null)
medicamento(AlergiaAlimentar, 7, Xarope, Cetirizina Aurobindo, entre2e5anos, null, 2.5ml , 120ml, 12em12horas, null)
medicamento(AlergiaRespiratoria, 7, Comprimido, Cetirizina Aurobindo, mais12anos, null, 10mg,null, 1vezdia, null)
medicamento(AlergiaRespiratoria, 7, Xarope, Cetirizina Aurobindo, mais12anos, null, 5a10ml , 120ml, 1vezdia, null)
medicamento(AlergiaRespiratoria, 7, Xarope, Cetirizina Aurobindo, entre6e11anos, null, 5ml , 120ml, 12em12horas, null)
medicamento(AlergiaRespiratoria, 7, Xarope, Cetirizina Aurobindo, entre2e5anos, null, 2.5ml , 120ml, 12em12horas, null)

























---------------------------------------------------------------//---------------------------------------------------------------------------------



doenca(asma, sintomas(pieira, falta de ar, sensacao de aperto no peito, tosse)).

doenca(pneumonia, sintomas(febre, arrepios de frio, tosse com expetoração, dificuldade respiratória, dor tóracica, dor de cabeça, dor muscular)).

doenca(bronquite, sintomas(tosse, falta de ar, dor no peito, febre, fadiga)).

doenca(enfisema pulmunar, sintomas(dificuldade respiratória, pieira, unhas e lábios coloração azulada ou acinzentada, dificuldade de concentração, 
aumento da frequência cardíaca, perda de peso)).

doenca(anafilaxia, sintomas(comichão, urticária, edema dos lábios língua pálpebras, tosse, dificuldade respiratória, pieira, náuseas, vómitos, 
cólicas abdominais, diarreia, inchaço, urticária, diminuição súbita da pressão arterial, falta de ar, dificuldade em engolir)).

doenca(pneumotórax, sintomas(dor torácica, dificuldade respiratória)).

doenca(fibrose pulmonar, sintomas(tosse seca e crónica, dificuldade respiratórias, desconforto torácico, extremidades frias e arroxeadas, 
diminuição apetite, perda de peso, dores musculares e articulares)).



% tratamento(doenca, tratamento, idade, gravidez).

tratamento(pneumonia, paracetamol ben-u-ron, -18, 0).
tratamento(pneumonia, brufenon, +18, 0).
tratamento(bronquite, repouso, 0, 0).
tratamento(bronquite, ingestão de líquidos em abundância, 0, 0).
tratamento(bronquite, aspirina c, +12, 1).
tratamento(bronquite, aspirina complex, +16, 0).
tratamento(bronquite, parecetamol, 0, 0).


