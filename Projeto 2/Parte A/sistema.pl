:- include('tratamento.pl').

caminho(X,Z,Caminho):- caminho(X,Z,[X],Y), reverse(Y,Caminho).
caminho(X,X,Caminho,Caminho).
caminho(X,Z,Visitado,Caminho):-
    arco(X,Y),
    \+ member(Y,Visitado),
    caminho(Y,Z,[Y | Visitado],Caminho).



comprimento([],0).
comprimento([_],0).
comprimento([X,Y|R],N):- custo(X,Y,C), tempo(X,Y,T),
    comprimento([Y|R],N1), N is N1+C*T.  %dieta é zero rever esta parte


menorcusto(X,Y,C):-caminho(X,Y,C), % gerar
maiscurto(X,Y,C).% testar
maiscurto(X,Y,C):- comprimento(C,NC),!,
\+ menor(X,Y,NC).
menor(X,Y,NC):- caminho(X,Y,C1),
comprimento(C1,NC1),
NC1<NC.
