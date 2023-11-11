% Databaze
muz(jan).
muz(jiriIII).
muz(jiriII).
zena(patricie).
zena(pavla).
zena(martinaI).
zena(martinaII).
zena(elena).
% rodice(Muß,¶ena,D°tÿ).
rodice(jiriII,elena,jan).
rodice(jiriII,elena,pavla).
rodice(jiriII,elena,jiriIII).
rodice(jiriIII,martinaI,martinaII).
rodice(uknown,pavla,patricie).
manzele(jiriII,elena).
manzele(jiriIII,martinaI).
manzele(uknown,pavla).

% DOTAZY resp vztahy doma
% sestrenice, bratranec,
% predek (osoba, predek)
% potomek(osoba, potomek)
% sestra ( kdo, ü°)
sestra(S,X):- zena(S),
	     rodice(O,M,S),
	     rodice(O,M,X),
	     S\=X.
% ü° je to sestra? sestra(pavla,C).

bratr(B,X):- muz(B),
	     rodice(O,M,B),
	     rodice(O,M,X),
	     B\=X.

dcera(O,M,D):- zena(D),
	       rodice(O,M,D).

syn(O,M,S):- muz(S),
	     rodice(O,M,S).

matka(M,D):- zena(M),
	     rodice(_,M,D).

otec(O,D):- muz(O),
	    rodice(O,_,D).

babickaO(B,V):- zena(B),	% babicka z otcovy strany matka otce
	       rodice(X,_,V),
	       rodice(_,B,X).

babickaM(B,V):- zena(B),	% babicka z matciny strany matka matky
	       rodice(_,Y,V),
	       rodice(_,B,Y).

% teta sestra otce resp. manzelka bratra
% stryc bratr otce resp. manzel sestry

stryc(S,D):- muz(S),rodice(X,Y,D),(bratr(S,X);bratr(S,Y)).

teta(T,D):- zena(T),rodice(X,Y,D),(sestra(T,X);sestra(T,Y)).

deda(D,V):- muz(D),rodice(X,Y,V),(rodice(D,_,Y);rodice(D,_,X)). 

babicka(B,V):- zena(B),rodice(X,Y,V),(rodice(_,B,Y);rodice(_,B,X)).

snacha(T,S):- zena(T),zena(S),(manzele(X,S),rodice(_,T,X)).

tchan(T,S):- muz(T),rodice(T,_,X),manzele(X,S).

svagr(Svagr,Svagrova):- muz(Svagr),manzele(X,Svagrova),(bratr(Svagr,X);sestra(Svagr,X)).


sestrenice(S,P):- zena(S),rodice(X,Y,S),(bratr(C,X);sestra(C,X)),(rodice(C,_,P);rodice(_,C,P)).
