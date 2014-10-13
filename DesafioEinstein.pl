main:-consult('Semantica.pl'),
	consult('Palpite.pl'),
	menuPrinc,
	!.

menuPrinc:-repeat,
	write('--------- MENU ---------'),nl,
	write('1. Entre com um palpite'), nl,
	write('2. Consultar Dicas'), nl,
	write('3. Ler as Regras'), nl,
	write('Digite a opcao: '),nl,
	read(O),
	option(O),
	O==0,
	!.

%PALPITES
option(1):-  repeat,
	write('--------- PALPITE ---------'), nl,
	write('Digite o seu palpite.. Digite 0 para sair.'), nl,
	write('Digite a casa:'),nl,
	read(C),
	write('Digite o Atributo:'),nl,
	read(A),
	nl,
	palpite(C,A),nl,
	mostrarResultados,nl,nl,
	C==0,
	!.

%REGRAS
option(3):-nl,write('--------- REGRAS ----------'),nl,
		write('1- Existem 5 casas de diferentes cores.'),nl,
	    write('2- Em cada casa mora uma pessoa de uma diferente nacionalidade.'),nl,
		write('3- Esses 5 proprietarios bebem diferentes bebidas, fumam diferentes tipos de cigarros e tem um certo animal de estimacao.'),nl,
		write('4- Nenhum deles tem o mesmo animal, fumam o mesmo cigarro ou bebem a mesma bebida.'),nl,nl.

%DICAS
option(2):-nl,write('---------- DICAS ----------'),nl,
	   write(' A - O Noruegues vive na primeira casa.'),nl,
	   write(' B - O Ingles vive na casa Vermelha.'),nl,
	   write(' C - O Sueco tem Cachorros como animais de estimacao.'),nl,
	   write(' D - O Dinamarques bebe Cha.'),nl,
       write(' E - A casa Verde fica do lado esquerdo da casa Branca.'),nl,
	   write(' F - O homem que vive na casa Verde bebe Cafe.'),nl,
	   write(' G - O homem que fuma Pall Mall cria Passaros.'),nl,
	   write(' H - O homem que vive na casa Amarela fuma Dunhill.'),nl,
       write(' I - O homem que vive na casa do meio bebe Leite.'),nl,
       write(' J - O homem que fuma Blends vive ao lado do que tem Gatos.'),nl,
	   write(' K - O homem que cria Cavalos vive ao lado do que fuma Dunhill.'),nl,
	   write(' L - O homem que fuma BlueMaster bebe Cerveja.'),nl,
	   write(' M - O Alemao fuma Prince.'),nl,
	   write(' N - O Noruegues vive ao lado da casa Azul.'),nl,
 	   write(' O - O homem que fuma Blends eh vizinho do que bebe Agua.'),nl,nl.
