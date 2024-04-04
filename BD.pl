:- dynamic doenca/2.
:- dynamic tratamento/4.

%doenca(nome, sintomas)
%medicamento(nome, tratamento, tipomedicamento, medicamento, idadeTratamento, pesotratamento, dose, VezesAoDIA condicaoespecial)

doenca(pneumonia, sintomas(febre, arrepios de frio, tosse com expetoracao, dificuldade respiratoria, dor toracica, dor de cabeca, dor muscular))   

medicamento(pneumonia, administracao de analgesicos e anti inflamatorios, Xarope-suspensao oral, Paracetamol ben-u-ron , +3meses, 
null, Consultar bula, consultar bula, null)

medicamento(pneumonia,administracao de antibioticos, Amoxicilina,comprimido, null, +40kg, 750mg-3g, 2-3, pessoas com hipersensibilidade a antibioticos beta-lactamicos)

medicamento(pneumonia, administracao de antibioticos, Xarope-suspensao oral,Amoxicilina, +3anos, null, 5ml de 500mg, 8h-8h, 
pessoas com hipersensibilidade a antibioticos beta-lactamico)

medicamento(pneumonia, administracao de antibioticos, Xarope-suspensao oral,Amoxicilina, null, -6kg, 2.5ml de 250mg, 8h-8h,
pessoas com hipersensibilidade a antibioticos beta-lactamicos)

medicamento(pneumonia, administracao de analgesicos e anti inflamatorios, comprimido, Paracetamol ben-u-ron , +12, 
null, 1 a 2 comprimidos de 500mg, 4-6 horas, null)















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


