:- include('tratamento.pl').

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
comprimento([X,Y|R],N,LT):- estado(X,Y,C,_,T), comprimento([Y|R],N1,LT1), N is N1+C,append([T],LT1,LT).


%calculo efetuado com o tempo
comprimento1([],0).
comprimento1([_],0).
comprimento1([X,Y|R],N):- estado(X,Y,_,T,_), comprimento1([Y|R],N1), N is N1+T.

%calculo efetuado com ambos
comprimento2([],0).
comprimento2([_],0).
comprimento2([X,Y|R],N):- estado(X,Y,C,T,_), comprimento2([Y|R],N1), N is N1+C*T.



menorCusto(X,Y,C):-caminho(X,Y,C), % gerar
maiscurto(X,Y,C).% testar
maiscurto(X,Y,C):- comprimento(C,NC,_),!,
\+ menor(X,Y,NC).
menor(X,Y,NC):- caminho(X,Y,C1),
comprimento(C1,NC1,_),
NC1<NC.
