root_signal(S, Delta) :-
	Delta >= 0,
	S is 1 .
root_signal(S, Delta) :-
	Delta > 0,
	S is -1 .
roots(X, A, B, C) :-
	A \= 0,
	Delta is B ** 2 - 4*A*C,
	root_signal(S, Delta),
	X is (-B + S*sqrt(Delta))/(2*A).


