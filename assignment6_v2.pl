/* The facts for the game; ie legal moves */
mv(0, 1, 3).
mv(0, 2, 5).
mv(1, 3, 6).
mv(1, 4, 8).
mv(2, 4, 7).
mv(2, 5, 9).
mv(3, 6, 10).
mv(3, 7, 12).
mv(4, 7, 11).
mv(4, 8, 13).
mv(5, 8, 12).
mv(5, 9, 14).
mv(3, 4, 5).
mv(6, 7, 8).
mv(7, 8, 9).
mv(10, 11, 12).
mv(11, 12, 13).
mv(12, 13, 14).


/* This checks if the move they are attempting is allowed */

good_move(X, Y, Z) :- mv(X, Y, Z); mv(Z, Y, X).

/* a predicate for printing out the legal moves */
print_moves() :-
    write("Here are the legal moves:"),
    nl,
    write("mv(0, 1, 3)"),
    nl,
    write("mv(0, 2, 5)"),
    nl,
    write("mv(1, 3, 6)"),
    nl,
    write("mv(1, 4, 8)"),
    nl,
    write("mv(2, 4, 7)"),
    nl,
    write("mv(2, 5, 9)"),
    nl,
    write("mv(3, 6, 10)"),
    nl,
    write("mv(3, 7, 12)"),
    nl,
    write("mv(4, 7, 11)"),
    nl,
    write("mv(4, 8, 13)"),
    nl,
    write("mv(5, 9, 14)"),
    nl,
    write("mv(3, 4, 5)"),
    nl,
    write("mv(6, 7, 8)"),
    nl,
    write("mv(7, 8, 9)"),
    nl,
    write("mv(10, 11, 12)"),
    nl,
    write("mv(11, 12, 13)"),
    nl,
    write("mv(12, 13, 14)"),
    nl.

    peg_game([0], X, Y, Z) :-
        write("Game Over!"),
        nl.

    peg_game(B, X, Y, Z) :-
        good_move(X, Y, Z),
        select(Y, B, U),
        print_moves(),
        write("Enter your next moves one at a time, followed by a period"),
        nl,
        read(M),
        read(O),
        read(V),
        peg_game(U, M, O, V).


    init():-
        print_moves(),
        write("What is your first move?"),
        nl,
        read(X),
        read(Y),
        read(Z),
        peg_game([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14], X, Y, Z).
        