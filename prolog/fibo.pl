fibonnaci(N, X) :- N =:= 1, X is 1.
fibonnaci(N, X) :- N =:= 1, X is 1.

fibonnaci(N, X) :-
	N > 2,
	Na is N - 1,
	Nb is N - 2,
	X is fibonnaci(Na, X) + fibonnaci(Nb, X).

	
