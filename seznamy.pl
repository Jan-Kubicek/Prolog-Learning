
prvni([H|_]) :- write(H),nl.

posledni([H|[]]) :- write(H),nl.
posledni([H|T]) :- posledni(T).

predposledni([A,V]) :- write(A),nl.
predposledni([H|T]) :- predposledni(T).

nty(1,[H|_]) :- write(H),nl.
nty(N,[_|T]) :- N>1, N1 is N - 1, nty(N1,T). 

vypis([]).
vypis([H|T]):-write(H),nl, vypis(T).

vypisObracene([]).
vypisObracene([H|T]) :- vypisObracene(T),write(H),nl.

% otoc + akumulator 
% otoc(Vstup,Vysledek) 
%otoc(Vstup,Vysledek):- ot(Vstup,Akumulator,Vysledek).
%ot([H|T],

%spoj (prvni, druhy, vysledek)
%spoj([H1|T1],[H2|T2], Vysledek).

%poziceVSezanmu(Prvek,[H|T],Index)
poziceVSeznamu(P,[H|T],I) :- P==H, write(I),nl.
poziceVSeznamu(P,[H|T],I) :- P\=H, I2 is I + 1, poziceVSeznamu(P,T,I2).

