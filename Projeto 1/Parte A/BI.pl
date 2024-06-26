% Base de inferencia
demo:- 
    new_derived_fact(P), !,
    democ(P, Cert), !,
    escreverResultado(P, Cert),nl,
    demo. % Continuação
demo:- retractall(fact(_)).

new_derived_fact( Concl) :-
    if Cond then Concl:_,
    \+ fact( Concl),
    composed_fact( Cond),
    assert(fact( Concl)).

composed_fact(Cond) :-
    fact(Cond: _).

composed_fact(Cond1 and Cond2) :-
    composed_fact(Cond1),
    composed_fact(Cond2).

composed_fact(Cond1 or Cond2) :-
    composed_fact(Cond1);
    composed_fact(Cond2).

democ(P, Cert) :- fact(P: Cert).
democ(Cond1 and Cond2, Cert) :- 
    democ(Cond1, Cert1), 
    democ(Cond2, Cert2), 
    Cert is min(Cert1, Cert2).

democ(Cond1 or Cond2, Cert) :-
    democ(Cond1, Cert1), 
    democ(Cond2, Cert2), 
    Cert is max(Cert1, Cert2).
democ(P, Prob) :- 
    (if Cond then P : C1 ; C1=0), 
    democ(Cond, C2), 
    Cert is C1 * C2,
    (Cert = 0 -> Prob = 0.5 ; Prob is Cert ).