:- op( 800, fx, if).
:- op( 700, xfx, then).
:- op( 300, xfy, or).
:- op( 200, xfy, and).
:- dynamic fact/1.
:- include('BD.pl').
:- include('BC.pl').


% Base de inferencia
demo:- new_derived_fact( P), !,
write( 'Doenca: '), write( P), nl,
assert( fact( P)), medicamento(P,_,X,M,_,_,_,_,_,_), write('Tratamento: '), write(X), write(' - '), write(M), nl,
demo. % Continue
demo:- write('').
new_derived_fact( Concl) :-
if Cond then Concl,
\+ fact( Concl),
composed_fact( Cond).
composed_fact( Cond) :-
fact( Cond).
composed_fact( Cond1 and Cond2) :-
composed_fact( Cond1),
composed_fact( Cond2).
composed_fact( Cond1 or Cond2) :-
composed_fact( Cond1);
composed_fact( Cond2).

fact(tosse_com_expetoracao).
fact(dificuldade_respiratoria).
fact(arrepios_de_frio).
fact(febre).
