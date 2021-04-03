go:-
    write('Input list : '),
    read(L1),
    write('Input the index to delete : '),
    read(In),
    delete_nth(In,L1,L2),
    write('The new list is '),
    write(L2).

delete_nth(1, [H|T], T).
delete_nth(N, [H|T], [H|R]):- N1 is N-1,
delete_nth(N1, T, R).