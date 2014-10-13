menu:- repeat,
	write('Selecione uma opcao'), nl,
	write('1. Adicionar cor da casa'),nl,
	write('2. Adicionar nacionalidade'),nl,
	write('3. Adicionar bebida'),nl,
	write('4. Adicionar cigarro'),nl,
	write('5. Adicionar animal'),nl,
	read(X),
	option(X),
	X==0,
	!.

memoriza(X):-
	esquece(X),assert(X).

esquece(X):-
	esquece1(X),fail.
esquece(X).

esquece1(X):-
	retract(X).
esquece1(X)

option(0):- !.
option(1):- 
	write('Selecione uma cor'), nl,
	write('1. amarela'), nl,
	write('2. branca'), nl,
	write('3. azul'),nl,
	write('4. verde'),nl,
	write('5. vermelha'),nl,
	read(X),
	optionCor(X),
	X==0,
	!.
option(2):- 
	write('Selecione uma nacionalidade'), nl,
	write('1. alemao'), nl,
	write('2. noruegues'), nl,
	write('3. dinamarques'),nl,
	write('4. ingles'),nl,
	write('5. sueco'),nl,
	read(X),
	optionNac(X),
	X==0,
	!.
option(3):- 
	write('Selecione uma bebida'), nl,
	write('1. cerveja'), nl,
	write('2. leite'), nl,
	write('3. agua'),nl,
	write('4. cafe'),nl,
	write('5. cha'),nl,
	read(X),
	optionBeb(X),
	X==0,
	!.
option(4):- 
	write('Selecione um cigarro'), nl,
	write('1. blends'), nl,
	write('2. bluemaster'), nl,
	write('3. dunhill'),nl,
	write('4. pall mall'),nl,
	write('5. prince'),nl,
	read(X),
	optionCig(X),
	X==0,
	!.
option(5):- 
	write('Selecione um animal'), nl,
	write('1. cachorros'), nl,
	write('2. cavalos'), nl,
	write('3. gatos'),nl,
	write('4. passaros'),nl,
	write('5. peixes'),nl,
	read(X),
	optionAnim(X),
	X==0,
	!.

optionCor(0):- !.
optionCor():- memoriza()