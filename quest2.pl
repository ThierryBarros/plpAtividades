:- initialization main.

main:- read_line_to_codes(user_input, Veiculo),string_to_atom(Veiculo, Y), valor(Y).

valor(X):- X == 'moto', write(5); X == 'carro', write(10); X == 'largo', write(30).
