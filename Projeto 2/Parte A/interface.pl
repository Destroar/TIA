

:- include('sistema.pl').
:- include('tratamento.pl').
# :- include('BI.pl').


menu:-
    write(' ----------------------------------------------------------------------------------------------------------'),nl,
    write('|                               Seja Bem-Vindo Aos Tratamentos Possiveis                                   |'),nl,
    write('|                                                                                                          |'),nl,
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                                                                                          |'),nl,
    menu2(XI),menu3(XF),metodo(M),objetivo(O).

menu2(XI):-
    write('|                                                                                                          |'),nl,
    write('|                                     Indique o estado incial?                                             |'),nl,
    write('|Indique apenas numeros.                                                                                   |'),nl,
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    read(XI).


    menu3(XF):-
    write('|                                                                                                          |'),nl,
    write('|                        Qual o destino que quer chegar?                                                   |'),nl,
    write('|Indique apenas numeros.                                                                                   |'),nl,
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                                                                                          |'),nl,
    read(XF).
 

metodo(M):-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                        Indique o metodo que quer utilizar                                |'),nl,
    write('|                                                                                                          |'),nl,
    write('|1 - Hill Climbing                                                                                         |'),nl,
    write('|2 - Caminho em Grafos                                                                                     |'),nl,
    write('|2 - Depthfirst                                                                                            |'),nl,
    write('|3 - Breadthfirst                                                                                          |'),nl,
    write('|                                                                                                          |'),nl,
    read(M).


objetivo(O):-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                        Indique o objetivo                                                |'),nl,
    write('|                                                                                                          |'),nl,
    write('|1 - Menor tempo possivel                                                                                  |'),nl,
    write('|2 - Menor custo possivel                                                                                  |'),nl,
    write('|3 - Ambos os anteriores                                                                                   |'),nl,
    write('|                                                                                                          |'),nl,
    read(O).

