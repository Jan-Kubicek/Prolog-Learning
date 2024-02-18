sign(H,V):- H>0,  V is 1.
sign(H,V):- H < 0, V is -1.
sign(H,V):- H = 0, V is 0.

bmi(H,V,X):- X is H/(V^2).

gensez(1,[1]).
gensez(N,[N|T]):- N>1, PredN is N - 1, gensez(PredN,T).

svzc([],[]).
svzc([H|T],[H|S]):- H >=0, svzc(T,S).
svzc([H|T],S):- H < 0, svzc(T,S).

svnm(_,[],[]).
svnm(M,[H|T],[H|S]):- M >= H, svnm(M,T,S).
svnm(M,[H|T],S):- M < H, svnm(M,T,S).

ss([],[],0).
ss([H|T],[H1|T1],V):- ss(T,T1,V1), V is V1 + (H*H1).

zds([X],[Y],[X,Y]).
zds([H1|T1],[H2|T2],[H1,H2|S]):-zds(T1,T2,S).

sum([],0).
sum([H|T],V):- sum(T,V1),V is V1 + H.

spoj([],S2,S2).
spoj([H|T],S2,[H|V]):- spoj(T,S2,V).

ipvp(X,[X|_],0).
ipvp(P,[H|T],N):- P\=H, ipvp(P,T,N1), N is N1+1.

ppvs([],0).
ppvs([H|T],I):- ppvs(T,I1), I is I1 +1.

nty(0,[X|_],X).
nty(N,[X|T],P):- N1 is N -1, nty(N1,T,P).

isph(X,[X|_]).
isph(P,[H|T]):- P\=H, isph(P,T).

pp([X],X).
pp([H|T],X):- pp(T,X).

prep([X,Y],X).
prep([H|T],X):- prep(T,X).

otoc(S1,S2):- otoc(S1,[],S2).
otoc([],A,A).
otoc([H|T],A,S2):- otoc(T,[H|A],S2).

vz(0).
vz(N):-
asserta(v(N)),
N1 is N-1,
vz(N1).

se(0).
se(N):-
assertz(s(N)),
N1 is N-1,
se(N1).

vdbs:-
s(X),
write(X),
nl,
fail.
vdbs.

vht([H|T]):-
write('Hlava'),
write(H),
nl,
write('Telo'),
write(T),
nl.

vo([]).
vo([H|T]):- vo(T),write(H),nl.

v([]).
v([H|T]):- write(H),nl,v(T).

sp(_,[],[]).
sp(X,[X|T],T).
sp(P,[H|T],[H|S]):- P\=H, sp(P,T,S).

sv(_,[],[]).
sv(X,[X|T],T1):- sv(X,T,T1).
sv(P,[H|T],[H|S]):- P\=H, sv(P,T,S).

vytkni(X,[X|T],T).
vytkni(P,[H|T],[H|S]):- vytkni(P,T,S).
