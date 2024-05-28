:- include('sistema.pl').
:- include('tratamento.pl').
:- include('hill climbing.pl').
:- include('breadthfirst.pl').
:- use_module(library(lists)).

menu:-
    write(' ----------------------------------------------------------------------------------------------------------'),nl,
    write('|                               Seja Bem-Vindo Aos Tratamentos Possiveis                                   |'),nl,
    write('|                                                                                                          |'),nl,
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                                                                                          |'),nl,
    menu2(XI), menu3(XF), metodo(M), objetivo(O), assert(obj(O)),
    ((  M == 1 ->
            caminho(XI, XF, C),
            assert(origem(XI)),
            assert(destino(XF)),
            hill_climbing(C, [20, 0, 0, min], Caminho);
        M == 2 ->
            (O == 1 -> menorcusto(XI, XF, Caminho); 
            O == 2 -> menortempo(XI, XF, Caminho); 
            O == 3 -> menordois(XI, XF, Caminho));
        M == 3 ->
            (O == 1 -> menorcustobfs(XI, XF, Caminho); 
            O == 2 -> menortempobfs(XI, XF, Caminho); 
            O == 3 -> menordoisbfs(XI, XF, Caminho))
    )),
    comprimento(Caminho, Custo, _),
    comprimento1(Caminho, Tempo, _),
    comprimento(Caminho, _, Tratamento),
    write("Caminho: "), write(Caminho), nl,
    write("Tratamento: "), write(Tratamento), nl,
    write("Custo: "), write(Custo), nl,
    write("Tempo: "), write(Tempo), nl,
    retract_all_asserts.
    
menu2(XI):-
    write('|                                                                                                          |'),nl,
    write('|                                     Indique o estado incial?                                             |'),nl,
    write('|                                                                                                          |'),nl,   
    write('|Indique apenas numeros.                                                                                   |'),nl,
    write('|                                                                                                          |'),nl,
    read(XI).


    menu3(XF):-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                    Qual o destino que quer chegar?                                       |'),nl,
    write('|Indique apenas numeros.                                                                                   |'),nl,
    write('|                                                                                                          |'),nl,
    read(XF).
 

metodo(M):-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                     Indique o metodo que quer utilizar                                   |'),nl,
    write('|                                                                                                          |'),nl,
    write('|1 - Hill Climbing                                                                                         |'),nl,
    write('|2 - Depthfirst                                                                                            |'),nl,
    write('|3 - Breadthfirst                                                                                          |'),nl,
    write('|                                                                                                          |'),nl,
    read(M).


objetivo(O):-
    write('|----------------------------------------------------------------------------------------------------------|'),nl,
    write('|                                        Indique o objetivo                                                |'),nl,
    write('|                                                                                                          |'),nl,
    write('|1 - Menor custo possivel                                                                                  |'),nl,
    write('|2 - Menor tempo possivel                                                                                  |'),nl,
    write('|3 - Ambos os anteriores                                                                                   |'),nl,
    write('|                                                                                                          |'),nl,
    read(O).

    retract_all_asserts :-
        retractall(obj(_)),
        retractall(origem(_)),
        retractall(destino(_)).
        
        
        
      