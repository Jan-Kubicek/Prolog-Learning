signm(S,C):- S>0,C is 1.
signm(S,C):- S<0,C is -1.
signm(S,C):- S=0, C is 0.

bmi(H,V,S):- S is H/(V^2).

smazvse(_,[],[]).
smazvse(X,[X|T],T1):- smazvse(X,T,T1).
smazvse(P,[H|T],[H|S]):- P\=H, smazvse(P,T,S).

gensez(1,[1]).
gensez(N,[N|T]):- N>1, PredN is N - 1, gensez(PredN,T).
genpred(0).
genpred(N) :-N>0,assertz(c(N)),N1 is N - 1,genpred(N1),fail.
vypisprvkyc:-
c(X),
write(X),
nl,
fail.
vypisprvkyc.

svzc([],[]).
svzc([H|T],[H|S]):- H>=0, svzc(T,S).
svzc([H|T],S):- H < 0, svzc(T,S).

svnm(_,[],[]).
svnm(M,[H|T],[H|S]):- M> H, svnm(M,T,S).
svnm(M,[H|T],S):- M =< H, svnm(M,T,S).

ss([],[],0).
ss([H|T],[H1|T1],V):- ss(T,T1,V1),V is V1 + (H*H1).

zds([X],[Y],[X,Y]).
zds([H|T],[H1|T1],[H,H1|S]):- zds(T,T1,S).

sum([],0).
sum([H|T],V):- sum(T,V1), V is V1 + H.

spoj([],S2,S2).
spoj([H|T],S2,[H|V]):- spoj(T,S2,V).

ipvp(P,[P|_],0).
ipvp(P,[_|T],N):- ipvp(P,T,N1),N is N1 + 1.

ppvp([X],1).
ppvp([H|T],N):- ppvp(T,N1), N is N1 + 1.

nty(0,[X|_],X).
nty(N,[X|T],V):- N1 is N-1, nty(N1,T,V).

isph(P,[P|_]).
isph(P,[H|T]):- P\=H, isph(P,T).

pp([X],X).
pp([_|T],P):- pp(T,P).

prep([X,Y],X).
prep([_|T],P):- prep(T,P).
otoc(S1,S2):- otoc(S1,[],S2).
otoc([],A,A).
otoc([H|T],A,S2):- otoc(T,[H|A],S2).

genvze(0).
genvze(N):- N>0, asserta(cvze(N)), N1 is N-1, genvze(N1),fail.
gense(0).
gense(N):- N>0, assertz(cses(N)),N1 is N -1, gense(N1),fail.

virus:-
repeat,
write('chci susenku'),
read(susenka),
!.

vypispredik:-
write('prob¡h  vyps n¡ predik t…'),
nl,
cses(X),
write(X),
fail.
vypispredik:- write('dekuji za trpelivost').

vypishat([H|T]):-
write('Hlava'),
nl,write(H),
nl,write('Telo'),
nl,write(T).

sp(_,[],[]).
sp(X,[X|T],T).
sp(P,[H|T],[H|S]):- P\=H, sp(P,T,S).

sv(_,[],[]).
sv(X,[X|T],T1):- sv(X,T,T1).
sv(P,[H|T],[H|S]):- P\=H,sv(P,T,S).

vytkni(X,[X|T],T).
vytkni(P,[H|T],[H|S]):- vytkni(P,T,S).
