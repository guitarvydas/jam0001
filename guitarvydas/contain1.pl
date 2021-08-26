:- dynamic edge/2.

% rectangles can contain rectangles or edges or ellipses
allContains1:-
    forall(rect(R1,_),
	   forall(containedIn(R1,X),
		  printContainment(R1,X))).

containedIn(R1,X):-
    containable(X),
    R1 \= X,
    onSameDiagram(R1,X),
    completelyInside(X,R1).

containable(X):-
    rect(X,_).
containable(X):-
    edge(X,_).
%% ellipses handle separately (ellipse intersects rect -> contains)

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
    
    
