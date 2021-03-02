go:- 
    write('Enter first list : '),
    read(X),
    write('Enter second list : '),
    read(Y),
    conc(X,Y,L),
    write('Concatenated list :'),
    write(L).

conc([],L,L).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).