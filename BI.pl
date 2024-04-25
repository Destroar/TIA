:- op( 800, fx, if).
:- op( 700, xfx, then).
:- op( 300, xfy, or).
:- op( 200, xfy, and).
:- dynamic (fact/1).
:- dynamic (escreverResultado/1).
:- include('BC.pl').


% Base de inferencia
demo:- 
    new_derived_fact( P), !,
    escreverResultado(P),nl,
    assert(fact(P)),
    demo. % Continuação
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