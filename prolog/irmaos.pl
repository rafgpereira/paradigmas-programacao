homem(homer).
homem(bart).
mulher(marge).
mulher(lisa).
mulher(maggie).
pai(homer, bart).
pai(homer, lisa).
pai(homer, maggie).
mae(marge, bart).
mae(marge, lisa).
mae(marge, maggie).
irmaos(X, Y) :- X \= Y, pai(F, X), pai(F, Y).
irmao(X, Y) :- homem(X), irmaos(X, Y).
irma(X, Y) :- mulher(X), irmaos(X, Y).
