go:-write('Enter first number : '),
read(N1),
write('Enter second number : '),
read(N2),
max(N1,N2,R),
write('Max : '),
write(R).

max(X,Y,M):- X>=Y,M is X,!.
max(X,Y,M):- Y>X,M is Y.