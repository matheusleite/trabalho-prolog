:-op(900,xfx,[ehUmTipoDe, tem, temUm, ehUm]).

nacionalidade temUm animal.
nacionalidade temUm cigarro.
nacionalidade temUm bebida.
nacionalidade temUm corCasa.
nacionalidade temUm casa.
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

X ehUm W:-Z ehUmTipoDe W,X ehUm Z.
X tem Atributo=Valor:-X ehUm A,A tem Atributo=Valor.

menuPrinc:-repeat,
	write('--------- MENU ---------'),nl,
	write('1. Entre com um palpite'), nl,
	write('2. Consultar Dicas'), nl,
	write('3. Ler as Regras'), nl,
	write('Digite a opcao: '),nl,
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
	write('Digite a casa:'),nl,
	read(X),
	write('Digite o Atributo:'),nl,
	read(Y),
	nl,
	palpite(X,Y),nl,
	mostrarResultados,nl,nl,
	X==0,
	!.

	mostrarResultados:- acertou(Casa,X),write(Casa),
	write(' tem '),write(X), nl, fail.
	mostrarResultados.


	palpite(0,0):- !.

	palpite('casa1','noruegues'):- assert(acertou(casa1,noruegues)),!.
	palpite('casa1','amarela'):- assert(acertou(casa1,amarela)),!.
	palpite('casa1','agua'):- assert(acertou(casa1,agua)).
	palpite('casa1','dunhill'):- assert(acertou(casa1,dunhill)),!.
	palpite('casa1','gatos'):- assert(acertou(casa1,gatos)),!.
	palpite('casa2','azul'):- assert(acertou(casa2,azul)),!.
	palpite('casa2','dinamarques'):- assert(acertou(casa2,dinamarques)),!.
	palpite('casa2','cha'):- assert(acertou(casa2,cha)),!.
	palpite('casa2','blends'):- assert(acertou(casa2,blends)),!.
	palpite('casa2','cavalos'):- assert(acertou(casa2,cavalos)),!.
	palpite('casa3','vermelho'):- assert(acertou(casa3,vermelho)),!.
	palpite('casa3','ingles'):- assert(acertou(casa3,ingles)),!.
	palpite('casa3','leite'):- assert(acertou(casa3,leite)),!.
	palpite('casa3','pallmall'):- assert(acertou(casa3,pallmall)),!.
	palpite('casa3','passaros'):- assert(acertou(casa3,passaros)),!.
	palpite('casa4','verde'):- assert(acertou(casa4,verde)),!.
	palpite('casa4','alemao'):- assert(acertou(casa4,alemao)),!.
	palpite('casa4','cafe'):- assert(acertou(casa4,cafe)),!.
	palpite('casa4','prince'):- assert(acertou(casa4,prince)),!.
	palpite('casa4','peixe'):- assert(acertou(casa4,peixe)),!.
	palpite('casa5','branca'):- assert(acertou(casa5,branca)),!.
	palpite('casa5','sueco'):- assert(acertou(casa5,sueco)),!.
	palpite('casa5','cerveja'):- assert(acertou(casa5,cerveja)).
	palpite('casa5','bluemaster'):- assert(acertou(casa5,bluemaster)),!.
	palpite('casa5','cachorros'):- assert(acertou(casa5,cachorros)),!.	
	palpite(_,_):- write('Palpite errado!'), nl.
	
