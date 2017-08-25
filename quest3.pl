comp(Obj, Atual, Ult):-

    

    Obj == Atual

        , write('OK')

    ; abs(Obj - Atual) < abs(Obj - Ult),

        write('ADEQUADO'), nl,

        read_line_to_codes(user_input, A2),

        string_to_atom(A2,A1),

        atom_number(A1,A),

        comp(Obj, A, Atual)

    ;abs(Obj - Atual) >= abs(Obj - Ult),

        write('PERIGO'), nl,

        read_line_to_codes(user_input, A2),

        string_to_atom(A2,A1),

        atom_number(A1,A),

        comp(Obj, A, Atual).

:- initialization main.

main:-

    read_line_to_codes(user_input, G2),

    string_to_atom(G2,G1),

    atom_number(G1,Goal),

    read_line_to_codes(user_input, L2),

    string_to_atom(L2,L1),

    atom_number(L1,Last),

    read_line_to_codes(user_input, C2),

    string_to_atom(C2,C3),

    atom_number(C3, Current),

    

    comp(Goal, Current, Last).

