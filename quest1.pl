:- initialization main.

abastece(Alc,Gas,Lit,Val) :- maiorQue70pc(Alc,Gas), Val is (Gas * Lit); Val is (Alc * Lit).

maiorQue70pc(X,Y) :- Q is Y*70,X*100 > Q; Q is Y*70 , X*100 =:= Q.

main:-

	read_line_to_codes(user_input,A2),

	string_to_atom(A2,A1),

	atom_number(A1,A),

	read_line_to_codes(user_input,G2),

	string_to_atom(G2,G1),

	atom_number(G1,G),

	read_line_to_codes(user_input,L2),

	string_to_atom(L2,L1),

	atom_number(L1,L),

	abastece(A,G,L,Valor),

	write(Valor).
