:-op(900,xfx,[ehUmTipoDe, tem, temUm]).

homem temUm nacionalidade.
homem temUm casa.
homem temUm animal.
homem temUm cigarro.
homem temUm bebida.
homem temUm vizinhoEsq.
homem temUm vizinhoDir.

alemao ehUmTipoDe homem.
noruegues ehUmTipoDe homem.
sueco ehUmTipoDe homem.
ingles ehUmTipoDe homem.
dinamarques ehUmTipoDe homem.

alemao tem nacionalidade = alema.
noruegues tem nacionalidade = noruega.
sueco tem nacionalidade = sueca.
ingles tem nacionalidade = inglesa.
dinamarques tem nacionalidade = dinamarquesa.

alemao tem casa = verde.
noruegues tem casa = amarela.
sueco tem casa = branca.
ingles tem casa = vermelha.
dinamarques tem casa = azul.

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

alemao temUm vizinhoEsq = ingles.
noruegues temUm vizinhoEsq = nil.
sueco temUm vizinhoEsq = alemao.
ingles temUm vizinhoEsq = dinamarques.
dinamarques temUm vizinhoEsq = noruegues.

alemao temUm vizinhoDir = sueco.
noruegues temUm vizinhoDir = dinamarques.
sueco temUm vizinhoDir = nil.
ingles temUm vizinhoDir = alemao.
dinamarques temUm vizinhoDir = ingles.

regras:-write('############# - REGRAS - #############'),nl,
		write('1- Existem 5 casas de diferentes cores'),nl,
	    write('2- Em cada casa mora uma pessoa de uma diferente nacionalidade'),nl,
		write('3- Esses 5 proprietarios bebem diferentes bebidas, fumam diferentes tipos de cigarros e tem um certo animal de estimacao'),nl,
		write('4- Nenhum deles tem o mesmo animal, fumam o mesmo cigarro ou bebem a mesma bebida.'),nl.




