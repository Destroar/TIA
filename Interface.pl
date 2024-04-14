menu:- 
    write(' ----------------------------------------------------------------------------------------------------------'),nl,
    write('|                               Seja Bem-Vindo Ao Teste De Sintomas                                        |'),nl,
    write('|                                                                                                          |'),nl,
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|Descubra possíveis doenças e tratamentos através deste teste.                                             |'),nl,
    write('|                                                                                                          |'),nl,
    write('|1-Iniciar o teste                                                                                         |'),nl,
    write('|2-Sair                                                                                                    |'),nl,
    read(X),
    opcoes(X).

opcoes(1):- questoesIniciais.
opcoes(2):-
    write('|Obrigada.                                                                                                 |'),halt.
opcoes(_):-
    write('|Introduza uma opção válida. Comece de novo.                                                               |'),nl,menu.

questoesIniciais:-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|Qual a sua idade?                                                                                         |'),nl,
    read(I),
    write('|                                                                                                          |'),nl,
    write('|Qual o seu peso em kg?                                                                                          |'),nl,
    read(P),
    write('|                                                                                                          |').