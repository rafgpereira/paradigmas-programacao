estudante(ana, 3, 'Engenharia de Software').
estudante(beto, 1, 'Engenharias').
estudante(carlos, 4, 'Engenharia de Energia').
estudante(diane, 2, 'Engenharias').
estudante(euler, 1, 'Engenharias').
estudante(fabio, 5, 'Engenharia de Software').
estudante(gustavo, 8, 'Engenharia de Software').
estudante(heitor, 7, 'Engenharia de Energia').
estudante(ian, 3, 'Engenharias').

matricula('Cálculo 1', ana).
matricula('Cálculo 1', fabio).
matricula('Cálculo 1', diane).
matricula('Cálculo 1', euler).
matricula('Cálculo 1', gustavo).
matricula('Cálculo 1', ian).

matricula('IAL', beto).
matricula('IAL', diane).
matricula('IAL', euler).

matricula('APC', carlos).
matricula('APC', fabio).
matricula('APC', gustavo).
matricula('APC', ian).

tem_calouros(X) :- distinct(X, (estudante(Y, 1, _),  matricula(X, Y))).

turma_mista(X) :-
	distinct(X, (matricula(X, A), estudante(A, _, 'Engenharia de Software'),
	matricula(X, B), estudante(B, _, 'Engenharias'),
	matricula(X, C), estudante(C, _, 'Engenharia de Energia'))).

software :- 
	estudante(X, _, 'Engenharia de Software'),
	write(X), nl,
	fail.

