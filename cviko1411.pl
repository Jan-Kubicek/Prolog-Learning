% A = 1 + 2 		A = vyrazu ( 1 + 2) resp. relaci
% 3 = 1+2 	no 


% p(A,2,3) = p(1,2,B). 		pro A vybere 1 pro B 3

% A is 1 + 2 		po vyhodnoceni vyrazu na pravo vkladame hodnotu do A
%=:= 1. vyrazy se vyhodnoti pote porovnaji

% databaze

cislice(0).
cislice(1).
cislice(2).
cislice(3).
cislice(4).
cislice(5).
cislice(6).
cislice(7).
cislice(8).
cislice(9).

%cislice(A), cislice(B), cislice(C), A \= B, A \= C, B \= C.

muz(karel).
muz(jan).
muz(tomas).
muz(franta).
muz(petr).
muz(josef).
muz(jiri).
muz(hektor).
zena(jana).
zena(sarka).
zena(michala).
zena(petra).
zena(vera).
zena(sylva).
zena(romana).
zena(julie).
zena(iveta).
zena(anna).
rodice(karel,jana,jan).
rodice(karel,jana,michala).
rodice(jan,sarka,franta).
rodice(jan,sarka,tomas).
rodice(josef,michala,iveta).
rodice(josef,michala,anna).
rodice(franta,sylva,romana).
rodice(tomas,petra,vera).
rodice(petr,iveta,julie).
rodice(jiri,anna,hektor).
%rodice(otec,matka,potomek).

osoba(A) :- muz(A);zena(A).

%rodic(Kdo,Ci).
rodic(R,P):- rodice(R,_,P).		% otec
rodic(R,P):- rodice(_,R,P).		% matka
rodic2(R,P):- rodice(R,_,P);rodice(_,R,P).
matka(M,D):- zena(M), rodice(_,M,D).
otec(O,D):- muz(O), rodice(O,_,D).
bratr(B,S):- muz(B), rodice(X,Y,B), rodice(X,Y,S), B\=S.
sestra(Sestra,Sou):- zena(Sestra), rodice(X,Y,Sestra), rodice(X,Y,Sou), Sestra \= Sou.
syn(R,S):- muz(S),rodic(R,S).
dcera(R,D):- zena(D),rodic(R,D).
sourozenec(B,S):-  rodice(X,Y,B),rodice(X,Y,S), B\=S.

predek(P,O):- rodic(P,O).
predek(P,O):- rodic(R,O),predek(P,R).
% \+ muz(A). => negace ( vrac¡ yes/no )

% \+ \+ => dvojit  negace
% ?- osoba(A), \+ muz(A). (" osoba jen§ nen¡ mu§em ") => resp. osoba je §enou
potomek(Potomek,Predek):- predek(Predek,Potomek).

neni_muz(A) :- osoba(A), \+ muz(A). % definov n¡ pomoc¡ "negace"

% vystup write(A), odradkovani nl, A = ahoj, write(A),nl. vstup read(A). ahoj.
% read(ahoj). => pro kontrolu aby u§ivatel zadal co chceme 

% Uloha nalezeni predku urcite osoby => interaktivne
vstup(P) :- read(P), predek(P,O), write(O),nl. % moje uloha
vypsani_predku :- 			% ot zka typu ano / ne => provede se jen jednou
	write('Zadejte jmeno osoby: '),
	nl,
	read(Osoba),
	predek(Predek,Osoba),
	write('Nalezeny predek: '),
	write(Predek),
	nl,
	fail. % fail => nikdy neplat¡ => umo§nuje backtracking
	% prvni cast nikdy nemuze byt splnena
vypsani_predku.	% tato cast bude vzdy splnena

aritprum :-
	write('Zadejte prvni hodnotu: '),
	nl,
	read(A),
	write('Zadejte druhou hodnotu: '),
	nl,
	read(B),
	C is (A+B)/2, % is => obdoba prirazovaciho vyrazu => vypocita vyraz a vysledek prida do promene
 	write('Prumer:'),
	write(C),
	nl.
% N, faktorial N
factorial(0,1).
factorial(N,H) :- 
 	N>0, 
 	N1 is N-1, 
 	factorial(N1, H1), 
 	H is N * H1.


cislo(1).
cislo(2).
cislo(3).
cislo(4).
cislo(5).
cislo(6).
trojuhlenik(A,B,C,D,E,F):-
	cislo(A),
	cislo(B),
	cislo(C),
	cislo(D),
	cislo(E),
	cislo(F),
	A \= B, A \=C, A\=D, A\=E, A\=F,
	B\=C, B\=D,B\=E, B\=F,
	C \=D, C\=E, C\=F,
	D \= E, D \= F,
	E \= F,
	A + B + C =:= C + D + E,
	C + D + E =:= E + F + A.
