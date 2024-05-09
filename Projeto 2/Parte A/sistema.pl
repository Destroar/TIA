:- include('tratamento.pl').

caminho(X,Z,C):- caminho(X,Z,[X],C), reverse(Y,C).
caminho(X,X,Caminho,Caminho).
caminho(X,Z,Visitado,Caminho):-
    arco(X,Y),
    \+ member(Y,Visitado),
    caminho(Y,Z,[Y | Visitado],Caminho).

caminhomenorcusto(X,Y) :-
    caminho(X,Y,P),
    inverte(P,K),
    menorcusto(X,Y,K),
    custo_total(K,N),
    resposta(K,N).
    
menorcusto(X,Y,P):-
    custo_total(P,N),
    !,
    \+ menor(X,Y,N).
    
menor(X,Y,N):-
    caminho(X,Y,P1),
    custo_total(P1,N1),N1<N.
    
custo_total([_],0).
    
custo_total([X,Y|Z],Custo):-
    custo(X,Y,N1),
    custo_total([Y|Z],N2), Custo is N1+N2.
    
resposta(C,K):- nl,write(' Melhor Percuso :'),write(C),write( ', Custo : ') , write(K), nl .
    
concatenar([], L, L).
concatenar([H|T], L, [H|D]) :- concatenar(T, L, D).
inverte([], []).
inverte([H|T], L) :- inverte(T, X), concatenar(X, [H], L).
    