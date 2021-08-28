:- dynamic edge/2.
:- dynamic ellipse/2.

component(C):-
    rect(C,_).
port(C):-
    ellipse(C,_).

component(Diagram,C,Name,Ins,Outs,SyncCode,Children,Connections) :-
    diagramContains(Diagram,C),
    rect(C,_),
    componentname(C,Name),
    inputsof(C,Ins),
    outputsof(C,Outs),
    componentcode(C,SyncCode),
    childrenOf(C,Children),
    connectionsOf(C,Connections).

inputsof(C,InBag):-
    inputof(C,_),
    bagof(I,inputof(C,I),InBag),
    !.
inputsof(_,[]).

outputsof(C,InBag):-
    outputof(C,_),
    bagof(I,outputof(C,I),InBag),
    !.
outputsof(_,[]).

    

childrenOf(C,Children):-
    childof(C,_),
    bagof(Child,childof(C,Child),Children),!.
childrenOf(_,[]).

connectionsOf(C,Connections):-
    connectionOf(C,_),
    bagof(Conn,connectionOf(C,Conn),Connections),!.
connectionsOf(_,[]).
    

toplevelComponent(Diagram,C):-
    diagramContains(Diagram,C),
    rect(C,_),
    value(C,_),
    \+ contains(_,C).

childComponent(Diagram,C):-
    diagramContains(Diagram,C),
    rect(C,_),
    value(C,_).

alltoplevelComponentsOnDiagram(Diagram,Bag):-
    setof(C,toplevelComponent(Diagram,C),Bag).

allchildrenComponents(C,Bag):-
    setof(Child,contains(C,Child),Bag).

inputof(C,Name):-
    ellipse(I,_),
    contains(C,I),
    fillColor(I,"green"),
    componentname(I,Name).

outputof(C,Name):-
    ellipse(O,_),
    contains(C,O),
    fillColor(O,"yellow"),
    componentname(O,Name).

childof(C,Name):-
    contains(C,Child),
    rect(Child,_),
    componentname(Child,Name).

connectionOf(C,connection{
		   name:ConnectionName,
		   sender:pair{component:SenderName,port:SenderPort},
		   receiver:pair{component:ReceiverName,port:ReceiverPort}
	       }):-
    contains(C,E),
    edge(E,_),
    sender(E,SC),
    portname(SC,SenderPort),
    contains(SenderParent,SC),
    getname(C,SenderParent,SenderName),
    receiver(E,TC),
    portname(TC,ReceiverPort),
    contains(ReceiverParent,TC),
    getname(C,ReceiverParent,ReceiverName),
    gensym(x,ConnectionName).


