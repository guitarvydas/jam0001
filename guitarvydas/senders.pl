makesender(Edge):-
    edge(Edge,_),
    source(Edge,Source),
    lookupid(Source,SourceID),
    format("source(~w,~w).~n", [Edge,SourceID]).

sendersmain:-
    consult(fb),
    forall(edge(E,_),
	   makesender(E)).
