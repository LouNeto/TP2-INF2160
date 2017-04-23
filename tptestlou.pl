main :-
  composition(Rue).

composition(Rue) :-

    C = [rouge, jaune, bleu, verte, ivoire],
    N = [anglais, espagnol, norvegien, ukrainien, canadien],
    A = [chien, renard, serpent, cheval, zebre],
    B = [jus_orange, the, cafe, lait, eau],
    M = [kiwi, celeri, wasabi, litchi, poire],

  Rue = [maison(1,C1,N1,A1,B1,M1),
         maison(2,C2,N2,A2,B2,M2),
         maison(3,C3,N3,A3,B3,M3),
         maison(4,C4,N4,A4,B4,M4),
         maison(5,C5,N5,A5,B5,M5)],

  member(C1, C), member(C2, C), member(C3, C), member(C4, C), member(C5, C),
  member(N1, N), member(N2, N), member(N3, N), member(N4, N), member(N5, N),
  member(A1, A), member(A2, A), member(A3, A), member(A4, A), member(A5, A),
  member(B1, B), member(B2, B), member(B3, B), member(B4, B), member(B5, B),
  member(M1, M), member(M2, M), member(M3, M), member(M4, M), member(M5, M),

  write_maisons(Rue).

% -----------------------------------------------------------------------------

write_maisons([]).
write_maisons([H|T]) :-
  write(H), nl,
  write_maisons(T).
