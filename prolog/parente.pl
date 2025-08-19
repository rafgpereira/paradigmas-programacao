
pai(marcio, savio).
pai(marcio, mateus).
pai(marcio, giovana).
pai(marcio, maria).


mae(leida, mateus).
mae(leida, giovana).
mae(rita, maria).
mae(rita, savio).


meioirmao(X, Y) :-
    pai(P, X), pai(P, Y),
    mae(M1, X), mae(M2, Y),
    X \= Y,
    M1 \= M2.

meioirmao(X, Y) :-
    mae(M, X), mae(M, Y),
    pai(P1, X), pai(P2, Y),
    X \= Y,
    P1 \= P2.
