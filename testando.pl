mostrarResultados:- acertou(Casa,X),write(Casa),
write(' tem '),write(X), nl, fail.
mostrarResultados.

menu:-  repeat,
	write('=== MENU ==='), nl,
	write('Digite o seu palpite.. Digite 0 para sair.'), nl,
	write('Digite a casa.'),nl,
	read(X),
	write('Digite o Atributo.'),
	read(Y),
	nl,
	palpite(X,Y),nl,
	mostrarResultados,nl,nl,
	X==0,
	!.

palpite(0,_):- !.

palpite('casa1','noruegues'):- assert(acertou(casa1,noruegues)).
palpite('casa1','amarela'):- assert(acertou(casa1,amarela)).
