:- dynamic doenca/2.
:- dynamic tratamento/4.

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


