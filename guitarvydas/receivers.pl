makereceiver(Edge):-
    edge(Edge,_),
    target(Edge,TargetLong),
    lookupid(TargetID,TargetLong),
    format("receiver(~w,~w).~n", [Edge,TargetID]).

receiversmain:-
    consult(fb),
    forall(edge(E,_),
	   makereceiver(E)).
