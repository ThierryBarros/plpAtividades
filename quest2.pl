:- initialization main.
   getElement(Ind, [H|T], C):-
	Ind== 0 -> C = H; 
	Z is Ind-1, getElement(Z, T, C).
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
	
	read_line_to_codes(user_input,K2),

	string_to_atom(K2,K1),

	atom_number(K1,K),

   	read_line_to_codes(user_input,B1),
   	string_to_atom(B1,Str1),
   	atom_chars(Str1,String), 
	read_line_to_codes(user_input,D1),
   	string_to_atom(D1,D2),
   	atom_chars(D2,DS),  
	read_line_to_codes(user_input,E1),
   	string_to_atom(E1,E2),
   	atom_chars(E2,ES),  
	read_line_to_codes(user_input,F1),
   	string_to_atom(F1,F2),
   	atom_chars(F2,FS),   
  
   	getElement(A, String, X),
	getElement(G, DS, Y),
	getElement(L, ES, Z),
	getElement(K, FS, W),
   	write(X),write(Y),write(Z),write(W).
