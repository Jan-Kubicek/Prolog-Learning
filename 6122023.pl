smazprvni(X,[],V).
smazprvni(X,[X|T], T).
smazprvni(X,[H|T], [H|T1]) :- X\= H, smazprvni(X,T,T1).

smazvse(_,[],[]).
smazvse(X,[X|T],T1) :- smazvse(X,T,T1).
smazvse(X,[H|T],[H|T1]) :- X \= H, smazvse(X,T,T1).

smazzaporna([],[]).
smazzaporna([H|T],S) :- H < 0, smazzaporna(T,S).
smazzaporna([H|T],[H|S]):- H>0, smazzaporna(T,S).

svnsm(S1,S2) :- svnsm(S1,S2,1).
svnsm([H|T],[H|S2],A) :- 1 is A mod 2,svnsm(T,S2,A1), A1 is A+1.
svnsm([_|T],S2,A) :- svnsm(T,S2,A1), A1 is A+1.

svnm(M,[],[]).
svnm(M,[H|T],[H|S]) :- M>H, svnm(M,T,S).
svnm(M,[_|T],S) :- svnm(M,T,S).

ss([X],[Y],V) :- V is X*Y.
ss([H1|T1],[H2|T2],V):- ss(T1,T2,V1), V is V1 + (H1*H2).

z2s([X],[Y],[X,Y]).
z2s([H|T],[H1|T1],[H,H1|T2]):- z2s(T,T1,T2).

sum([],0).
sum([H|T],V):- sum(T,V1), V is V1 + H.

spoj([],S2,S2).
spoj([H|T],S2,[H|S3]):- spoj(T,S2,S3).

%ipvp(P,S,I).
ipvp(P,[P|_],1).
ipvp(P,[H|T],I):- P \= H, ipvp(P,T,I1), I is I1 + 1.

ppvp([],0).
ppvp([H|T],P):- ppvp(T,P1), P is P1 + 1.

nty(1,[H|_],H).
nty(N,[_|T],P):- N1 is N-1, nty(N1,T,P).

iph(_,[]):- fail.
iph(H,[H|_]).
iph(P,[_|T]):- iph(P,T).

pp([X],X).
pp([_|T],P):-pp(T,P).

prp([X,Y],X).
prp([_|T],P):- prp(T,P).

vypisotocene([]).
vypisotocene([H|T]):- vypisotocene(T),nl,write(H).

vypis([]).
vypis([H|T]):- write(H),nl,vypis(T).

otoc(S1,S2):- otoc(S1,[],S2).
otoc([],A,A).
otoc([H|T],A,S2):- otoc(T,[H|A],S2).
