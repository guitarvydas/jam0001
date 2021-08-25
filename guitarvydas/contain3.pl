:- dynamic contains_1/2.
:- dynamic deep_contains/2.

factContains(Parent,Child):-
    contains_1(Parent,Child),
    onSameDiagram(Parent,Child),
    \+ deep_contains(Parent,Child).

allContainedChildren(R,Bag):-
    bagof(Child,factContains(R,Child),Bag).

allContains(CBag):-
    bagof([R,Bag],allContainedChildren(R,Bag),CBag).

printContainedChildren(R):-
    allContainedChildren(R,Children),
    printContainedChild(R,Children).

printContainedChild(_,[]).
printContainedChild(R,[H|T]):-
    format("contains(~w,~w).~n",[R,H]),
    printContainedChild(R,T).

printAllDirectContains:-
    bagof(R,(rect(R,_),printContainedChildren(R)),_),!.
printAllDirectContains.
