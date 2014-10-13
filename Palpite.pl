mostrarResultados:- acertou(Casa,X),write(' A casa '),write(Casa),
write(' tem '),write(X), nl, fail.
mostrarResultados.


palpite(0,0):- !.

palpite('casa1','noruegues'):- assert(acertou(1,noruegues)),!.
palpite('casa1','amarela'):- assert(acertou(1,amarela)),!.
palpite('casa1','agua'):- assert(acertou(1,agua)).
palpite('casa1','dunhill'):- assert(acertou(1,dunhill)),!.
palpite('casa1','gatos'):- assert(acertou(1,gatos)),!.
palpite('casa2','azul'):- assert(acertou(2,azul)),!.
palpite('casa2','dinamarques'):- assert(acertou(2,dinamarques)),!.
palpite('casa2','cha'):- assert(acertou(2,cha)),!.
palpite('casa2','blends'):- assert(acertou(2,blends)),!.
palpite('casa2','cavalos'):- assert(acertou(2,cavalos)),!.
palpite('casa3','vermelho'):- assert(acertou(3,vermelho)),!.
palpite('casa3','ingles'):- assert(acertou(3,ingles)),!.
palpite('casa3','leite'):- assert(acertou(3,leite)),!.
palpite('casa3','pallmall'):- assert(acertou(3,pallmall)),!.
palpite('casa3','passaros'):- assert(acertou(3,passaros)),!.
palpite('casa4','verde'):- assert(acertou(4,verde)),!.
palpite('casa4','alemao'):- assert(acertou(4,alemao)),!.
palpite('casa4','cafe'):- assert(acertou(4,cafe)),!.
palpite('casa4','prince'):- assert(acertou(4,prince)),!.
palpite('casa4','peixe'):- assert(acertou(4,peixe)),!.
palpite('casa5','branca'):- assert(acertou(5,branca)),!.
palpite('casa5','sueco'):- assert(acertou(5,sueco)),!.
palpite('casa5','cerveja'):- assert(acertou(5,cerveja)).
palpite('casa5','bluemaster'):- assert(acertou(5,bluemaster)),!.
palpite('casa5','cachorros'):- assert(acertou(5,cachorros)),!.	
palpite(0,_):- write('Palpite incorreto!'), nl.
palpite(_,0):- write('Palpite incorreto!'), nl.
palpite(_,_):- write('Palpite incorreto!'), nl.

