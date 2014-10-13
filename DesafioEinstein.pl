:-op(900,xfx,[ehUmTipoDe, tem, temUm, ehUm]).

casa temUm animal.
casa temUm nacionalidade.
casa temUm cigarro.
casa temUm bebida.
casa temUm cor.
casa temUm numero.
casa temUm vizinhoEsq.
casa temUm vizinhoDir.

cachorros ehUmTipoDe animal.
passaros ehUmTipoDe animal.
cavalos ehUmTipoDe animal.
gatos ehUmTipoDe animal.
peixes ehUmTipoDe animal.

alemao ehUmTipoDe nacionalidade.
noruegues ehUmTipoDe nacionalidade.
sueco ehUmTipoDe nacionalidade.
ingles ehUmTipoDe nacionalidade.
dinamarques ehUmTipoDe nacionalidade.

dunhill ehUmTipoDe cigarro.
pallmall ehUmTipoDe cigarro.
blends ehUmTipoDe cigarro.
prince ehUmTipoDe cigarro.
bluemaster ehUmTipoDe cigarro.

agua ehUmTipoDe bebida.
cha ehUmTipoDe bebida.
cerveja ehUmTipoDe bebida.
leite ehUmTipoDe bebida.
cafe ehUmTipoDe bebida.

verde ehUmTipoDe cor.
vermelha ehUmTipoDe cor.
azul ehUmTipoDe cor.
branca ehUmTipoDe cor.
amarela ehUmTipoDe cor.

1 ehUmTipoDe numero.
2 ehUmTipoDe numero.
3 ehUmTipoDe numero.
4 ehUmTipoDe numero.
5 ehUmTipoDe numero.

1 tem cor = amarela.
2 tem cor = azul.
3 tem cor = vermelha.
4 tem cor = verde.
5 tem cor = branca.

1 tem animal = gatos.
2 tem animal = cavalos.
3 tem animal = passaros.
4 tem animal = peixes.
5 tem animal = cachorros.

1 tem cigarro = dunhill.
2 tem cigarro = blends.
3 tem cigarro = pallmall.
4 tem cigarro = prince.
5 tem cigarro = bluemaster.

1 tem nacionalidade = noruegues.
2 tem nacionalidade = dinamarques.
3 tem nacionalidade = ingles.
4 tem nacionalidade = alemao.
5 tem nacionalidade = sueco.

1 tem bebida = agua.
2 tem bebida = cha.
3 tem bebida = leite.
4 tem bebida = cafe.
5 tem bebida = cerveja.

1 tem vizinhoEsq = nenhum.
2 tem vizinhoEsq = noruegues.
3 tem vizinhoEsq = dinamarques.
4 tem vizinhoEsq = ingles.
5 tem vizinhoEsq = alemao.

1 tem vizinhoDir = dinamarques.
2 tem vizinhoDir = ingles.
3 tem vizinhoDir = alemao.
4 tem vizinhoDir = sueco.
5 tem vizinhoDir = nenhum.

X ehUm W:-Z ehUmTipoDe W,X ehUm Z.
X tem Atributo=Valor:-X ehUm Y,Y tem Atributo=Valor.

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
	write('--------- PALTPITE ---------'), nl,
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

	palpite(0,0):- !.

	palpite('1','noruegues'):- assert(acertou(1,noruegues)),!.
	palpite('1','amarela'):- assert(acertou(1,amarela)),!.
	palpite('1','agua'):- assert(acertou(1,agua)).
	palpite('1','dunhill'):- assert(acertou(1,dunhill)),!.
	palpite('1','gatos'):- assert(acertou(1,gatos)),!.
	palpite('2','azul'):- assert(acertou(1,azul)),!.
	palpite('2','dinamarques'):- assert(acertou(2,dinamarques)),!.
	palpite('2','cha'):- assert(acertou(2,cha)),!.
	palpite('2','blends'):- assert(acertou(2,blends)),!.
	palpite('2','cavalos'):- assert(acertou(2,cavalos)),!.
	palpite('3','vermelho'):- assert(acertou(3,vermelho)),!.
	palpite('3','ingles'):- assert(acertou(3,ingles)),!.
	palpite('3','leite'):- assert(acertou(3,leite)),!.
	palpite('3','pallmall'):- assert(acertou(3,pallmall)),!.
	palpite('3','passaros'):- assert(acertou(3,passaros)),!.
	palpite('4','verde'):- assert(acertou(4,verde)),!.
	palpite('4','alemao'):- assert(acertou(4,alemao)),!.
	palpite('4','cafe'):- assert(acertou(4,cafe)),!.
	palpite('4','prince'):- assert(acertou(4,prince)),!.
	palpite('4','peixe'):- assert(acertou(4,peixe)),!.
	palpite('5','branca'):- assert(acertou(5,branca)),!.
	palpite('5','sueco'):- assert(acertou(5,sueco)),!.
	palpite('5','cerveja'):- assert(acertou(5,cerveja)).
	palpite('5','bluemaster'):- assert(acertou(5,bluemaster)),!.
	palpite('5','cachorros'):- assert(acertou(5,cachorros)),!.	
	palpite(_,_):- write('Palpite errado!'), nl.
	palpite(0,_):- write('Palpite incorreto!'), nl.
	palpite(_,0):- write('Palpite incorreto!'), nl.
	

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
