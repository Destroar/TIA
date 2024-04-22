menu:-
    write(' ----------------------------------------------------------------------------------------------------------'),nl,
    write('|                               Seja Bem-Vindo Ao Teste De Sintomas                                        |'),nl,
    write('|                                                                                                          |'),nl,
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|Descubra possíveis doenças e tratamentos através deste teste.                                             |'),nl,menu2.
    
menu2:-
    write('|                                                                                                          |'),nl,
    write('|1-Iniciar o teste                                                                                         |'),nl,
    write('|2-Sair                                                                                                    |'),nl,
    read(X),
    opcoes(X).

opcoes(1):- questoesIniciais.
opcoes(2):-
    write('|Obrigada.                                                                                                 |'),halt.
opcoes(_):-
    write('|Introduza uma opção válida.                                                                               |'),nl,menu2.


questoesIniciais:-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                                                                                          |'),nl,
    write('|Qual o seu Nome?                                                                                          |'),nl,
    read(N),
    write('|                                                                                                          |'),nl,
    write('|Qual a sua idade?                                                                                         |'),nl,
    read(I),
    write('|                                                                                                          |'),nl,
    write('|Qual o seu peso em kg?                                                                                    |'),nl,
    read(P),
    write('|                                                                                                          |'),nl,
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                                                                                          |'),nl,
    write('|Nome:      ?                                                                                              |'),nl,
    write('|Idade:      ?                                                                                             |'),nl,
    write('|Peso:        ?                                                                                            |'),nl,
    write('|                                                                                                          |'),nl,
    write('|                   Porfavor confirme os dados fornecidos para podermos iniciar o teste                    |'),nl,
    write('|----------------------------------------------------------------------------------------------------------|'),nl,confirmacao.

confirmacao:-
    write('|                                                                                                          |'),nl,
    write('|1-Cofirmado  ??                                                                                           |'),nl,
    write('|2-Editar / Reintroduzir dados                                                                             |'),nl,
    read(C),
    opcao(C).

opcoes(1):- questoesSintomas.
opcoes(2):- questoesIniciais.
opcoes(_):-
    write('|Introduza uma opção válida.                                                                               |'),nl,confirmacao.

questoesSintomas:-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                                                                                          |'),nl,
    write('|Tem febre?                                                                                                |'),nl,
    write('|                                                                                                          |'),nl,
    read(F),
    write('|Tem dor de cabeca?                                                                                                          |'),nl,
    write('|                                                                                                          |'),nl,
    read(Ca), ?
    write('|Tem tosse seca?                                                                                           |'),nl,
    read(S),
    write('|                                                                                                          |'),nl,
    write('|Tem tosse com expetoração?                                                                                           |'),nl,
    read(E),
    write('|                                                                                                          |'),nl,
    write('|Tem dificuldade a respirar?                                                                                           |'),nl,
    read(R),
    write('|                                                                                                          |'),nl,
    write('|Tem mal-estar geral?                                                                                      |'),nl,
    read(S),
    write('|                                                                                                          |'),nl,
    write('|Tem náuseas?                                                                                              |'),nl,
    read(N),
    write('|                                                                                                          |'),nl,
    write('|Tem vómitos?                                                                                              |'),nl,
    read(V),
    write('|                                                                                                          |'),nl,
    write('|Tem fadiga?                                                                                               |'),nl,
    read(F),
    write('|                                                                                                          |'),nl,
    write('|Tem calafrios ?                                                                                           |'),nl,
    read(Cf),
    write('|                                                                                                          |'),nl,
    write('|Tem diarreia?                                                                                             |'),nl,
    read(Di),
    write('|                                                                                                          |'),nl,
    write('|Tem dor de garganta?                                                                                      |'),nl,
    read(G),
    write('|                                                                                                          |'),nl,
    write('|Tem dor de ouvidos?                                                                                           |'),nl,
    read(O),
    write('|                                                                                                          |'),nl,
    write('|Tem dores musculares?                                                                                     |'),nl,
    read(S),
    write('|                                                                                                          |'),nl,
    write('|Tem nariz entupido?                                                                                           |'),nl,
    read(Et),
    write('|                                                                                                          |'),nl,
    write('|Tem falta de ar?                                                                                           |'),nl,
    read(Ar),
    write('|                                                                                                          |'),nl,
    write('|Tem vermelhidão nos olhos?                                                                                           |'),nl,
    read(S),
    write('|                                                                                                          |'),nl,
    write('|Tem tosse seca?                                                                                           |'),nl,
    read(S),
