makereceiver(Edge):-
    edge(Edge,_),
    target(Edge,Target),
    lookupid(Target,TargetID),
    format("receiver(~w,~w).~n", [Edge,TargetID]).

receiversmain:-
    consult(fb),
    forall(edge(E,_),
	   makereceiver(E)).
