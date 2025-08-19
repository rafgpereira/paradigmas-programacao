cidade(brasilia, df).
cidade(gama, df).

cidade(cuiaba, mt).
cidade(barra, mt).
cidade(tangara, mt).

cidade(bh, mg).
cidade(governador, mg).


capital(brasilia).
capital(bh).
capital(cuiaba).


regiao(centro_oeste, df).
regiao(centro_oeste, mt).
regiao(sudeste, mg).

capitais(X, Y) :- regiao(Y, Z), cidade(X, Z), capital(X).

