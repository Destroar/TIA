arco(Origem,Destino) :- estado(Origem,Destino,_,_,_).

caminho(X,Z,Caminho):- caminho(X,Z,[X],Y), reverse(Y,Caminho).
caminho(X,X,Caminho,Caminho).
caminho(X,Z,Visitado,Caminho):-
    arco(X,Y),
    \+ member(Y,Visitado),
    caminho(Y,Z,[Y | Visitado],Caminho).

%calculo efetuado com o custo
comprimento([],0,[]).
comprimento([_],0,[]).
comprimento([X,Y|R],N,LT):- estado(X,Y,C,_,T), comprimento([Y|R],N1,LT1), N is N1+C, (append([T],LT1,LT), Y < 50).


%calculo efetuado com o tempo
comprimento1([],0,[]).
comprimento1([_],0,[]).
comprimento1([X,Y|R],N, LT):- estado(X,Y,_,Tempo,T), comprimento1([Y|R],N1,LT1), N is N1+Tempo, (append([T],LT1,LT), Y < 50).

%calculo efetuado com ambos
comprimento2([],0,[]).
comprimento2([_],0,[]).
comprimento2([X,Y|R],N, LT):- estado(X,Y,C,Tempo,T), comprimento2([Y|R],N1,LT1), N is N1+C*Tempo, (append([T],LT1,LT), Y < 50).



menorcusto(X,Y,C):-caminho(X,Y,C),
maiscurto(X,Y,C).
menortempo(X,Y,C):-caminho(X,Y,C),
maiscurto2(X,Y,C).
menordois(X,Y,C):-caminho(X,Y,C),
maiscurto3(X,Y,C).

maiscurto(X,Y,C):- comprimento(C,NC,_),!,
\+ menor(X,Y,NC).
maiscurto2(X,Y,C):- comprimento1(C,NC,_),!,
\+ menor2(X,Y,NC).
maiscurto3(X,Y,C):- comprimento2(C,NC,_),!,
\+ menor3(X,Y,NC).

menor(X,Y,NC):- caminho(X,Y,C1),
comprimento(C1,NC1,_),
NC1<NC.
menor2(X,Y,NC):- caminho(X,Y,C1),
comprimento1(C1,NC1,_),
NC1<NC.
menor3(X,Y,NC):- caminho(X,Y,C1),
comprimento2(C1,NC1,_),
NC1<NC.