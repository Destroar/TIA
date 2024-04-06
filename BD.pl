:- dynamic doenca/2.
:- dynamic tratamento/4.

Legenda: 
Tratamento: Administração de analgésicos e anti-inflamatórios - 1
            Administração de antibióticos - 2



%medicamento(nome, tratamento, tipomedicamento, medicamento, idadeTratamento, pesotratamento, prescricao, dose, VezesAoDIA, condicaoespecial, limite)

medicamento(pneumonia, 1, Xarope, ParacetamolBen-u-ron , mais3meses, entre3e6kg, entre0.4e0.8ml, 100mgporml, entre4e6horas, doencasfigado, 5pordia)

medicamento(pneumonia, 1, Xarope, ParacetamolBen-u-ron , mais3meses, entre6e9kg, entre0.8e1.1ml, 100mgporml, entre4e6horas, doencasfigado, 5pordia)

medicamento(pneumonia, 1, Xarope, ParacetamolBen-u-ron , mais3meses, entre9e12kg, entre1.1e1.5ml, 100mgporml, entre4e6horas, doencasfigado, 5pordia)

medicamento(pneumonia, 1, Xarope, ParacetamolBen-u-ron , mais3meses, entre12e15kg, entre1.9e1.5ml, 100mgporml, entre4e6horas, doencasfigado, 5pordia)

medicamento(pneumonia, 1, Xarope, ParacetamolBen-u-ron , mais3meses, entre15e20kg, entre2.5e1.9ml, 100mgporml, entre4e6horas, doencasfigado, 5pordia)

medicamento(pneumonia, 2 , Comprimido , Amoxicilina , null , mais40kg, entre250mga1g, null, 2a3vezes , hipersensibilidadeAntibioticosBetaLactamicos, 6gDia)

medicamento(pneumonia, 2 , Xarope , Amoxicilina , mais3anos, null, 5ml, 500mgpor5ml , 8em8horas, hipersensibilidadeAntibioticosBetaLactamicos, null)

medicamento(pneumonia, 2 , Xarope , Amoxicilina , menos3anos, null, 5ml, 250mgpor5ml , 8em8horas, hipersensibilidadeAntibioticosBetaLactamicos, null)

medicamento(pneumonia, 2 , Xarope ,Amoxicilina, null, menos6kg, 2.5ml, 250mgpor5ml, 8em8horas , hipersensibilidadeAntibioticosBetaLactamicos, null)

medicamento(pneumonia, 1 , ComprimidoEferverescente, ParacetamolBen-u-ron , mais12anos , null, 500mg, null, 4a6horas, doencasfigado,null)

medicamento(pneumonia, 1 , Comprimido, ParacetamolBen-u-ron , mais12anos , null, 750mg, null, 2a3vezes, doencasfigado, null)

medicamento(Pneumonia, 1 , Comprimido, Brufenon , mais18anos , null, 700mg, null, 6em6horas, condicao[Gravidez, Amamentacao], 6pordia)























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


