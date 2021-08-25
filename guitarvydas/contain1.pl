:- dynamic edge/2.

% rectangles can contain rectangles or edges
allContains1:-
    forall(rect(R1,_),
	   forall(containedIn(R1,X),
		  printContainment(R1,X))).

containedIn(R1,X):-
    (rect(X,_);edge(X,_)),
    R1 \= X,
    onSameDiagram(R1,X),
    completelyInside(X,R1).

printContainment(R1,X):-
    format("contains_1(~w,~w).~n",[R1,X]).

% succeeds only if B's bounding box is fully inside A's bounding box, inclusively
completelyInside(B,A):-
    l(B,Bl),
    t(B,Bt),
    r(B,Br),
    b(B,Bb),
    l(A,Al),
    t(A,At),
    r(A,Ar),
    b(A,Ab),
    Bl >= Al,
    Bl =< Ar,
    Br >= Al,
    Br =< Ar,
    Bt >= At,
    Bt =< Ab,
    Bb >= At,
    Bb =< Ab.
    
    
