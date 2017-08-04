:- initialization main.
   insere(X, L, [X|L]).
   readList(0,[]).
   readList(N,Lista):-ler(P),insere(P,K,Lista),V is N-1,readList(V,K).
   ler(P):-read_line_to_codes(user_input,P2),string_to_atom(P2,P1),atom_number(P1,P).
   
   printList([],[]).	
   printList([NH|NT],[SH|ST]):-Z is NH+SH,write(Z),nl,printList(NT,ST).	
main:-
   	ler(N),
	readList(N,Word),
	readList(N,Word1),
	printList(Word,Word1).
