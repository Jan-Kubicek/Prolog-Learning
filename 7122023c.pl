sign(S,V):- S>0,V=1.
sign(S,V):-S<0,V= -1 .
sign(S,V):-S=0,V=0.

bmi(H,V,X):- X is H/(V^2).

smazvse(_,[],[]).
smazvse(X,[X|T],T1):-smazvse(X,T,T1).
smazvse(P,[H|T],[H|S]):-P\=H, smazvse(P,T,S).

gensez(1,[1]).
gensez(N,[N|T]):- N > 1, PredN is N -1, gensez(PredN, T).

szc([],[]).
szc([H|T],[H|S]):- H>=0, szc(T,S).
szc([H|T],S):- H<0,szc(T,S).

svnm(_,[],[]).
svnm(M,[H|T],[H|S]):- M>H, svnm(M,T,S).
svnm(M,[H|T],S):- M=<H, svnm(M,T,S).

ss([],[],0).
ss([H|T],[H1|T1],V):- ss(T,T1,V1), V is V1 + (H*H1).

vytkni(X,[X|T],T).
vytkni(P,[H|T],[H|S]):- vytkni(P,T,S).

ppvp([],0).
ppvp([_|T],N):- ppvp(T,N1), N is N1 +1.

nty(1,[X|_],X).
nty(N,[H|T],P):- N1 is N -1, nty(N1,T,P).

iph(P,[P|_]).
iph(P,[X|T]):- P\=X,iph(P,T).

pp([X],X).
pp([H|T],S):- pp(T,S).

prp([X,Y],X).
prp([_|T],S):- prp(T,S).

otoc(S1,S2):- otoc(S1,[],S2).
otoc([],A,A).
otoc([H|T],A,S2):- otoc(T,[H|A],S2).

opakuj:-
repeat,
write('chcu suçu!'),
read(susenka),
!.

jmeno(jan).
jmeno(karel).
jmeno(filip).
jmeno(adam).

vypisjmena:-
write('Vypisuji jmena'),
jmeno(X),
write(X),
nl,
fail.
vypisjmena.

vsp([]).
vsp([H|T]):- write(H),nl,vsp(T).

vso([]).
vso([H|T]):- vso(T),write(H),nl.

hlavatelo([H|T]):-
write('Hlava'),
write(H),
nl,
write('Telo'),
write(T),nl.

sp(_,[],[]).
sp(X,[X|T],T).
sp(P,[H|T],[H|S2]):- P\=H,sp(P,T,S2).

sv(_,[],[]).
sv(X,[X|T],T1):-sv(X,T,T1).
sv(P,[H|T],[H|S]):- P\=H, sv(P,T,S).
