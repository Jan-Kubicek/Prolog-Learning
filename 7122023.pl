signm(F,V):- F>0, V is 1.
signm(F,V):- F<0,V is -1.
signm(F,V):- F=0,V is 0.

bmi(KG,M,V):- V is KG/(M^2).

smazvse(_,[],[]).
smazvse(X,[X|T],T1):- smazvse(X,T,T1).
smazvse(P,[H|T],[H|S2]):- P\=H,smazvse(P,T,S2).

gensez(1,[1]).
gensez(N,[N|S]):- N > 1, PredN is N -1, gensez(PredN,S).

smazap([],[]).
smazap([H|T],[H|S]):- H>0, smazap(T,S).
smazap([H|T],S):- H<0, smazap(T,S).

smazvnh(_,[],[]).
smazvnh(M,[H|T],[H|S]):- M >= H, smazvnh(M,T,S).
smazvnh(M,[H|T],S):- M < H, smazvnh(M,T,S).

ss(0,[],[]).
ss(V,[H1|T1],[H2|T2]):- ss(V1,T1,T2), V is V1 + (H1*H2).

zks([X],[Y],[X,Y]).
zks([H1|T1],[H2|T2],[H1,H2|S]):- zks(T1,T2,S).

fsum(0,[]).
fsum(S,[H|T]):- fsum(S1,T), S is S1 + H.

spoj([],S2,S2).
spoj([H|T],S2,[H|V]):- spoj(T,S2,V).

%ipvp(P,I,S)
ipvp(X,0,[X|_]).
ipvp(P,N,[X|T]):- P\=X,ipvp(P,N1,T), N is N1 + 1.

ppvp(0,[]).
ppvp(N,[_|T]):- ppvp(N1,T), N is N1 + 1.

nty(1,[X|_],X).
nty(N,[_|T],V):- N1 is N - 1,nty(N1,T,V).

isph(X,[X|_]).
isph(P,[H|T]):- P\=H,isph(P,T).

posledniprvek([X],X).
posledniprvek([_|T],P):- posledniprvek(T,P).

predposledni([X,Y],X).
predposledni([_|T],P):- predposledni(T,P).

otoc(S1,S2):- otoc(S1,[],S2).
otoc([],A,A).
otoc([H|T],A,S2):- otoc(T,[H|A],S2).

sp(_,[],[]).
sp(X,[X|T],T).
sp(P,[H|T],[H|S2]):- P\=H, sp(P,T,S2).

sv(_,[],[]).
sv(X,[X|T],T1):- sv(X,T,T1).
sv(P,[H|T],[H|S]):- P\=H, sv(P,T,S).
