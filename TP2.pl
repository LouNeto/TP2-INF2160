% TP2 dans le cadre du cours INF2160
% Lou-Gomes Neto et Pier-Olivier Decoste
% NETL14039105,     DECP09059005

rue :-
  length(Maisons, 5),
    Maisons = [question(1, _, _, _, _, _),
               question(2, _, _, _, _, _),
               question(3, _, _, _, _, _),
               question(4, _, _, _, _, _),
               question(5, _, _, _, _, _)],
  % Application des indices sur la liste des maisons.
  member(question(_, rouge, anglais, _, _, _), Maisons),
  member(question(_, _, espagnol, chien, _, _), Maisons),
  member(question(1, _, norvegien, _, _, _), Maisons),
  member(question(_, jaune, _, _, _, kiwi), Maisons),
  member(question(_, _, _, serpent, _, wasabi), Maisons),
  member(question(_, _, _, _, jus_orange, litchi), Maisons),
  member(question(_, _, ukrainien, _, the, _), Maisons),
  member(question(_, _, canadien, _, _, poire), Maisons),
  member(question(_, verte, _, _, cafe, _), Maisons),
  member(question(3, _, _, _, lait, _), Maisons),
  member(question(2, bleu, _, _, _, _), Maisons),
  member(question(_, _, _, zebre, _, _), Maisons),
  member(question(_, _, _, _, eau, _), Maisons),
  member(question(_, ivoire, _, _, _, _), Maisons),
  member(question(_, _, _, cheval, _, _), Maisons),
  nextto(question(_, ivoire, _, _, _, _), question(_, verte, _, _, _, _), Maisons),
  nextto(question(_, _, _, renard, _, _), question(_, _, _, _, _, celeri), Maisons),
  nextto(question(_, _, _, _, _, kiwi), question(_, _, _, cheval, _, _), Maisons),
  creerMaisons(Maisons).

% Assert pour creer les faits sur les maisons.
creerMaisons([]).
creerMaisons([X|XS]) :-
  assert(X),
  creerMaisons(XS).

% Pour ajouter les maisons a la structure de la BC.
:- rue.
