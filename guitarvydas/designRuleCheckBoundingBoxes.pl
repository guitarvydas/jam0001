:- dynamic rect/2.
:- dynamic ellipse/2.
:- dynamic text/2.
:- dynamic vertex/2.
:- dynamic l/2.
:- dynamic t/2.
:- dynamic r/2.
:- dynamic b/2.

hasBB(Item):-
    l(Item,_),
    t(Item,_),
    r(Item,_),
    b(Item,_).

hasExactlyOneBB(Item):-
    bagof(V,l(Item,V),LBag),
    length(LBag,1),
    bagof(V,t(Item,V),TBag),
    length(TBag,1),
    bagof(V,r(Item,V),RBag),
    length(RBag,1),
    bagof(V,b(Item,V),BBag),
    length(BBag,1),
    !.
hasExactlyOneBB(Item):-
    value(Item,Name),
    format('FATAL design rule: Item ~w (~w) has 0 or more than one bounding boxes~n', [Item,Name]),!.
hasExactlyOneBB(Item):-
	format('FATAL design rule: Item ~w has 0 or more than one bounding boxes~n', [Item]).

checkBB(Item):-
    hasExactlyOneBB(Item).

designRuleCheckBoundingBoxes:-
    consult(fb),
    forall(vertex(V,_),
	   checkBB(V)),
    halt.
