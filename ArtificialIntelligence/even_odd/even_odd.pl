go:-
  write('Input list : '),
  read(X),
  oddeven(X).

oddeven([]):-write('Empty list').
oddeven(X):-length(X,L),
L>=0 -> (L1 is mod(L,2), L1=:=0 -> write('Even length');write('Odd length')).
