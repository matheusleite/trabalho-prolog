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
palpite('casa2','blends'):- assert(acertou(casa2,blends)).
palpite('casa2','cavalos'):- assert(acertou(casa2,cavalos)).
palpite('casa3','vermelho'):- assert(acertou(casa3,vermelho)).
palpite('casa3','ingles'):- assert(acertou(casa3,ingles)).
palpite('casa3','leite'):- assert(acertou(casa3,leite)).
palpite('casa3','pallmall'):- assert(acertou(casa3,pallmall)).
palpite('casa3','passaros'):- assert(acertou(casa3,passaros)).
palpite('casa4','verde'):- assert(acertou(casa4,verde)).
palpite('casa4','alemao'):- assert(acertou(casa4,alemao)).
palpite('casa4','cafe'):- assert(acertou(casa4,cafe)).
palpite('casa4','prince'):- assert(acertou(casa4,prince)).
palpite('casa4','peixe'):- assert(acertou(casa4,peixe)).
palpite('casa5','branca'):- assert(acertou(casa5,branca)).
palpite('casa5','sueco'):- assert(acertou(casa5,sueco)).
palpite('casa5','cerveja'):- assert(acertou(casa5,cerveja)).
palpite('casa5','bluemaster'):- assert(acertou(casa5,bluemaster)).
palpite('casa5','cachorros'):- assert(acertou(casa5,cachorros)).
palpite(_,_):- write('Palpite errado!'), nl.
