% Databaze
muz(jan).
muz(jiriII).
muz(jiriI).
zena(elena).
zena(anna).
rodice(jiriII,elena,jan).
rodice(jiriI,anna,jiriII).
cislo(0).
cislo(1).
cislo(2).
cislo(3).
cislo(4).
cislo(5).
cislo(6).
cislo(7).
cislo(8).
cislo(9).


rodic(Rodic,Potomek) :- rodice(Rodic,_,Potomek);rodice(_,Rodic,Potomek).

predek1(Predek,Potomek):- rodic(Predek,Potomek).
predek1(Predek,Potomek):- rodic(Rodic,Potomek),predek1(Predek,Rodic).

signm(N) :- N>0, write(1),nl.
signm(N) :- N = 0,write(0),nl.
signm(N) :- N < 0,write(-1),nl.

bmi(Hmotnost,Vyska,Index) :- Index is ( Hmotnost/(Vyska)^2).


%pin :- 
 % A = cislo(E), A /= 0,
  %B = cislo(F), B /= A,
  %C = cislo(G), C /= B,
  %D = cislo(H), D /= C,
 %N is (A + B + C + D),
 %mod(N,3), N = 18.

%smaz_vse(X,Seznam,Vysledek)
smaz_vse(X,[H|T],S2):- X /= H, [H|smaz_vse(X,T,S2)].	
  