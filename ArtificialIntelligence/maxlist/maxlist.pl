go:- 
    write('Input List : '),
    read(L),
    maxlist(L,M),
    write('Maximum Number : '),
    write(M).

maxlist([],'Empty list'):-!.
maxlist([H],H):-!.
maxlist([H|T],N):- maxlist(T,N1), H<N1 -> N is N1;N is H.