
makename(C):-
    fillColor(C,"red"),
    gensym(c,Name),
    rect(C,_),
    format("factcomponentname(~w,\"~w\").~n",[C,Name]),
    !.
makename(C):-
    value(C,""),
    rect(C,_),
    format("factcomponentname(~w,\"~w\").~n",[C,C]),!.
makename(C):-
    value(C,Name),
    rect(C,_),
    format("factcomponentname(~w,\"~w\").~n",[C,Name]),!.
makename(C):-
    %value(C,""),
    ellipse(C,_),
    portdirection(C,input),
    format("factportname(~w,\"in\").~n",[C]),!.
makename(C):-
    %value(C,Name),
    ellipse(C,_),
    format("factportname(~w,\"out\").~n",[C]),!.
makename(C):-
    gensym(c,Name),
    format("unknowncomponentname(~w,\"~w\").~n",[C,Name]).

getname(Parent,Child,Name):-
    Child \= Parent,
    factcomponentname(Child,Name).
getname(Parent,Child,Name):-
    Child \= Parent,
    factportname(Child,Name).
getname(_,_,self).

componentname(C,Name):-
    factcomponentname(C,Name).

portname(C,Name):-
    factcomponentname(C,Name).
portname(C,Name):-
    factportname(C,Name).



printNames:-
    forall( (component(C) ; port(C)),
	    makename(C)
	  ).
