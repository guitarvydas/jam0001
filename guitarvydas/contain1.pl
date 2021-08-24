:- dynamic edge/2.

% rectangles can contain rectangles or edges
allContains1:-
    forall(rect(R1,_),
	   container(R1)).

container(R1):-
    forall(contained(R1,R2),
	   forall(rect(R2,_),
		  printContainment(R1,R2))).

contained(R1,R2):-
    rect(R2,_),
    R1 \= R2,
    onSameDiagram(R1,R2),
    completelyInside(R2,R1).
contained(R,E):-
    edge(E,_),
    R \= E,
    onSameDiagram(R,E),
    completelyInside(E,R).

printContainment(R1,R2):-
    contained(R1,R2),
    format("contains1(~w,~w).~n",[R1,R2]).

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
    
    
