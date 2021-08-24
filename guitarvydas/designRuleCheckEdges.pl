:- dynamic edge/2.
:- dynamic source/2.
:- dynamic target/2.

edgeHasSourceAndTarget(E):-
    edge(E,_),
    source(E,_),
    target(E,_),
    !.
edgeHasSourceAndTarget(E):-
    edge(E,_),
    source(E,_),
    format('FATAL design rule: edge ~w has no target (reconnect edge in drawio)~n',[E]),
    !.
edgeHasSourceAndTarget(E):-
    edge(E,_),
    target(E,_),
    format('FATAL design rule: edge ~w has no source (reconnect edge in drawio)~n',[E]),
    !.
edgeHasSourceAndTarget(E):-
    edge(E,_),
    format('FATAL design rule: edge ~w has no source nor target (reconnect edge in drawio)~n',[E]).

checkThatEdgesExist:-
    edge(_,_),
    !.
checkThatEdgesExist:-
    format('FATAL design rule: no edges at all (reconnect edges in drawio)~n').

designRuleCheckEdges:-
    consult(fb),
    checkThatEdgesExist,
    forall(edge(E,_),
	   edgeHasSourceAndTarget(E)),
    halt.
