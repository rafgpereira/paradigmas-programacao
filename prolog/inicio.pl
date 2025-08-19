unb(X) :- fcte(X).
fcte(ana).
fcte(bruno).

unb_report :-
	write('Estudantes da UNB: '), nl,
	unb(X),
	write(X), nl,
	fail.

