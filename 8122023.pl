c(0).
c(1).
c(2).
c(3).
c(4).
c(5).
c(6).
c(7).
c(8).
c(9).

signm(H,V):- H>0, V is 1.
signm(H,V):- H<0, V is -1.
signm(H,V):- H = 0, V is 0.

bmi(H,V,X):- X is H/(V^2).

pin(A,B,C,D):-
repeat,
c(A), A\=0,
c(B), A\=B,
c(D), A\=D, B\=D,
c(D), A\=C,B\=C, D\=C,
Souc is A + B + C + D,
Souc = 18,
Souc mod 3 =:= 0,
Souc mod 7 =:= 0,
Souc mod 13 =:=0,
!.


gensez(1,[1]).
gensez(N,[N|S]):- N > 1, PredN is N -1, gensez(PredN,S).


svzc([],[]).
svzc([H|T],[H|S]):- H>=0, svzc(T,S).
svzc([H|T],S):- H < 0,svzc(T,S).

svnm(_,[],[]).
svnm(M,[H|T],[H|S]):- M >= H, svnm(M,T,S).
svnm(M,[H|T],S):- M < H, svnm(M,T,S).


ss([],[],0).
ss([H1|T1],[H2|T2],V):- ss(T1,T2,V1), V is V1 + (H1*H2).

zkds([X],[Y],[X,Y]).
zkds([H1|T1],[H2|T2],[H1,H2|S]):- zkds(T1,T2,S).

fsum([],0).
fsum([H|T],V):- fsum(T,V1),V is V1 + H.

spoj([],S2,S2).
spoj([H|T],S2,[H|V]):- spoj(T,S2,V).

ipvp(X,[X|_],0).
ipvp(P,[H|T],N):- P \=H, ipvp(P,T,N1), N is N1 + 1.

ppvp([],0).
ppvp([H|T],N):- ppvp(T,N1), N is N1 + 1.

nty(0,[X|_],X).
nty(N,[_|T],S):- N>0, N1 is N-1, nty(N1,T,S).

isph(X,[X|_]).
isph(P,[H|T]):- P \= H ,isph(P,T).

pp([X],X).
pp([_|T],P):- pp(T,P).

prp([X,Y],X).
prp([_|T],P):- prp(T,P).

otoc(S1,S2):- otoc(S1,[],S2).
otoc([],A,A).
otoc([H|T],A,S2):- otoc(T,[H|A],S2).

vz(0).
vz(N):-
asserta(v(N)),
N1 is N-1,
vz(N1).

ss(0).
ss(N):-
assertz(s(N)),
N1 is N-1,
ss(N1).

vypisprvky([]).
vypisprvky([H|T]):- write(H),nl,vypisprvky(T),nl.

vypisopacne([]).
vypisopacne([H|T]):- vypisopacne(T),nl,write(H),nl.

vyphat([]).
vyphat([H|T]):- 
write('Hlave'),
write(H),nl,
write('Telo'),
write(T),nl.

vyp:-
v(N),
write(N),
fail.
vyp.

sus:-
repeat,
write('chci suçu!'),
read(susenka),
!.

vytkni(X,[X|T],T).
vytkni(P,[H|T],[H|S]):-vytkni(P,T,S).

sp(_,[],[]).
sp(X,[X|T],T).
sp(P,[H|T],[H|S]):- P\=H, sp(P,T,S).

sv(_,[],[]).
sv(X,[X|T],T1):- sv(X,T,T1).
sv(P,[H|T],[H|S]):- P\=H, sv(P,T,S).
