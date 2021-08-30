pt(SenderComponentName,SenderPortName,ReceiverComponentName,ReceiverPortName):-
    contains(id4,E),edge(E,_),sender(E,SC),contains(Sparent,SC),componentname(Sparent,SenderComponentName),portname(SC,SenderPortName),
    receiver(E,RC),contains(Rparent,RC),componentname(Rparent,ReceiverComponentName),portname(RC,ReceiverPortName).
