male(abraham).
male(herb).
male(homer).
male(bart).
male(clancy).

female(mona).
female(marge).
female(jackie).
female(patty).
female(selma).
female(ling).
female(lisa).
female(maggie).

father(abraham, herb).
father(abraham, homer).
father(homer, bart).
father(homer, lisa).
father(homer, maggie).
father(clancy, marge).
father(clancy, patty).
father(clancy, selma).

mother(mona, herb).
mother(mona, homer).
mother(marge, bart).
mother(marge, lisa).
mother(marge, maggie).
mother(jackie, patty).
mother(jackie, selma).
mother(jackie, marge).
mother(selma, ling).


grandmother(Y, X) :- mother(Z, Y), mother(X, Z).
grandmother(Y, X) :- father(Z, Y), mother(X, Z).

uncle(Y, X) :- male(X), grandmother(Y, Z), mother(Z, X), father(A, Y), A \= X.




