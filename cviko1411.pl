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
cislo(1).
cislo(2).
cislo(3).
cislo(4).
cislo(5).
cislo(6).

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



trojuhlenik(A,B,C,D,E,F) :-
	cislo(A),
	cislo(B),
	cislo(C),
	cislo(D),
	cislo(E),
	cislo(F),

	A \= B, 
 	A \= C, 
 	A \= D, 
 	A \= E, 
 	A \= F,

	B \= C, 
 	B \= D,
 	B \= E, 
 	B \= F,

	C \= D, 
 	C \= E, 
 	C \= F,
	
 	D \= E, 
 	D \= F,

	E \= F,

	A + B + C =:= C + D + E,
	C + D + E =:= E + F + A.

vypis_trojuhelnik:-
	trojuhelnik(A,B,C,D,E,F),
	write(A:B:C:D:E:F),
	nl,
	fail.
vypis_trojuhelnik.

%[1,2,3] deklarace seznamu, [] pr zdnì seznam, [H|T] H - head, T - Body / Tail
% S = [1,2,3,4], S2 = [0|S]. spojov n¡ 
% [1,2,3,4] = [A,B|Telo]. n-t  hlava ( resp. p r prvn¡ch prvk… v seznamu ).

vypis_hlavu_a_telo([]).
vypis_hlavu_a_telo([H|T]) :- write(H),nl,vypis_hlavu_a_telo(T).

vypis_hlavu_a_telo2([H|T]) :-
	write('Hlava:'),
	write(H),
	nl,
	write('Telo:'),
	write(T),
	nl.

%prvni(Prvni, Seznam).
prvni(P,[H|T]) :- P = H.
prvni2(P,[P|_]).

%druhy(D,[A,B|_]) :- D = B. 
 druhy(D,[_,D|_]).

nty(0,[H|_]) :- write(H).
nty(N,[H|T]) :- N1 is N -1, nty(N1,T).

nty2([H|_],1,H).
nty2([H|T],N,C) :- N > 1,N1 is N-1, nty2(T,N1,C).

% kladna_cisla(Seznam).

kladna_cisla([]).
kladna_cisla([H|T]) :- number(H),H>0, kladna_cisla(T).

posledni(P, [A]) :- P = A.
posledni(P, [H|T]):- posledni(P,T).

predposledni(Predposledni,[Predposledni,_]).
predposledni(Predposledni,[H|T]) :- predposledni(Predposledni , T).

je_prvek_v_seznamu(Prvek,[Prvek|_]).
je_prvek_v_seznamu(Prvek,[H|T]) :- je_prvek_v_seznamu(Prvek,T). % predik t vestaveny member(Prvek,Seznam).


vypisprvky([]).
vypisprvky([H|T]) :- write(H), nl, vypisprvky(T).

vypisprvkyobracene([]).
vypisprvkyobracene([H|T]) :- vypisprvkyobracene(T), write(H),nl.

%delka(seznam, delka).
delka([],0).
delka([_|T], N):- delka(T,N1), N is N1 + 1.

%suma(Seznam,soucet)
suma([],0).
suma([H|T], N):- suma(T,N1), N is N1 + H.

%smaz
%smazvse
%vytkni

otoc(S1,S2) :- otoc(S1,[],S2).
otoc(S1,Akumulator,S2).
otoc([],A,A). 
otoc([H|T],A,S2):-
otoc(T,[H|A],S2).

slovo:-
write('Zadej slovo:'),
nl,
read(Slovo),
name(Slovo,Seznam).
prvni(Prvni,Seznam).
posledni(Prvni,Seznam).

% repeat, telo, podminka, ! (rez).
vir:-
write('Chci susenku!:'),
nl,
read(A),
A = susenka.


virus:-
repeat,
write('Chci susenku!:'),
nl,
%read(A),
%A = susenka,
read(susenka), % porovnani jestli vstup je susenka
!.

opakuj:-
repeat,
write('Zadej slovo:'),
nl,
read(Slovo),
( % obdoba ( rozhodovani ) if
	Slovo = konec,!;

	write('Slovo:'),
	write(Slovo),
	nl,
	fail
).

opakuj2_konec(konec).
opakuj2_konec(zastav).
opakuj2_konec(stop).
opakuj2:-
repeat,
write('Zadej slovo:'),
nl,
read(Slovo),
( % obdoba ( rozhodovani ) if
	opakuj2_konec(Slovo),!;
	write('Slovo:'),
	write(Slovo),
	nl,
	fail
).

% manipulace s dbs
% listing(predikat/arita) => vypsani predikatu z dbs

%asserta(X) pridani predikatu na zacatek dbs
%assertz(X) pridani predikatu na konec dbs
%assert(X) vetsinou assertz ale ne vzdy
% retract(X) smaz
%retractall(X) smaz vse


v:- 
c(A),
write(c(A)),
nl,
fail.
v.
% dbs nebudou v zapoctu
% vzestupne(N). c(1), c(2), ... c(N).
vzestupne(0).
vzestupne(N) :-
 asserta(c(N)),
 N2 is N - 1,
 vzestupne(N2).
