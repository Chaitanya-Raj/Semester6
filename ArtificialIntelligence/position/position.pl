go:-
    write('Input list : '),
    read(L),
    write('Input the index : '),
    read(N),
    write('The nth element is : '),
    nth_element(N,L,X),
    write(X).

nth_element(_,[],'empty list').
nth_element(1,[H|T],H).
nth_element(N,[H|T],X):-N>1,N1 is N-1,nth_element(N1,T,X).