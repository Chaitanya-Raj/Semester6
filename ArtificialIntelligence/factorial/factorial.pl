go:-
    write('Enter a number : '),
    read(X),

    factorial(X,R),
    write("Factorial : "),
    write(R).

factorial(1,1).
    
factorial(N,F):-
    N>1, N1 is N-1,factorial(N1,F1),F is F1*N.