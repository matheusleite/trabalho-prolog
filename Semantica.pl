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
X tem Atributo=Valor:- X ehUm Y,Y tem Atributo = Valor.
