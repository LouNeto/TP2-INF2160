% TP2 dans le cadre du cours INF2160
% Lou-Gomes Neto et Pier-Olivier Decoste
% NETL14039105, DECP09059005
% -----------------------------------------------------------------------------

% Elements possibles dans les maisons
% P = 1, 2, 3, 4, 5
% C = rouge, jaune, bleu, verte, ivoire
% N = anglais, espagnol, norvegien, ukrainien, canadien
% A = chien, renard, serpent, cheval, zebre
% B = jus_orange, the, cafe, lait, eau
% M = kiwi, celeri, wasabi, litchi, poire

% Informations d'une maison
% maison( Position, Couleur, Nationnalite, Animal, Breuvage, Met )

% Si deux elements ont un lien et s'ils se trouvent dans la meme maison.
% meme(Elem1, Elem2) :-

% Regles sur le positionnement d'une maison par rapport a une seconde maison.
% droite(Maison1, Maison2, LaRue) :- Maison1 > Maison2.
% gauche(Maison1, Maison2, LaRue) :- Maison1 < Maison2.
% voisin(Maison1, Maison2, LaRue) :- Maison1 is Maison2-1; Maison1 is Maison2+1.

% afficherRue([]).
% afficherRue([A|B]) :-
%   show(A),
%   afficherRue(B).

regle(X, L) :- member(X, L).
% voisin(X, Y, L) :- nextto(X, Y, L); nextto(Y, X, L).

% Ensembles de regles concernant la composition des maisons.
composition(Rue) :-
    Rue = [maison(1, _, _, _, _, _),
           maison(2, _, _, _, _, _),
           maison(3, _, _, _, _, _),
           maison(4, _, _, _, _, _),
           maison(5, _, _, _, _, _)],
    regle(maison(_, rouge, anglais, _, _, _), Rue),
    regle(maison(_, _, espagnol, chien, _, _), Rue),
    regle(maison(1, _, norvegien, _, _, _), Rue),
    regle(maison(_, jaune, _, _, _, kiwi), Rue),
    regle(maison(_, _, _, _, _, celeri), Rue),
    regle(maison(_, bleu, _, _, _, _), Rue),
    % voisin(maison(_, bleu, _, _, _, _), maison(_, _, norvegien, _, _, _), Rue),
    % voisin(maison(_, _, norvegien, _, _, _), maison(_, bleu, _, _, _, _), Rue),
    regle(maison(_, _, _, serpent, _, wasabi), Rue),
    regle(maison(_, _, _, _, jus_orange, litchi), Rue),
    regle(maison(_, _, ukrainien, _, the, _), Rue),
    regle(maison(_, _, canadien, _, _, poire), Rue),
    regle(maison(_, _, _, cheval, _, _), Rue),
    % voisin(maison(_, _, _, _, _, kiwi), maison(_, _, _, cheval, _, _), Rue),
    % voisin(maison(_, _, _, cheval, _, _), maison(_, _, _, _, _, kiwi), Rue),
    regle(maison(_, verte, _, _, cafe, _), Rue),
    regle(maison(_, ivoire, _, _, _, _), Rue),
    % droite(maison(_, verte, _, _, _, _), (_, ivoire, _, _, _, _), Rue),
    % voisin(maison(_, verte, _, _, _, _), (_, ivoire, _, _, _, _), Rue),
    regle(maison(3, _, _, _, lait, _), Rue),
    regle(maison(_, _, _, zebre, _, _), Rue).
