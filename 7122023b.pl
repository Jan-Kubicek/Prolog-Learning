zvire(pes).
zvire(kocka).
zvire(papousek).
zvire(morce).


vypocetprum:-
write('Zadejte prvni hodnotu:'),
read(A),
nl,
write('Zadejte druhou hodnotu:'),
read(B),
nl,
C is (B+A)/2,
write('Vysledek je:'),
write(C),
nl.

sign(S,V):- S>0, V is 1.
sign(S,V):- S<0, V is -1.
sign(S,V):- S=0,V is 0.

bmi(K,M,V):- V is K/(M^2).

smaz_vse(_,[],[]).
smaz_vse(X,[X|T],T1):- smaz_vse(X,T,T1).
smaz_vse(P,[H|T],[H|S]):- P\=H, smaz_vse(P,T,S).

gensez(1,[1]).
gensez(N,[N|T]):- N>1, PredN is N - 1, gensez(PredN,T).

gensezop(1,[1]).
gensezop(N,T):- N>1,N1 is N-1, gensezop(N1,[N1|T]).

smvzc([],[]).
smvzc([H|T],[H|V]):- H>=0, smvzc(T,V).
smvzc([H|T],V):- H<0, smvzc(T,V).

smvnm(_,[],[]).
smvnm(M,[H|T],[H|S]):- M>=H, smvnm(M,T,S).
smvnm(M,[H|T],S):- M<H, smvnm(M,T,S).

ss(0,[],[]).
ss(V,[H1|T1],[H2|T2]):- ss(V1,T1,T2),V is V1 + (H1*H2).

zkds([X],[Y],[X,Y]).
zkds([H|T],[H1|T1],[H,H1|S]):- zkds(T,T1,S).

sum(0,[]).
sum(V,[H|T]):- sum(V1,T),V is V1 + H.

spoj([],S2,S2).
spoj([H|T],S2,[H|V]):-spoj(T,S2,V).

ipvp(P,[P|_],0).
ipvp(P,[H|T],N):- P\=H, ipvp(P,T,N1), N is N1 + 1.

ppvp([],0).
ppvp([_|T],N):- ppvp(T,N1), N is N1 + 1.

nty(0,[X|_],X).
nty(N,[X|T],P):- N>0,N1 is N -1, nty(N1,T,P).

isph(X,[X|_]).
isph(P,[X|T]):- P\=X, isph(P,T).

pp([X],X).
pp([H|T],P):- pp(T,P).

prp([X,Y],X).
prp([H|T],P):- prp(T,P).


otoc(S1,S2):- otoc(S1,[],S2).
otoc([],A,A).
otoc([H|T],A,S2):- otoc(T,[H|A],S2).

opakuj:-
repeat,
write('chci suçu!'),
read(suseunka),
!.
vypiszvirata:-
write('Vypisuji zvyrata:'),
nl,
zvire(X),
write(X),
nl,
fail.
vypiszvirata:-
write('Vypis ukoncen'),
nl.

suma(0,[]).
suma(S,[H|T]):- suma(S1,T), S is S1 + H.

vypisprvky([]).
vypisprvky([H|T]):- write(H),nl,vypisprvky(T).

vypisprvkyobracene([]).
vypisprvkyobracene([H|T]):- vypisprvkyobracene(T),nl,write(H),nl.

vypishlavuatelo([H|T]):-
write('Hlava:'),
write(H),
nl,
write('Telo'),
write(T).

vytkni(X,[X|T],T).
vytkni(P,[H|T],[H|S]):- P\=H, vytkni(P,T,S).

sp(_,[],[]).
sp(X,[X|T],T).
sp(P,[H|T],[H|S2]):- P\=H, sp(P,T,S2).

sv(_,[],[]).
sv(X,[X|T],T1):- sv(X,T,T1).
sv(P,[H|T],[H|S2]):- P\=H, sv(P,T,S2).

