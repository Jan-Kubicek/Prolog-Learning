muz(jan).
muz(karel).
muz(petr).
muz(pavel).

vypishat([H|T],T) :- write(H),nl.

vypishat2([]).
vypishat2([H|T]) :- write(H),nl,vypishat2(T).

vypishat3([H|T]) :-
write('Hlava'),nl,
write(H),nl,
write('Telo'),nl,
write(T).

kc([],[]).
kc([H|T],V):- H<0, kc(T,V).
kc([H|T],[H|V]):- H>0, kc(T,V).

delka([],0).
delka([_|T],N):- delka(T,N1), N is N1+1.

suma([],0).
suma([H|T],N):- suma(T,N1), N is N1 +H.
 
opakuj:-
repeat,
write('Chcu susu!'),
read(susenka),
!.

vypismuze:-
write(muz(X)),
nl,
fail.

sestupne(0).
sestupne(N):- N2 is N + 1, sestupne(N2),asserta(c(N)). 	

otoc(S1,S2) :- otoc(S1,[],S2).
otoc([],A,A).
otoc([H|T],A,S2):- otoc(T,[H|A],S2).

prp([X,Y],X).
prp([_|T],P) :- prp(T,P).

pp([X],X).
pp([H|T],P):- pp(T,P).

isph([H|_],H).
isph([_|T],P):- isph(T,P).

nty(0,[H|_],H).
nty(N,[_|T],P):- N1 is N - 1, nty(N1,T,P).

ipvp(P,[P|_],1).
ipvp(P,[H|T],N):- P \= H , ipvp(P,T,N1),N is N1 + 1.

spoj([],S2,S2).
spoj([H|T],S2,[H|S3]):- spoj(T,S2,S3).

komb([X],[Y],[X,Y]).
komb([H|T],[H1|T1],[H,H1|S]):- komb(T,T1,S).

ss([X],[Y],X*Y).
ss([H1|T1],[H2|T2],C):- ss(T1,T2,C1), C is C1 + (H1*H2).

%smazprvni(Prvek,Seznam,Vysledek).
smazprvni(_,[],[]).
smazprvni(X,[X|T],T).
smazprvni(P,[H|T],[H|S]):- P\= H, smazprvni(P,T,S).

smazvse(_,[],[]).
smazvse(X,[X|T],T1) :- smazvse(X,T,T1).
smazvse(P,[H|T],[H|S]):- P\=H, smazvse(P,T,S).
