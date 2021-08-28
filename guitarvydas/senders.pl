makesender(Edge):-
    edge(Edge,_),
    source(Edge,SourceLong),
    lookupid(SourceID,SourceLong),
    format("sender(~w,~w).~n", [Edge,SourceID]).

sendersmain:-
    consult(fb),
    forall(edge(E,_),
	   makesender(E)).
