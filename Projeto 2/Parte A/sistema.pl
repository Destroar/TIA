:- include('tratamento.pl').

caminho(X,Z,C):- caminho(X,Z,[X],C), reverse(Y,C).
caminho(X,X,Caminho,Caminho).
caminho(X,Z,Visitado,Caminho):-
    arco(X,Y),
    \+ member(Y,Visitado),
    caminho(Y,Z,[Y | Visitado],Caminho).

