go:-
    write('Enter first number : '),
    read(N1),
    write('Enter second number '),
    read(N2),
    sum(N1,N2,R),
    write('Sum : '),
    write(R).
sum(X,Y,Z):-
    Z is X+Y.