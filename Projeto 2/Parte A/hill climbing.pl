% hill climbing
% Prob=0 is pure hill climbing, Prob>0 means Stochastic Hill Climbing
% S0 is the initial solution, Control is a list with the number of iterations, verbose in console, probability and type of optimization.
hill_climbing(S0, [Iter, Verbose, Prob, Opt], S1) :-
    obj(O),
    (O == 1 -> comprimento(S0, E0, _)
    ; O == 2 -> comprimento1(S0, E0, _)
    ; O == 3 -> comprimento2(S0, E0, _)),
    hill_climbing_iter(S0, E0, 0, Iter, Verbose, Prob, Opt, S1).

hill_climbing_iter(S, _, Iter, Iter, _, _, _, S) :- nl, nl, !.
hill_climbing_iter(S1, E1, I, Iter, Verbose, Prob, Opt, SFinal) :-
    I < Iter,
    change(S1, SNew),
    best(Prob, Opt, S1, E1, SNew, _, S2, E2),
    I1 is I + 1,
	write('Iteracao: '), write(I1), nl,
    hill_climbing_iter(S2, E2, I1, Iter, Verbose, Prob, Opt, SFinal).

% return SR, the best value of S1 and S2: SR (solution) and ER (eval)
best(Prob,Opt,S1,E1,S2,E2,SR,ER):-
	obj(O),
	(O == 1 -> comprimento(S2, E2, _); 
	O == 2 -> comprimento1(S2, E2, _); 
	O == 3 -> comprimento2(S2, E2, _)),
	best_opt(Prob,Opt,S1,E1,S2,E2,SR,ER).

% Ensure the debugging output within best_opt to see if it selects the correct path
best_opt(Prob, _, _, _, S2, E2, S2, E2) :-
    random(X), % random from 0 to 1
    X < Prob, % accept new solution
    write('Aceitar nova solucao: '), write(S2), nl.

best_opt(_, Opt, S1, E1, S2, E2, SR, ER) :-
    (Opt == max -> max_list([E1, E2], ER); min_list([E1, E2], ER)),
    (ER == E1 -> SR = S1; ER == E2 -> SR = S2),
    write('Melhor solucao ate agora: '), write(SR), nl.

change(S, SNEW):-origem(O), destino(D),
    findall(X,caminho(O,D,X),L), length(L,LE), random(0,LE,R), nth0(R,L,SNEW),
    dif(SNEW,S).
change(S,SNEW):-change(S,SNEW).
