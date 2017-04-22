% TP2 dans le cadre du cours INF2160
% Lou-Gomes Neto et Pier-Olivier Decoste
% NETL14039105, DECP09059005
% -----------------------------------------------------------------------------

% question(P, C, N, A, B, M) :-
%   P = [1, 2, 3, 4, 5],
%   C = [rouge, jaune, bleu, verte, ivoire],
%   N = [anglais, espagnol, norvegien, ukrainien, canadien],
%   A = [chien, renard, serpent, cheval, zebre],
%   B = [jus_orange, the, cafe, lait, eau],
%   M = [kiwi, celeri, wasabi, litchi, poire].


main :-
  composition(Rue).

composition(Rue) :-

  Rue = [[1, _, _, _, _, _],
         [2, _, _, _, _, _],
         [3, _, _, _, _, _],
         [4, _, _, _, _, _],
         [5, _, _, _, _, _]],

         write_maisons(Rue).

write_maisons([]).
write_maisons([H|T]) :-
  write(H), nl,
  write_maisons(T).

memeMaison([]).
memeMaison(X,Y,[H|T]) :-
  meme(X,Y),
  member(X,H),
  member(Y,H),
  memeMaison(X,Y,T).


meme( anglais, rouge ).
meme( chien, espagnol ).
meme( norvegien, 1 ).
meme( kiwi, jaune ).
meme( wasabi, serpent ).
meme( litchi, jus_orange ).
meme( ukrainien, the ).
meme( canadien, poire ).
meme( cafe, verte ).
meme( lait, 3 ).

voisin( celeri, renard ).
voisin( norvegien, bleu ).
voisin( kiwi, cheval ).
voisin( verte, ivoire ).

droite( verte, ivoire ).

% ------------------------------------------------------------------------------

% c1 :- meme(X,Y).
% question(X,Y,Z,A,B,C) :- C1 meme;

% Informations d'une maison
% maison( Position, Couleur, Nationnalite, Animal, Breuvage, Met )
