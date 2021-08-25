:- dynamic contains_1/2.

deepcontains_1(Parent,GrandChild):-
    onSameDiagram(Parent,GrandChild),
    contains_1(Parent,GrandChild),
    contains_1(Child,GrandChild),
    contains_1(Parent,Child).
deepcontains_1(Parent,GrandChild):-
    onSameDiagram(Parent,GrandChild),
    contains_1(Parent,GrandChild),
    contains_1(Child,GrandChild),
    deepcontains_1(Parent,Child).

deepcontains(R,Bag):-
    setof(X,deepcontains_1(R,X),Bag).

printContains(R):-
    deepcontains(R,Bag),
    printContainsSingle(R,Bag).

printContainsSingle(_,[]).
printContainsSingle(R,[H|T]):-
    format("deep_contains(~w,~w).~n", [R,H]),
    printContainsSingle(R,T).

printAllDeepContains:-
    bagof(R,(rect(R,_),printContains(R)),_).
printAllDeepContains.
