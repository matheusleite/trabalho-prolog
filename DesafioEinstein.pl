main:-consult('Palpite.pl'),
	menuPrinc.

:-op(900,xfx,[ehUmTipoDe, tem, temUm, ehUm]).

nacionalidade temUm animal.
nacionalidade temUm cigarro.
nacionalidade temUm bebida.
nacionalidade temUm corCasa.
nacionalidade temUm vizinhoEsq.
nacionalidade temUm vizinhoDir.

alemao ehUmTipoDe nacionalidade.
noruegues ehUmTipoDe nacionalidade.
sueco ehUmTipoDe nacionalidade.
ingles ehUmTipoDe nacionalidade.
dinamarques ehUmTipoDe nacionalidade.

alemao tem corCasa = verde.
noruegues tem corCasa = amarela.
sueco tem corCasa = branca.
ingles tem corCasa = vermelha.
dinamarques tem corCasa = azul.

alemao tem animal = peixes.
noruegues tem animal = gatos.
sueco tem animal = cachorros.
ingles tem animal = passaros.
dinamarques tem animal = cavalos.

alemao tem cigarro = prince.
noruegues tem cigarro = dunhill.
sueco tem cigarro = bluemaster.
ingles tem cigarro = pallmall.
dinamarques tem cigarro = blends.

alemao tem bebida = cafe.
noruegues tem bebida = agua.
sueco tem bebida = cerveja.
ingles tem bebida = leite.
dinamarques tem bebida = cha.

alemao tem vizinhoEsq = ingles.
noruegues tem vizinhoEsq = nenhum.
sueco tem vizinhoEsq = alemao.
ingles tem vizinhoEsq = dinamarques.
dinamarques tem vizinhoEsq = noruegues.

alemao tem vizinhoDir = sueco.
noruegues tem vizinhoDir = dinamarques.
sueco tem vizinhoDir = nenhum.
ingles tem vizinhoDir = alemao.
dinamarques tem vizinhoDir = ingles.

X ehUm nacionalidade:-Z ehUmTipoDe nacionalidade,X ehUm Z.
X tem Atributo=Valor:-X ehUm nacionalidade,nacionalidade tem Atributo=Valor.

menuPrinc:-repeat,
	write('--------- MENU ---------'),nl,
	write('1. Entre com um palpite'), nl,
	write('2. Consultar Dicas'), nl,
	write('3. Ler as Regras'), nl,
	write('Digite a opcao'),nl,
	read(X),
	option(X),
	X==0,
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

%PALPITES
option(1):-  repeat,
	write('--------- PALTPITE ---------'), nl,
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


