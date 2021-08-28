:- dynamic edge/2.
:- dynamic sender/2.
:- dynamic receiver/2.

edgeHasSenderAndReceiver(E):-
    edge(E,_),
    sender(E,_),
    receiver(E,_),
    !.
edgeHasSenderAndReceiver(E):-
    edge(E,_),
    sender(E,_),
    format('FATAL design rule: edge ~w has no receiver (reconnect edge in drawio)~n',[E]),
    !.
edgeHasSenderAndReceiver(E):-
    edge(E,_),
    receiver(E,_),
    format('FATAL design rule: edge ~w has no sender (reconnect edge in drawio)~n',[E]),
    !.
edgeHasSenderAndReceiver(E):-
    edge(E,_),
    format('FATAL design rule: edge ~w has no sender nor receiver (reconnect edge in drawio)~n',[E]).

checkThatEdgesExist:-
    edge(_,_),
    !.
checkThatEdgesExist:-
    format('FATAL design rule: no edges at all (reconnect edges in drawio)~n').

designRuleCheckEdges:-
    consult(fb),
    checkThatEdgesExist,
    forall(edge(E,_),
	   edgeHasSenderAndReceiver(E)),
    halt.
