
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



% meme(X, Y) :- member(X, L), member(Y, L).

% Rue = length(5).
%
% afficher_maisons([]).
% afficher_maisons([H|T]) :-
%   write(H), nl
%   write_maisons(T).

c1 :- meme(X,Y).
question(X,Y,Z,A,B,C) :- C1 meme;
