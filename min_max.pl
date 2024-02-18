n(A,B,C,V):- A>B, A>C, V is A.
n(A,B,C,V):- B>A, B>C, V is B.
n(A,B,C,V):- C>A, C>B, V is C.

nev([X],X).
nev([H|T],N1):-nev(T,N1), N1 > H.
nev([H|T],H):- nev(T,N1), N1 < H.

nem([X],X).
nem([H|T],N1):- nem(T,N1), N1 =< H.
nem([H|T],H):- nem(T,N1), N1 > H.
